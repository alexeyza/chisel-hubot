# Description:
#   Replies with UVic's systems status
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot status of uvic systems - reports on the status of UVic systems
#
# Author:
#   alexeyza

module.exports = (robot) ->
    robot.respond /test/i, (msg) ->
        robot.adapter.client.chat.postMessage(msg.user.room, "This is a message!", {as_user: true, unfurl_links: false})