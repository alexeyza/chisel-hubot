# Description:
#   Encourages reflection
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Author:
#   alexeyza

MESSAGES = ['Have a good weekend! :smiley:', 'Hi, how was your week?', "Take a moment to reflect: what was your biggest challenge this week? :muscle:", 'Remember to take care of yourself physically. Take the weekend off :gift: :smiley:', "What's the main thing you'd like to accomplish next week?", "Hey, good progress this week! :thumbsup:"]

MESSAGE_TIME = '0 0 14 * * 5' # F 2pm
USERS = ["alexeyza","cagomezt", "ben", "bin", "cassie","maryi","margaret.anne.storey","bernice1","clebeuf","everbeek","marllos","tania"]

cronJob = require('cron').CronJob

module.exports = (robot) ->
        crontask = new cronJob MESSAGE_TIME,
                ->
                        for USER in USERS
                            robot.send {room: USER}, MESSAGES[Math.floor(Math.random() * MESSAGES.length)]
                null
                true