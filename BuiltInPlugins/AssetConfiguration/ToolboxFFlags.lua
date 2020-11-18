-- Lua flag definitions should go in this file so that they can be used by both main and runTests
-- If the flags are defined in main, then it's possible for the tests run first
-- And then error when trying to use flags that aren't yet defined

game:DefineFastFlag("FixAssetConfigManageableGroups", false)
game:DefineFastFlag("ShowAssetConfigReasons2", false)
game:DefineFastFlag("DebugAssetConfigNetworkError", false)

game:DefineFastFlag("EnableDefaultSortFix2", false)
game:DefineFastFlag("UseCategoryNameInToolbox", false)
game:DefineFastFlag("DebugToolboxGetRolesRequest", false)
-- Need to explicitly return something from a module
-- Else you get an error "Module code did not return exactly one value"

game:DefineFastFlag("EnableToolboxAssetNameColorChange", false)
game:DefineFastFlag("RemoveAudioEndorsedIcon", false)

game:DefineFastFlag("EnableToolboxImpressionAnalytics", false)

game:DefineFastFlag("AssetConfigUseItemConfig", false)
game:DefineFastFlag("EnableToolboxVideos", false)

game:DefineFastFlag("CMSPremiumBenefitsLink2", false)
game:DefineFastFlag("CMSFixAssetPreviewForThumbnailConfig", false)

game:DefineFastFlag("ToolboxFixOneSecondAudioMaxDuration", false)
game:DefineFastFlag("ToolboxForceSelectDragger", false)

game:DefineFastFlag("DebugToolboxEnableRoactChecks", false)

game:DefineFastFlag("ToolboxDisableMarketplaceAndRecentsForLuobu", false)
game:DefineFastFlag("ToolboxShowRobloxCreatedAssetsForLuobu", false)

game:DefineFastInt("LuobuToolboxMaxAudioLength", 5)
game:DefineFastString("LuobuMarketplaceDisabledCategories", "PaidPlugins;FreePlugins;Plugins")

game:DefineFastFlag("AssetConfigFixAssetIdTypo", false)
game:DefineFastFlag("AssetConfigFixBadIdVerifyState", false)

game:DefineFastFlag("UseDefaultThumbnailForAnimation", false)

game:DefineFastFlag("CMSUploadAccessoryMeshPartFormat", false)

game:DefineFastFlag("CMSUploadFees", false)

game:DefineFastFlag("ImproveAssetCreationsPageFetching", false)

return nil
