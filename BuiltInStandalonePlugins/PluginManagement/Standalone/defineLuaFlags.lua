local main = script.Parent.Parent
local RefactorFlags = require(main.Packages.Framework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = game:GetFastFlag("EnablePluginManagementStylizer")
return nil
