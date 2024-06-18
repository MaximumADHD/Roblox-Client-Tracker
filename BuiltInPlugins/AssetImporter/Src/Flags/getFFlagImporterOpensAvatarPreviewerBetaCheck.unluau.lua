-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Testing.isFTF)
return function()
   if var0() then
      return true
   end
   return game:GetFastFlag("ImporterOpensAvatarPreviewerBetaCheck")
end
