-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.optional)
local var3 = require(var0.Src.Clients.NotificationClient)
function createAnalyticsHandler(arg1)
   local function var0(arg1, arg2)
      arg2 = arg2 or {}
      local var99 = {}
      var99.studioSid = arg1:GetSessionId()
      var99.clientId = arg1:GetClientId()
      local var107 = game.PlaceId
      var99.placeId = var107
      var107 = arg2
      arg1:SendEventDeferred("studio", "NotificationTray", arg1, var1.Dictionary.join(var99, var107))
   end
   
   local var1 = {}
   function var1.notificationClicked(arg1, arg2)
      local var120 = {}
      var120.id = var2(arg1, "notificationId")
      var120.type = var2(arg1, "creatorStreamNotificationContent", "clickAction")
      var120.clickAction = var2(arg1, "notificationType")
      var120.read = var2(arg1, "read")
      var120.trayIndex = arg2
      var0("NotificationClicked", var120)
   end
   
   function var1.markAllAsRead()
      var0("MarkAllAsRead")
   end
   
   function var1.settingsButtonClicked()
      var0("SettingsButtonClicked")
   end
   
   function var1.trayOpened(arg1)
      local var145 = {}
      var145.bellUnseen = arg1
      var0("NotificationTrayOpened", var145)
   end
   
   return var1
end

return require(var0.Packages.Framework).ContextServices.Analytics.new(createAnalyticsHandler)
