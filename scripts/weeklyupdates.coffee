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
IMAGE_URL = ["https://dl.dropboxusercontent.com/u/21932852/phd.png", "https://dl.dropboxusercontent.com/u/21932852/panic.png"]

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
                            text: "<!channel> Do you need to meet Peggy this week? If so, send an agenda or YOUR MEETING WILL BE CANCELLED! If not, please update the calendar ASAP. <@G0Y5TUV1C>"
                            image_url: IMAGE_URL[Math.floor(Math.random() * IMAGE_URL.length)]
                            #color: "#111111"
                null
                true
