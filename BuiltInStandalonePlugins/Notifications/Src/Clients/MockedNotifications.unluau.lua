-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Enums.NotificationTargetType)
local function fun0(arg1)
   local var0 = {}
   var0.notificationId = tostring(arg1)
   local var91 = DateTime.now()
   var0.createdUtcTimeInMs = var91.UnixTimestampMillis
   var0.read = false
   var0.notificationType = "Notification_Type_D"
   local var95 = {}
   var91 = `Testing titleParameter with index {arg1}`
   var95.titleParam = var91
   var0.parameters = var95
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
   local var17 = DateTime.now().UnixTimestampMillis
   var0.createdUtcTimeInMs = var17 - 5000
   var0.read = false
   var0.notificationType = "Notification_Type_A"
   local var21 = {}
   var17 = `Testing titleParameter with index {arg1}`
   var21.titleParam = var17
   var0.parameters = var21
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
   local var42 = DateTime.now().UnixTimestampMillis
   var0.createdUtcTimeInMs = var42 - 120000
   var0.read = false
   var0.notificationType = "Notification_Type_B"
   local var46 = {}
   var42 = `Parameter test with index: {arg1}`
   var46.titleParam = var42
   var0.parameters = var46
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
   local var67 = DateTime.now().UnixTimestampMillis
   var0.createdUtcTimeInMs = var67 - 3700000
   var0.read = false
   var0.notificationType = "Notification_Type_C"
   local var71 = {}
   var67 = `Parameter test with index: {arg1}`
   var71.titleParam = var67
   var0.parameters = var71
   local var3 = {}
   var3.title = "You\'ve received an invitation to collaborate on <b>Word Bomb</b>."
   var3.body = ""
   var3.targetId = "2653064683"
   var3.targetType = var0.Universe.rawValue()
   var3.clickAction = "https://www.roblox.com/games/2653064683/Word-Bomb"
   var0.creatorStreamNotificationContent = var3
   return var0
end }
