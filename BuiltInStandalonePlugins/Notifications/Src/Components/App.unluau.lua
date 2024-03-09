-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Clients.NotificationClient)
local var3 = require(var0.Src.Contexts.NotificationsProvider)
local var4 = require(var0.Src.Contexts.MenuVisibleProvider)
local var5 = require(var0.Src.Components.NotificationTray)
return function()
   local var36 = {}
   var36.notificationClient = var2
   local var38 = {}
   var38.NotificationTray = var1.createElement(var5)
   local var0 = var1.createElement(var3, var36, var38)
   return var1.createElement(var4, {}, {})
end
