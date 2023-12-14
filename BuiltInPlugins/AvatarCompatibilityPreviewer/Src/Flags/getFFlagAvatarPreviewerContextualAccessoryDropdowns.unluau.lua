-- Generated with Unluau (https://github.com/valencefun/unluau)
game:DefineFastFlag("AvatarPreviewerContextualAccessoryDropdowns", false)
game:DefineFastFlag("UGCValidationLayeredAndRigidLists", false)
local var0 = require(script.Parent.getFFlagAvatarPreviewerLayeredOrRigidClothingSubtitle)
return function()
   return game:GetFastFlag("AvatarPreviewerContextualAccessoryDropdowns") and game:GetFastFlag("UGCValidationLayeredAndRigidLists") and var0()
end
