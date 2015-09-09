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
 robot.respond /proofread (text|url) ([.\n]*)$/i, (msg) ->
    option = msg.match[1]
    source = msg.match[2]

    @exec = require('child_process').exec
    if option=='url'
        command = "node node_modules/proofreader/bin/cmd.js -u " + source
    else
        filename = "proofread_temp.md"
        @exec 'printf "' + source + '" > ' + filename
        command = "node node_modules/proofreader/bin/cmd.js -f " + filename

    @exec command, (error, stdout, stderr) ->
        # msg.send error

        # Remove Bash color codes from output
        message = stdout.replace(/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]/g, "")

        if message=='### Results for ' + filename + ' ###\n\n'
            no_suggestions = ["Well written", "You're awesome!", "No comments"]
            msg.send msg.random no_suggestions
        else
            msg.send message
        
        # msg.send stderr
