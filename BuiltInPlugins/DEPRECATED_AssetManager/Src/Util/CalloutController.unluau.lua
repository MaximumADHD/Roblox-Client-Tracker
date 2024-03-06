-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).ContextServices.ContextItem:extend("CalloutController")
function var0.new(arg1)
   local var0 = {}
   var0._calloutService = arg1 or game:GetService("CalloutService")
   assert(var0._calloutService, "CalloutController requires a CalloutService")
   return setmetatable(var0, var0)
end

function var0.destroy(arg1)
   arg1._calloutService = nil
end

function var0.defineCallout(arg1, arg2, arg3, arg4, arg5)
   arg1._calloutService:DefineCallout(arg2, arg3, arg4, arg5)
end

function var0.attachCallout(arg1, arg2, arg3, arg4)
   arg1._calloutService:AttachCallout(arg2, arg3, arg4)
end

function var0.detachCalloutsByDefinitionId(arg1, arg2)
   arg1._calloutService:DetachCalloutsByDefinitionId(arg2)
end

return var0
