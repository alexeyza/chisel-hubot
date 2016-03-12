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

MESSAGES = ['Have a good weekend! :smiley:', 'Hi, how was your week?', "Take a moment to reflect: what was your biggest challenge this week? :muscle:", 'Remember to take care of yourself physically. Take the weekend off :gift: :smiley:', "What's the main thing you'd like to accomplish next week?", "Hey, good progress this week! :thumbsup:","Your presence on this planet warms my robot heart :heart:","The world gets brighter every time you smile :yum:","Thanks for making my day. Just by being you","Your positive energy is contagious","You make the world a better place :thumbsup:"]

MESSAGE_TIME = '0 0 10 * * 5' # F 10am
USERS = ["alexeyza", "bearl", "spludlow", "ben", "bin", "cassie","maryi","margaret\.anne\.storey","clebeuf","everbeek","tania","matthieu"]

cronJob = require('cron').CronJob

module.exports = (robot) ->
        crontask = new cronJob MESSAGE_TIME,
                ->
                        for USER in USERS
                            robot.send {room: USER}, MESSAGES[Math.floor(Math.random() * MESSAGES.length)]
                null
                true