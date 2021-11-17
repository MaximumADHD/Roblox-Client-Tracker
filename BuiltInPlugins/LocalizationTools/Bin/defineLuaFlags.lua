-- Lua flag definitions should go in this file so that they can be used by both main and runTests
-- If the flags are defined in main, then it's possible for the tests run first
-- And then error when trying to use flags that aren't yet defined
game:DefineFastFlag("EnableLocalizationToolsStylizer", false)
game:DefineFastFlag("LocalizationToolsPluginInvalidEntryIdentifierMessageEnabled", false)
game:DefineFastFlag("LocalizationToolsAllowUploadZhCjv", false)
game:DefineFastFlag("LocalizationToolsPluginEnableCollaborator", false)
game:DefineFastFlag("LocalizationToolsFixExampleNotDownloaded", false)
game:DefineFastFlag("ImageLocalizationFeatureEnabled", false)
game:DefineFastFlag("LocalizationToolsUseRoactv14", false)

-- Overrides THEME_REFACTOR before require
local main = script.Parent.Parent
local RefactorFlags = require(main.Packages.Framework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = game:GetFastFlag("EnableLocalizationToolsStylizer")

return nil
