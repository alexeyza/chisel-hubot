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

module.exports = (robot) ->
    robot.respond /test/i, (msg) ->
    msg.send 
        text: "<!channel> Do you need to meet Peggy on Monday? If so, send an agenda or YOUR MEETING WILL BE CANCELLED! If not, please update the calendar ASAP."
        attachments: [
          title: "Weekly meeting reminder",
          image_url: IMAGE_URL[Math.floor(Math.random() * IMAGE_URL.length)]
        ]