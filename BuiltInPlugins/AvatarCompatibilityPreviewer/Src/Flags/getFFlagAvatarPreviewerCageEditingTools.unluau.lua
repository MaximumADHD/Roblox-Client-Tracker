-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("BaseWrapVerticesModified")
game:DefineFastFlag("EnableCageEditingTools2", false)
return function()
   return game:GetFastFlag("EnableCageEditingTools2") and var0
end
