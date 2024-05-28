-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = var1.RobloxAPI.Url.new()
local var15 = {}
var15.isInternal = true
var15.loggingLevel = 0
local var4 = var1.Http.Networking.new(var15)
local var5 = game:GetService("HttpService")
local var6 = game:GetService("StudioService")
local var7 = require(var0.Src.Enums.NotificationChannel)
local var8 = {}
function var8.getNotifications(arg1, arg2)
   local var0 = nil
   local var38 = {}
   var38.count = tostring(10)
   local var2 = var7
   local var45 = var2.Studio.rawValue()
   var38.notificationChannel = tostring()
   var0 = var38
   if arg1 then
      var0.full-refresh = tostring(true)
   end
   if arg2 then
      var0.cursor = arg2
   end
   local var55 = "creator-notifications/v1/creator-stream-notifications/"
   local var59 = `users/%*/notifications`
   var2 = var59
   var55 = var0
   var59 = var2.composeUrl(var2.APIS_URL, var55 ... var2, var55)
   local var65 = var4:get(var59)
   local var6 = var4:handleRetry():catch(function(arg1)
      return arg1
   end):await()
   if 200 <= var6.responseCode then
      if var6.responseCode < 300 then
         var6.responseBody = var5:JSONDecode(var6.responseBody)
      end
   end
   return var6
end

function var8.markNotificationRead(arg1)
   local var94 = `users/%*/notification/%*`
   local var0 = {}
   var0.Status = true
   local var1 = {}
   var1.Url = var2.composeUrl(var2.APIS_URL, "creator-notifications/v1/creator-stream-notifications/" ... var94)
   var94 = var0
   var1.Body = var5:JSONEncode(var94)
   var1.Method = "PUT"
   local var105 = {}
   var105.Content-Type = "application/json"
   var1.Headers = var105
   local var111 = var4:request(var1)
   return var4:handleRetry():catch(function(arg1)
      return arg1
   end):await()
end

function var8.markAllNotificationsRead()
   local var130 = `users/%*/notifications`
   local var0 = {}
   var0.notification-channel = var7.Studio.rawValue()
   local var1 = {}
   var1.Url = var2.composeUrl(var2.APIS_URL, "creator-notifications/v1/creator-stream-notifications/" ... var130)
   var130 = var0
   var1.Body = var5:JSONEncode(var130)
   var1.Method = "PUT"
   local var144 = {}
   var144.Content-Type = "application/json"
   var1.Headers = var144
   local var150 = var4:request(var1)
   return var4:handleRetry():catch(function(arg1)
      return arg1
   end):await()
end

return var8
