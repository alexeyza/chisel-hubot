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
          channel: "random"
          username: "CustomBotName"
          icon_url: "https://slack.global.ssl.fastly.net/9fa2/img/services/hubot_128.png"
          content:
            fallback: "fallback"
            title: "Testing script - please ignore"
            title_link: "https://github.com"
            text: "Shows up"
            image_url: "https://assets-cdn.github.com/images/modules/logos_page/GitHub-Logo.png"
            color: "#111111"