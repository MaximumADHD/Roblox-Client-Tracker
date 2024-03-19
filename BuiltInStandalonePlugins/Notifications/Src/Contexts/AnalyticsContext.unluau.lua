-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.optional)
local var3 = require(var0.Src.Clients.NotificationClient)
local var4 = require(var0.Src.Util.SharedFlags.getFFlagNotificationTrayImpressions)
function createAnalyticsHandler(arg1)
   local function var0(arg1, arg2)
      arg2 = arg2 or {}
      local var38 = {}
      var38.studioSid = arg1:GetSessionId()
      var38.clientId = arg1:GetClientId()
      local var46 = game.PlaceId
      var38.placeId = var46
      var46 = arg2
      arg1:SendEventDeferred("studio", "NotificationTray", arg1, var1.Dictionary.join(var38, var46))
   end
   
   local var1 = {}
   function var1.notificationClicked(arg1, arg2)
      local var59 = {}
      var59.id = var2(arg1, "notificationId")
      var59.type = var2(arg1, "creatorStreamNotificationContent", "clickAction")
      var59.clickAction = var2(arg1, "notificationType")
      var59.read = var2(arg1, "read")
      var59.trayIndex = arg2
      var0("NotificationClicked", var59)
   end
   
   function var1.markAllAsRead()
      var0("MarkAllAsRead")
   end
   
   function var1.settingsButtonClicked()
      var0("SettingsButtonClicked")
   end
   
   function var1.trayOpened(arg1)
      local var84 = {}
      var84.bellUnseen = arg1
      var0("NotificationTrayOpened", var84)
   end
   
   if var4() then
      function var1.logNotificationImpressions(arg1)
         local var90 = {}
         var90.notificationIds = arg1
         var0("NotificationImpressions", var90)
      end
      
      return var1
   end
   function var1.markAllAsReadClicked()
      var0("MarkAllAsReadClicked")
   end
   
   return var1
end

return require(var0.Packages.Framework).ContextServices.Analytics.new(createAnalyticsHandler)
