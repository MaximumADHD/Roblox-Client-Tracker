-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("BaseWrapVerticesModified")
game:DefineFastFlag("EnableCageEditingTools_Dev", false)
return function()
   return game:GetFastFlag("EnableCageEditingTools_Dev") and var0
end
