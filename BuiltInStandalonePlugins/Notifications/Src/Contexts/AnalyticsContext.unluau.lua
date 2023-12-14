-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.optional)
local var3 = require(var0.Src.Clients.NotificationClient)
function createAnalyticsHandler(arg1)
   local function var0(arg1, arg2)
      arg2 = arg2 or {}
      local var159 = {}
      var159.studioSid = arg1:GetSessionId()
      var159.clientId = arg1:GetClientId()
      local var167 = game.PlaceId
      var159.placeId = var167
      var167 = arg2
      arg1:SendEventDeferred("studio", "NotificationTray", arg1, var1.Dictionary.join(var159, var167))
   end
   
   local var1 = {}
   function var1.notificationClicked(arg1, arg2)
      local var180 = {}
      var180.id = var2(arg1, "notificationId")
      var180.type = var2(arg1, "creatorStreamNotificationContent", "clickAction")
      var180.clickAction = var2(arg1, "notificationType")
      var180.read = var2(arg1, "read")
      var180.trayIndex = arg2
      var0("NotificationClicked", var180)
   end
   
   function var1.markAllAsRead()
      var0("MarkAllAsRead")
   end
   
   function var1.settingsButtonClicked()
      var0("SettingsButtonClicked")
   end
   
   function var1.trayOpened(arg1)
      local var205 = {}
      var205.bellUnseen = arg1
      var0("NotificationTrayOpened", var205)
   end
   
   return var1
end

return require(var0.Packages.Framework).ContextServices.Analytics.new(createAnalyticsHandler)
