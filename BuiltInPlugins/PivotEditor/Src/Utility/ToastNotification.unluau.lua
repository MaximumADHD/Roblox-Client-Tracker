-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).ContextServices.ContextItem:extend("ToastNotification")
function var0.new(arg1)
   if not arg1 then
      arg1 = game:GetService("ToastNotificationService")
   end
   local var18 = {}
   var18._notificationService = arg1
   return setmetatable(var18, var0)
end

function var0.destroy(arg1)
   arg1._notificationService = nil
end

function var0.showNotification(arg1, arg2, arg3)
   if arg1._notificationService then
      arg1._notificationService:ShowNotification(arg2, arg3)
   end
end

function var0.hideNotification(arg1, arg2)
   if arg1._notificationService then
      arg1._notificationService:HideNotification(arg2)
   end
end

return var0
