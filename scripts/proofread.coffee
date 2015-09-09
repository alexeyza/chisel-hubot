# Description:
#  Runs a proofreader (through a shell command). Red text is the original text, blue text is editorial suggestions, and purple text is spelling recommendations.
#  Based on a script by Sapan Ganguly
#
# Dependencies:
#  None
#
# Configuration:
#  None
#
# Commands:
#  hubot proofread url <URL to Markdown or HTML file>
#  hubot proofread text <text that needs editing>
#
# Author:
#  Alexey Zagalsky
#

module.exports = (robot) ->
 robot.respond /proofread (text|url) (.*)$/i, (msg) ->
    option = msg.match[1]
    source = msg.match[2]

    @exec = require('child_process').exec
    if option=='url'
        command = "node node_modules/proofreader/bin/cmd.js -u " + source
    else
        filename = "proofread_temp.md"
        @exec "echo " + source + " > " + filename
        command = "node node_modules/proofreader/bin/cmd.js -f " + filename

    @exec command, (error, stdout, stderr) ->
        # msg.send error

        # Remove Bash color codes from output
        message = stdout.replace(/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]/g, "")
        msg.send message
        
        # msg.send stderr
