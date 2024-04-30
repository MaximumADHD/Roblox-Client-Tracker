-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AvatarCompatibilityPreviewer").Src.Flags.getFFlagAvatarPreviewerAutoSetup)
game:DefineFastFlag("AvatarPreviewerAddGeoToSelection", false)
return function()
   return game:GetFastFlag("AvatarPreviewerAddGeoToSelection") and var0()
end
