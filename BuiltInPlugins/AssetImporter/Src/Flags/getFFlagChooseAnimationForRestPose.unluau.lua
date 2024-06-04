-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Utility.isFTF)
return function()
   if var0() then
      return true
   end
   return game:GetFastFlag("ChooseAnimationForRestPose")
end
