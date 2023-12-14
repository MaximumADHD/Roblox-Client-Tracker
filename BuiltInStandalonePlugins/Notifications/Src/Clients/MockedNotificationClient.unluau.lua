-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).Util.Promise
local var2 = require(var0.Src.Clients.MockedNotifications)
local var3 = {}
function var3.getNotifications(arg1, arg2)
   local var0 = tonumber(arg2)
   local var1 = 1
   if var0 == "tonumber" then
      var1 = var0
   end
   local var2 = {}
   local var23 = 12
   local var24 = 1
   local var25 = 1 + var1
   local var26 = var2
   local var29 = (var25) % var2
   local var30 = var29 + 1
   var26 = var25
   var30 = var2
   var29 = var26[var30](var26)
   table.insert(var30, var29)
   var1.new(function(arg1, arg2)
      task.spawn(function()
         arg1()
      end)
   end):await()
   local var6 = {}
   local var43 = {}
   var43.creatorStreamNotifications = var2
   var43.nextCursor = tostring(var1 + 12)
   var6.responseBody = var43
   var6.responseCode = 200
   return var6
end

function var3.markNotificationRead(arg1)
   local var0 = {}
   var0.responseBody = nil
   var0.responseCode = 200
   return var0
end

function var3.markAllNotificationsRead()
   local var0 = {}
   var0.responseBody = nil
   var0.responseCode = 200
   return var0
end

return var3
