-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Clients.NotificationClient)
local var3 = require(var0.Src.Contexts.NotificationsProvider)
local var4 = require(var0.Src.Components.NotificationTray)
return function()
   local var26 = {}
   var26.notificationClient = var2
   local var28 = {}
   var28.NotificationTray = var1.createElement(var4)
   return var1.createElement(var3, var26, var28)
end
