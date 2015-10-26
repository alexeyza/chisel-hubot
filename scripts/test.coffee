# Description:
#   Replies with UVic's soup of the day information
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   test - try new script
#
# Author:
#   alexeyza




module.exports = (robot) ->
    robot.respond /test/i, (res) ->
        # post the message
        robot.emit 'slack-attachment',
          channel: "U03PYHMN0"
          #username: "CustomBotName"
          #icon_url: "https://slack.global.ssl.fastly.net/9fa2/img/services/hubot_128.png"
          content:
            #fallback: "fallback"
            title: "Weekly meeting reminder"
            #title_link: "https://github.com"
            text: "@channel Do you need to meet Peggy this week? (if not, please update the calendar). Have you posted a weekly agenda? #weekly-updates"
            image_url: "https://dl.dropboxusercontent.com/u/21932852/panic.png"
            #color: "#111111"