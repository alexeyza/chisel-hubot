# Description:
#   A compilation of responses to give Hubot a personality
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Author:
#   alexeyza

module.exports = (robot) ->
    robot.hear /WFH/i, (res) ->
        res.send "I live on Slack so technically I always work from home"

    hipchat_responses = ["How dare you mention that name! :rage: Hipchat killed my father...","Slack is 10x better than Hipchat"]
    robot.hear /hipchat/i, (res) ->
        res.send res.random hipchat_responses


    help_responses = ["I want to help too but I can't, I'm just a robot :disappointed:","I want to help too :stuck_out_tongue:"]
    robot.hear /can help/i, (res) ->
        res.send res.random help_responses

    greetings = ["Well hi there!","Hello!"]
    robot.hear /hi hubot|hello hubot/i, (res) ->
        res.send res.random greetings

    robot.respond /hi|hello|what's up/i, (res) ->
        res.send res.random greetings

    slang_greetings = ["Hello!","Sup?","Hay is for horses."]
    robot.hear /hey hubot/i, (res) ->
        res.send res.random slang_greetings

