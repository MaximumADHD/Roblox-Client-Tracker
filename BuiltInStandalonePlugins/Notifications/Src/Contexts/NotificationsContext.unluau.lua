-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var115 = var0.Src
local var1 = require(var115.Clients.NotificationClient)
local var2 = {}
var2.notifications = {}
var2.allLoaded = false
function var2.setNotifications()
end

function var2.setCursor()
end

function var2.setAllLoaded()
end

function var2.markNotificationRead()
end

function var2.markAllNotificationsRead()
end

var2.notificationClient = nil
var115 = var2
return require(var0.Packages.React).createContext(var115)
