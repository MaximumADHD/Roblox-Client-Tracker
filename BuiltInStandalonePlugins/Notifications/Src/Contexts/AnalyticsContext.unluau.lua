-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.optional)
local var3 = require(var0.Src.Clients.NotificationClient)
function createAnalyticsHandler(arg1)
   local function var0(arg1, arg2)
      arg2 = arg2 or {}
      local var32 = {}
      var32.studioSid = arg1:GetSessionId()
      var32.clientId = arg1:GetClientId()
      local var40 = game.PlaceId
      var32.placeId = var40
      var40 = arg2
      arg1:SendEventDeferred("studio", "NotificationTray", arg1, var1.Dictionary.join(var32, var40))
   end
   
   local var1 = {}
   function var1.notificationClicked(arg1, arg2)
      local var53 = {}
      var53.id = var2(arg1, "notificationId")
      var53.type = var2(arg1, "creatorStreamNotificationContent", "clickAction")
      var53.clickAction = var2(arg1, "notificationType")
      var53.read = var2(arg1, "read")
      var53.trayIndex = arg2
      var0("NotificationClicked", var53)
   end
   
   function var1.markAllAsRead()
      var0("MarkAllAsRead")
   end
   
   function var1.settingsButtonClicked()
      var0("SettingsButtonClicked")
   end
   
   function var1.markAllAsReadClicked()
      var0("MarkAllAsReadClicked")
   end
   
   function var1.trayOpened(arg1)
      local var80 = {}
      var80.bellUnseen = arg1
      var0("NotificationTrayOpened", var80)
   end
   
   return var1
end

return require(var0.Packages.Framework).ContextServices.Analytics.new(createAnalyticsHandler)
