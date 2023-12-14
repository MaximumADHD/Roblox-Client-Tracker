-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Flags.GetAccessoryToolEngineFeature)
return function()
   if pcall(function()
      return game:GetFastFlag("DebugLCEditAvatarCage") and game:GetService("StudioService"):HasInternalPermission()
   end) then
      if var0() then
         return 
      end
   end
   return false
end
