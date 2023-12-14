-- Generated with Unluau (https://github.com/valencefun/unluau)
game:DefineFastFlag("ToolboxMigrateOffItemConfig", false)
return function()
   return game:GetFastFlag("ToolboxDoNotCallInsertionEndpointForAvatarAssets") and game:GetFastFlag("ToolboxMigrateOffItemConfig")
end
