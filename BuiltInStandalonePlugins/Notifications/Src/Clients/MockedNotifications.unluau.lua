-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Enums.NotificationTargetType)
local function fun0(arg1)
   local var0 = {}
   var0.notificationId = tostring(arg1)
   local var156 = DateTime.now()
   var0.createdUtcTimeInMs = var156.UnixTimestampMillis
   var0.read = false
   var0.notificationType = "Notification_Type_D"
   local var160 = {}
   var156 = `Testing titleParameter with index {arg1}`
   var160.titleParam = var156
   var0.parameters = var160
   local var3 = {}
   var3.title = "This is an example of a notification w/o an action. {titleParam}"
   var3.body = "This is the body of the notification"
   var3.targetId = ""
   var3.targetType = var0.Static.rawValue()
   var3.clickAction = ""
   var0.creatorStreamNotificationContent = var3
   return var0
end

return { (arg1)
   local var0 = {}
   var0.notificationId = tostring(arg1)
   local var82 = DateTime.now().UnixTimestampMillis
   var0.createdUtcTimeInMs = var82 - 5000
   var0.read = false
   var0.notificationType = "Notification_Type_A"
   local var86 = {}
   var82 = `Testing titleParameter with index {arg1}`
   var86.titleParam = var82
   var0.parameters = var86
   local var3 = {}
   var3.title = "DevForum Product Announcement: <b>Studio Notifications</b>"
   var3.body = "Studio Notifications have been released. Click here to learn more."
   var3.targetId = "CreateFilledEmphasis"
   var3.targetType = var0.Static.rawValue()
   var3.clickAction = "https://create.roblox.com"
   var0.creatorStreamNotificationContent = var3
   return var0
end, (arg1)
   local var0 = {}
   var0.notificationId = tostring(arg1)
   local var107 = DateTime.now().UnixTimestampMillis
   var0.createdUtcTimeInMs = var107 - 120000
   var0.read = false
   var0.notificationType = "Notification_Type_B"
   local var111 = {}
   var107 = `Parameter test with index: {arg1}`
   var111.titleParam = var107
   var0.parameters = var111
   local var3 = {}
   var3.title = "<b>LinksGoat</b> sent you a new message."
   var3.body = "ChatGPTum dialogus continuo generat contentum. Linguae machinales potentiam demonstrant in generatione textus. Conversatio artificialis"
   var3.targetId = "2067243959"
   var3.targetType = var0.User.rawValue()
   var3.clickAction = "https://www.roblox.com/users/2067243959/profile"
   var0.creatorStreamNotificationContent = var3
   return var0
end, (arg1)
   local var0 = {}
   var0.notificationId = tostring(arg1)
   local var132 = DateTime.now().UnixTimestampMillis
   var0.createdUtcTimeInMs = var132 - 3700000
   var0.read = false
   var0.notificationType = "Notification_Type_C"
   local var136 = {}
   var132 = `Parameter test with index: {arg1}`
   var136.titleParam = var132
   var0.parameters = var136
   local var3 = {}
   var3.title = "You\'ve received an invitation to collaborate on <b>Word Bomb</b>."
   var3.body = ""
   var3.targetId = "2653064683"
   var3.targetType = var0.Universe.rawValue()
   var3.clickAction = "https://www.roblox.com/games/2653064683/Word-Bomb"
   var0.creatorStreamNotificationContent = var3
   return var0
end }
