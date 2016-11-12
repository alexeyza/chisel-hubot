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
        robot.emit 'slack-attachment',
                          channel: msg.message.room
                          #username: "CustomBotName"
                          #icon_url: "https://slack.global.ssl.fastly.net/9fa2/img/services/hubot_128.png"
                          content:
                            #fallback: "fallback"
                            title: "Weekly meeting reminder"
                            #title_link: "https://github.com"
                            text: "<!channel> Do you need to meet Peggy on Monday? If so, send an agenda or YOUR MEETING WILL BE CANCELLED! If not, please update the calendar ASAP."
                            image_url: IMAGE_URL[Math.floor(Math.random() * IMAGE_URL.length)]
                            #color: "#111111"