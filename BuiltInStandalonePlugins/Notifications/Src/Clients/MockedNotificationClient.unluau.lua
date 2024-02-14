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
   local var442 = 12
   local var443 = 1
   local var444 = 1 + var1
   local var445 = var2
   local var448 = (var444) % var2
   local var449 = var448 + 1
   var445 = var444
   var449 = var2
   var448 = var445[var449](var445)
   table.insert(var449, var448)
   var1.new(function(arg1, arg2)
      task.spawn(function()
         arg1()
      end)
   end):await()
   local var6 = {}
   local var462 = {}
   var462.creatorStreamNotifications = var2
   var462.nextCursor = tostring(var1 + 12)
   var6.responseBody = var462
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
