-- Lua flag definitions should go in this file so that they can be used by both main and runTests
-- If the flags are defined in main, then it's possible for the tests run first
-- And then error when trying to use flags that aren't yet defined
game:DefineFastFlag("LocalizationToolsFixExampleNotDownloaded", false)
game:DefineFastFlag("ImageLocalizationFeatureEnabled", false)
game:DefineFastFlag("LocalizationToolsCloudTableUploadErrors", false)
game:DefineFastInt("LocalizationToolsCloudTableContextLength", 500)
game:DefineFastInt("LocalizationToolsCloudTableKeyLength", 300)
game:DefineFastInt("LocalizationToolsCloudTableSourceLength", 300)
game:DefineFastInt("LocalizationToolsCloudTableExampleLength", 300)
game:DefineFastInt("LocalizationToolsCloudTableTranslationLength", 300)
game:DefineFastInt("LocalizationToolsCloudTableLocaleLength", 100)

return nil
