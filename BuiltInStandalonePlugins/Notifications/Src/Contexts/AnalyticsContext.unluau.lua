-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.optional)
local var3 = require(var0.Src.Clients.NotificationClient)
local var4 = require(var0.Src.Util.SharedFlags.getFFlagNotificationTrayImpressions)
function createAnalyticsHandler(arg1)
   local function var0(arg1, arg2)
      arg2 = arg2 or {}
      local var385 = {}
      var385.studioSid = arg1:GetSessionId()
      var385.clientId = arg1:GetClientId()
      local var393 = game.PlaceId
      var385.placeId = var393
      var393 = arg2
      arg1:SendEventDeferred("studio", "NotificationTray", arg1, var1.Dictionary.join(var385, var393))
   end
   
   local var1 = {}
   function var1.notificationClicked(arg1, arg2)
      local var406 = {}
      var406.id = var2(arg1, "notificationId")
      var406.type = var2(arg1, "creatorStreamNotificationContent", "clickAction")
      var406.clickAction = var2(arg1, "notificationType")
      var406.read = var2(arg1, "read")
      var406.trayIndex = arg2
      var0("NotificationClicked", var406)
   end
   
   function var1.markAllAsRead()
      var0("MarkAllAsRead")
   end
   
   function var1.settingsButtonClicked()
      var0("SettingsButtonClicked")
   end
   
   function var1.trayOpened(arg1)
      local var431 = {}
      var431.bellUnseen = arg1
      var0("NotificationTrayOpened", var431)
   end
   
   if var4() then
      function var1.logNotificationImpressions(arg1)
         local var437 = {}
         var437.notificationIds = arg1
         var0("NotificationImpressions", var437)
      end
      
      return var1
   end
   function var1.markAllAsReadClicked()
      var0("MarkAllAsReadClicked")
   end
   
   return var1
end

return require(var0.Packages.Framework).ContextServices.Analytics.new(createAnalyticsHandler)
