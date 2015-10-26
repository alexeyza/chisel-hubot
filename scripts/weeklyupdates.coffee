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

MESSAGE = "<!channel> Do you need to meet Peggy this week? (if not, please update the calendar). Have you posted a weekly agenda? #weekly-updates"

MESSAGE_TIME = '0 15 10 * * 1' # Monday 10:15am
CHANNEL = ["#general"]

cronJob = require('cron').CronJob

module.exports = (robot) ->
        crontask = new cronJob MESSAGE_TIME,
                ->
                        for ROOM in CHANNELS
                            robot.messageRoom {room: ROOM}, MESSAGE
                null
                true