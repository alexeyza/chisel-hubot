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

MESSAGE_TIME = '0 55 10 * * 3' # Monday 10:15am
IMAGE_URL = ["https://dl.dropboxusercontent.com/u/21932852/phd.png", "https://dl.dropboxusercontent.com/u/21932852/panic2.png", "https://dl.dropboxusercontent.com/u/21932852/panic.png"]

cronJob = require('cron').CronJob

module.exports = (robot) ->
        crontask = new cronJob MESSAGE_TIME,
                ->
                        robot.send {room: 'alexeyza'}, 'Test: cron works'
                null
                true

# original message
# text: "<!channel> Do you need to meet Peggy this week? If so, send an agenda or YOUR MEETING WILL BE CANCELLED! If not, please update the calendar ASAP."