local main = script.Parent.Parent
local RefactorFlags = require(main.Packages._Index.DeveloperFramework.DeveloperFramework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = true

game:DefineFastFlag("PluginManagementFixUnmountSetState", false)

return nil
