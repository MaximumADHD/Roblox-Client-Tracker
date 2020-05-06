-- Lua flag definitions should go in this file so that they can be used by both main and runTests
-- If the flags are defined in main, then it's possible for the tests run first
-- And then error when trying to use flags that aren't yet defined

-- TODO (awarwick) 4/8/2020 Remove with FFlagStudioMoveMorpherEditorInsideGameSettings
game:DefineFastFlag("WorldAvatarLocalization", false)
game:DefineFastFlag("AvatarSizeFixForReorganizeHeaders", false)
game:DefineFastFlag("StudioLocalizationInGameSettingsEnabled", false)
game:DefineFastFlag("StudioMoveMorpherEditorInsideGameSettings", false)
game:DefineFastFlag("StudioConvertGameSettingsToDevFramework", false)

return nil
