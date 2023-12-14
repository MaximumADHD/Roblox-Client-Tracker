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
   local var0 = {}
   var0.count = 10
   var0.notificationChannel = var7.Studio.rawValue()
   var0.full-refresh = arg1
   if arg2 then
      var0.cursor = arg2
   end
   local var47 = "creator-notifications/v1/creator-stream-notifications/"
   local var51 = `users/%*/notifications`
   var47 = var0
   var51 = var2.composeUrl(var2.APIS_URL, var47 ... var51, var47)
   local var58 = var4:get(var51)
   local var3 = var4:handleRetry():catch(function(arg1)
      return arg1
   end):await()
   if 200 <= var3.responseCode then
      if var3.responseCode < 300 then
         var3.responseBody = var5:JSONDecode(var3.responseBody)
      end
   end
   return var3
end

function var8.markNotificationRead(arg1)
   local var87 = `users/%*/notification/%*`
   local var0 = {}
   var0.Status = true
   local var1 = {}
   var1.Url = var2.composeUrl(var2.APIS_URL, "creator-notifications/v1/creator-stream-notifications/" ... var87)
   var87 = var0
   var1.Body = var5:JSONEncode(var87)
   var1.Method = "PUT"
   local var98 = {}
   var98.Content-Type = "application/json"
   var1.Headers = var98
   local var104 = var4:request(var1)
   return var4:handleRetry():catch(function(arg1)
      return arg1
   end):await()
end

function var8.markAllNotificationsRead()
   local var123 = `users/%*/notifications`
   local var0 = {}
   var0.NotificationChannel = var7.Studio.rawValue()
   local var1 = {}
   var1.Url = var2.composeUrl(var2.APIS_URL, "creator-notifications/v1/creator-stream-notifications/" ... var123)
   var123 = var0
   var1.Body = var5:JSONEncode(var123)
   var1.Method = "PUT"
   local var137 = {}
   var137.Content-Type = "application/json"
   var1.Headers = var137
   local var143 = var4:request(var1)
   return var4:handleRetry():catch(function(arg1)
      return arg1
   end):await()
end

return var8
