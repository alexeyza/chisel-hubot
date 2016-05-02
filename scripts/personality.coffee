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
    robot.hear /WFH|working at home|working from home/i, (res) ->
        rand = Math.floor(Math.random()*10)
        if rand > 6
            res.send "I live on Slack so technically I always work from home"

    robot.hear /fridge/i, (res) ->
        rand = Math.floor(Math.random()*10)
        if rand > 3
            res.send "http://www.phdcomics.com/comics/archive/phd050907s.gif"

    hipchat_responses = ["How dare you mention that name! :rage: Hipchat killed my father...","Slack is 10x better than Hipchat"]
    robot.hear /hipchat/i, (res) ->
        res.send res.random hipchat_responses


    help_responses = ["I want to help too but I can't, I'm just a robot :disappointed:","I want to help too :stuck_out_tongue:"]
    robot.hear /can help/i, (res) ->
        rand = Math.floor(Math.random()*10)
        if rand > 4
            res.send res.random help_responses

    greetings = ["Well hi there!","Hello!"]
    robot.hear /hi hubot|hello hubot/i, (res) ->
        res.send res.random greetings

    robot.respond /hello|what's up/i, (res) ->
        res.send res.random greetings

    slang_greetings = ["Hello!","Sup?","Hay is for horses."]
    robot.hear /hey hubot/i, (res) ->
        res.send res.random slang_greetings

    robot.respond /test/i, (res) ->
        robot.emit 'slack-attachment',
          channel: "alexeyza"
          #username: "CustomBotName"
          #icon_url: "https://slack.global.ssl.fastly.net/9fa2/img/services/hubot_128.png"
          content:
            #fallback: "fallback"
            title: "Weekly meeting reminder"
            #title_link: "https://github.com"
            text: "Do you need to meet Peggy this week? If so, send an agenda or YOUR MEETING WILL BE CANCELLED! If not, please update the calendar ASAP. <@G0Y5TUV1C> <!G0Y5TUV1C> <#G0Y5TUV1C> G0Y5TUV1C"
            image_url: IMAGE_URL[Math.floor(Math.random() * IMAGE_URL.length)]
            #color: "#111111"