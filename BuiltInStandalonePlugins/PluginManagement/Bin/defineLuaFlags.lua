local main = script.Parent.Parent
local RefactorFlags = require(main.Packages._Index.DeveloperFramework.DeveloperFramework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = true

game:DefineFastFlag("PluginManagementDeduplicatePackages", false)
game:DefineFastFlag("PluginManagementRemoveCommentsEnabled", false)

return nil
