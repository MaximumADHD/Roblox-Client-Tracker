-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Clients.NotificationClient)
local var3 = require(var0.Src.Contexts.NotificationsProvider)
local var4 = require(var0.Src.Contexts.MenuVisibleProvider)
local var5 = require(var0.Src.Components.NotificationTray)
local var6 = require(var0.Src.Util.SharedFlags.getFFlagNotificationsMarkAllAsRead)
return function()
   if var6() then
      local var44 = {}
      var44.notificationClient = var2
      local var46 = {}
      var46.NotificationTray = var1.createElement(var5)
      local var0 = var1.createElement(var3, var44, var46)
      return var1.createElement(var4, {}, {})
   end
   local var56 = {}
   var56.notificationClient = var2
   local var58 = {}
   var58.NotificationTray = var1.createElement(var5)
   return var1.createElement(var3, var56, var58)
end
