-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.optional)
local var3 = require(var0.Src.Clients.NotificationClient)
local var4 = require(var0.Src.Util.SharedFlags.getFFlagNotificationTrayImpressions)
function createAnalyticsHandler(arg1)
   local function var0(arg1, arg2)
      arg2 = arg2 or {}
      local var111 = {}
      var111.studioSid = arg1:GetSessionId()
      var111.clientId = arg1:GetClientId()
      local var119 = game.PlaceId
      var111.placeId = var119
      var119 = arg2
      arg1:SendEventDeferred("studio", "NotificationTray", arg1, var1.Dictionary.join(var111, var119))
   end
   
   local var1 = {}
   function var1.notificationClicked(arg1, arg2)
      local var132 = {}
      var132.id = var2(arg1, "notificationId")
      var132.type = var2(arg1, "creatorStreamNotificationContent", "clickAction")
      var132.clickAction = var2(arg1, "notificationType")
      var132.read = var2(arg1, "read")
      var132.trayIndex = arg2
      var0("NotificationClicked", var132)
   end
   
   function var1.markAllAsRead()
      var0("MarkAllAsRead")
   end
   
   function var1.settingsButtonClicked()
      var0("SettingsButtonClicked")
   end
   
   function var1.trayOpened(arg1)
      local var157 = {}
      var157.bellUnseen = arg1
      var0("NotificationTrayOpened", var157)
   end
   
   if var4() then
      function var1.logNotificationImpressions(arg1)
         local var163 = {}
         var163.notificationIds = arg1
         var0("NotificationImpressions", var163)
      end
      
      return var1
   end
   function var1.markAllAsReadClicked()
      var0("MarkAllAsReadClicked")
   end
   
   return var1
end

return require(var0.Packages.Framework).ContextServices.Analytics.new(createAnalyticsHandler)
