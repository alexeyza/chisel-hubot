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

IMAGE_URL = ["https://dl.dropboxusercontent.com/u/21932852/phd.png", "https://dl.dropboxusercontent.com/u/21932852/panic2.png", "https://dl.dropboxusercontent.com/u/21932852/panic.png"]

attachment = 
    text: "Test message"

module.exports = (robot) ->
    robot.respond /test/i, (msg) ->
      robot.send room: 'C03PYBLB6', attachment

            