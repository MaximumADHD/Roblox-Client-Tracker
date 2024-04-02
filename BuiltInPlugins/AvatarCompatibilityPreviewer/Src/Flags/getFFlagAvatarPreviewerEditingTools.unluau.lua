-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AvatarCompatibilityPreviewer").Src.Flags.getFFlagAvatarPreviewerCageEditingTools)
game:DefineFastFlag("AvatarPreviewerEditingTools_Dev", false)
return function()
   return game:GetFastFlag("AvatarPreviewerEditingTools_Dev") and var0()
end
