-- Lua flag definitions should go in this file so that they can be used by both main and runTests
-- If the flags are defined in main, then it's possible for the tests run first
-- And then error when trying to use flags that aren't yet defined

game:DefineFastFlag("RemoveNilInstances", false)
game:DefineFastFlag("UseRBXThumbInToolbox", false)
game:DefineFastFlag("UseCreationToFetchMyOverrideData2", false)
game:DefineFastFlag("EnableAssetConfigVersionCheckForModels", false)
game:DefineFastFlag("FixAssetConfigManageableGroups", false)
game:DefineFastFlag("UseDevelopFetchPluginVersionId", false)
game:DefineFastFlag("ShowAssetConfigReasons", false)
game:DefineFastFlag("DebugAssetConfigNetworkError", false)
game:DefineFastFlag("FixAssetConfigIcon", false)
game:DefineFastFlag("EnableAssetConfigFreeFix2", false)

-- when removing this flag, remove all references to isCatalogItemCreator
game:DefineFastFlag("EnableNonWhitelistedToggle",false)
game:DefineFastFlag("CMSTabErrorIcon", false)
game:DefineFastFlag("EnablePurchaseV2", false)
game:DefineFastFlag("CMSConsolidateAssetTypeInfo", false)
game:DefineFastFlag("EnableDefaultSortFix", false)
game:DefineFastFlag("EnableOverrideAssetCursorFix", false)
-- Need to explicitly return something from a module
-- Else you get an error "Module code did not return exactly one value"

game:DefineFastFlag("EnableToolboxAssetNameColorChange", false)
game:DefineFastFlag("RemoveAudioEndorsedIcon", false)

return nil
