-- Generated with Unluau (https://github.com/valencefun/unluau)
game:DefineFastFlag("MaterialActionAsTool", false)
game:DefineFastFlag("MaterialPickerBetaEnabled", false)
return function()
   return game:GetFastFlag("MaterialActionAsTool") and game:GetFastFlag("MaterialPickerBetaEnabled")
end
