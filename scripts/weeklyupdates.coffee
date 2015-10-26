# Description:
#   Reminds group members to post weekly updates
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Author:
#   alexeyza

MESSAGE_TIME = '0 15 10 * * 1' # Monday 10:15am

cronJob = require('cron').CronJob

module.exports = (robot) ->
        crontask = new cronJob MESSAGE_TIME,
                ->
                        # post a custom message
                        robot.emit 'slack-attachment',
                          channel: "general"
                          #username: "CustomBotName"
                          #icon_url: "https://slack.global.ssl.fastly.net/9fa2/img/services/hubot_128.png"
                          content:
                            #fallback: "fallback"
                            title: "Weekly meeting reminder"
                            #title_link: "https://github.com"
                            text: "<!channel> Do you need to meet Peggy this week? (if not, please update the calendar). Have you posted a weekly agenda? <#C045ZMA62>"
                            image_url: "https://dl.dropboxusercontent.com/u/21932852/panic.png"
                            #color: "#111111"
                null
                true