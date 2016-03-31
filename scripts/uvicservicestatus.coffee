# Description:
#   Replies with UVic's service status
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot status of uvic services - reports on the status of UVic systems
#
# Author:
#   alexeyza

module.exports = (robot) ->
    robot.respond /status of uvic services|is uvic email down|is uvic email working/i, (msg) ->
        robot.http('https://www.uvic.ca/systems/status/index.php').get() (err, res, body) ->
            match = body.match(/>([\w-]+)<\/a>[\<\>\/\s\w\(\)\d]*<td valign='top' style='text-align:right'><img src='https:\/\/helpdesk.uvic.ca\/tools\/media\/images\/([\w_]+).gif/g)
            if match
                output = ''
                for service in match
                    data = />([\w-]+)<\/a>[\<\>\/\s\w\(\)\d]*<td valign='top' style='text-align:right'><img src='https:\/\/helpdesk.uvic.ca\/tools\/media\/images\/([\w_]+).gif/g.exec service
                    if data
                        output += data[1]+' - '+data[2].replace /_/g, ' '
                        output += '\n'
            msg.send output.replace(/\n$/, '')