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
    attachments:[
        text: "<!channel> A reminder to update your weekly updates. Do you need to meet Peggy? If so, send an agenda or YOUR MEETING WILL BE CANCELLED!"
        title: "Weekly updates reminder",
        image_url: IMAGE_URL[Math.floor(Math.random() * IMAGE_URL.length)]
    ]

module.exports = (robot) ->
    robot.respond /test/i, (msg) ->
      robot.send room: 'C03PYBLB6', attachment

            