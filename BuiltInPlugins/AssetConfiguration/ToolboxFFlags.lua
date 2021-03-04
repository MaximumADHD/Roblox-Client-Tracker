-- Lua flag definitions should go in this file so that they can be used by both main and runTests
-- If the flags are defined in main, then it's possible for the tests run first
-- And then error when trying to use flags that aren't yet defined

game:DefineFastFlag("FixAssetConfigManageableGroups", false)
game:DefineFastFlag("ShowAssetConfigReasons2", false)
game:DefineFastFlag("DebugAssetConfigNetworkError", false)
game:DefineFastFlag("AssetConfigFixRoactTypeChecks", false)

game:DefineFastFlag("EnableDefaultSortFix2", false)
game:DefineFastFlag("UseCategoryNameInToolbox", false)
game:DefineFastFlag("DebugToolboxGetRolesRequest", false)

game:DefineFastFlag("EnableToolboxAssetNameColorChange", false)
game:DefineFastFlag("RemoveAudioEndorsedIcon", false)

game:DefineFastFlag("EnableToolboxVideos", false)

game:DefineFastFlag("CMSPremiumBenefitsLink2", false)
game:DefineFastFlag("CMSFixAssetPreviewForThumbnailConfig", false)

game:DefineFastFlag("ToolboxFixOneSecondAudioMaxDuration", false)
game:DefineFastFlag("ToolboxForceSelectDragger", false)

game:DefineFastFlag("DebugToolboxEnableRoactChecks", false)

game:DefineFastFlag("ToolboxDisableMarketplaceAndRecentsForLuobu", false)
game:DefineFastFlag("ToolboxShowRobloxCreatedAssetsForLuobu", false)

game:DefineFastInt("LuobuToolboxMaxAudioLength", 5)
game:DefineFastString("LuobuMarketplaceDisabledCategories", "PaidPlugins;Plugins")

game:DefineFastFlag("AssetConfigFixAssetIdTypo", false)
game:DefineFastFlag("AssetConfigFixBadIdVerifyState", false)

game:DefineFastFlag("UseDefaultThumbnailForAnimation", false)

game:DefineFastFlag("CMSUploadAccessoryMeshPartFormat", false)

game:DefineFastFlag("ToolboxUseDevFrameworkAssetPreview", false)

game:DefineFastFlag("CMSUploadFees", false)

game:DefineFastFlag("ImproveAssetCreationsPageFetching2", false)

game:DefineFastFlag("ToolboxUseGetItemDetails", false)

game:DefineFastFlag("EnableToolboxStylizer", false)

game:DefineFastFlag("ToolboxViewInBrowserUtmAttributes", false)
game:DefineFastFlag("ToolboxPreventCameraMoveForScripts", false)
game:DefineFastFlag("ToolboxStopAudioFromPlayingOnCloseAndCategorySwitch", false)

game:DefineFastFlag("ToolboxUseTranslationDevelopmentTable", false)

game:DefineFastFlag("ToolboxCreationsFreshChecks", false)

game:DefineFastFlag("ToolboxUseDevFrameworkDialogs", false)

game:DefineFastFlag("ToolboxNewResponseFreshChecks", false)

game:DefineFastFlag("AssetConfigNonCatalogOptionalDescription", false)

return nil
