-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Players")
local var1 = game:GetService("StudioService")
local var2 = require(script.Parent.Parent.Parent.Src.Util.clearPrebakedDescriptionAnimations)
return function(arg1)
   local var0 = var0:GetHumanoidDescriptionFromUserId(var1:GetUserId())
   var2(var0)
   return var0
end
