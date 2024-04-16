-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = var1.RobloxAPI.Url.new()
local var38 = {}
var38.isInternal = true
var38.loggingLevel = 0
local var4 = var1.Http.Networking.new(var38)
local var5 = game:GetService("HttpService")
local var6 = game:GetService("StudioService")
local var7 = require(var0.Src.Enums.NotificationChannel)
local var8 = {}
function var8.getNotifications(arg1, arg2)
   local var0 = nil
   local var61 = {}
   var61.count = tostring(10)
   local var2 = var7
   local var68 = var2.Studio.rawValue()
   var61.notificationChannel = tostring()
   var0 = var61
   if arg1 then
      var0.full-refresh = tostring(true)
   end
   if arg2 then
      var0.cursor = arg2
   end
   local var78 = "creator-notifications/v1/creator-stream-notifications/"
   local var82 = `users/%*/notifications`
   var2 = var82
   var78 = var0
   var82 = var2.composeUrl(var2.APIS_URL, var78 ... var2, var78)
   local var88 = var4:get(var82)
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
   local var117 = `users/%*/notification/%*`
   local var0 = {}
   var0.Status = true
   local var1 = {}
   var1.Url = var2.composeUrl(var2.APIS_URL, "creator-notifications/v1/creator-stream-notifications/" ... var117)
   var117 = var0
   var1.Body = var5:JSONEncode(var117)
   var1.Method = "PUT"
   local var128 = {}
   var128.Content-Type = "application/json"
   var1.Headers = var128
   local var134 = var4:request(var1)
   return var4:handleRetry():catch(function(arg1)
      return arg1
   end):await()
end

function var8.markAllNotificationsRead()
   local var153 = `users/%*/notifications`
   local var0 = {}
   var0.notification-channel = var7.Studio.rawValue()
   local var1 = {}
   var1.Url = var2.composeUrl(var2.APIS_URL, "creator-notifications/v1/creator-stream-notifications/" ... var153)
   var153 = var0
   var1.Body = var5:JSONEncode(var153)
   var1.Method = "PUT"
   local var167 = {}
   var167.Content-Type = "application/json"
   var1.Headers = var167
   local var173 = var4:request(var1)
   return var4:handleRetry():catch(function(arg1)
      return arg1
   end):await()
end

return var8
