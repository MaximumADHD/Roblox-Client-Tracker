-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("StudioService")
local var1 = require(script.Parent.Parent.Parent.Core.Types.UGCValidationTypes)
return function()
   local var0 = {}
   var0.creatorType = "User"
   local var1 = var0:GetUserId()
   var0.id = var1
   return { {}, var0:GetUserId() }
end
