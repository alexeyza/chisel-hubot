# Description:
#   Greet the CHISEL group with Happy Holidays
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Author:
#   alexeyza

MESSAGE_TIME = '0 30 10 * * 1' # Monday 10:30am
IMAGE_URL = "http://clients.nathanlove.com/ANL/ANLxmas_04.gif"

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
                            title: "Happy Holidays!"
                            #title_link: "https://github.com"
                            text: "<!channel> Wishing you a beautiful holiday and a New Year of peace and happiness"
                            image_url: IMAGE_URL
                            #color: "#111111"
                null
                true
