# Description:
#   Send custom message example
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   test - send custom messages (similar to IFTTT format)
#
# Author:
#   alexeyza




module.exports = (robot) ->
    robot.respond /test/i, (res) ->
        # post a custom message
        robot.emit 'slack-attachment',
          channel: "random"
          #username: "CustomBotName"
          #icon_url: "https://slack.global.ssl.fastly.net/9fa2/img/services/hubot_128.png"
          content:
            #fallback: "fallback"
            title: "Title"
            #title_link: "https://github.com"
            text: "Message content"
            image_url: "https://assets-cdn.github.com/images/modules/logos_page/GitHub-Logo.png"
            #color: "#111111"