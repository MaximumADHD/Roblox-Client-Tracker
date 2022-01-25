local main = script.Parent.Parent
local RefactorFlags = require(main.Packages.Framework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = true

game:DefineFastFlag("PluginManagementRemoveCommentsEnabled", false)

return nil
