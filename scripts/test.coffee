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
      msg.send 
        text: "I am a test message http://slack.com"
        attachments: [
            title: "Weekly meeting reminder",
            image_url: "https://dl.dropboxusercontent.com/u/21932852/phd.png"
        ]

            