module.exports = (robot) ->
    robot.respond /confirm meetings/i, (msg) ->
        sender = msg.message.user.name.toLowerCase()
    
        if sender is "alexeyza"
            msg.reply "@channel Please check the calendar and let @margaret.anne.storey know if the time doesn't work for you. You can switch directly if someone will switch with you, or remove it if you don't need to meet."