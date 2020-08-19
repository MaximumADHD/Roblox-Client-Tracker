-- Lua flag definitions should go in this file so that they can be used by both main and runTests
-- If the flags are defined in main, then it's possible for the tests run first
-- And then error when trying to use flags that aren't yet defined

game:DefineFastFlag("RemoveNilInstances", false)
game:DefineFastFlag("UseRBXThumbInToolbox", false)
game:DefineFastFlag("FixAssetConfigManageableGroups", false)
game:DefineFastFlag("ShowAssetConfigReasons2", false)
game:DefineFastFlag("DebugAssetConfigNetworkError", false)
game:DefineFastFlag("FixAssetConfigIcon", false)

-- when removing this flag, remove all references to isCatalogItemCreator
game:DefineFastFlag("EnableNonWhitelistedToggle", false)
game:DefineFastFlag("EnablePurchaseV2", false)
game:DefineFastFlag("EnableDefaultSortFix2", false)
game:DefineFastFlag("EnableOverrideAssetCursorFix", false)
game:DefineFastFlag("EnableOverrideAssetGroupCreationApi", false)
game:DefineFastFlag("FixAssetUploadName", false)
game:DefineFastFlag("EnableSearchedWithoutInsertionAnalytic", false)
game:DefineFastFlag("UseCategoryNameInToolbox", false)
game:DefineFastFlag("ToolboxTabTooltips", false)
-- Need to explicitly return something from a module
-- Else you get an error "Module code did not return exactly one value"

game:DefineFastFlag("EnableToolboxAssetNameColorChange", false)
game:DefineFastFlag("RemoveAudioEndorsedIcon", false)

game:DefineFastFlag("EnableToolboxImpressionAnalytics", false)

game:DefineFastFlag("AssetConfigUseItemConfig", false)
game:DefineFastFlag("EnableToolboxVideos", false)

game:DefineFastFlag("CMSPremiumBenefitsLink2", false)
game:DefineFastFlag("CMSFixAssetPreviewForThumbnailConfig", false)

game:DefineFastFlag("ToolboxShowGroupCreations", false)
game:DefineFastFlag("ToolboxFixOneSecondAudioMaxDuration", false)
game:DefineFastFlag("ToolboxForceSelectDragger", false)

game:DefineFastFlag("StudioFixComparePageInfo2", false)

game:DefineFastFlag("StudioFixGroupCreatorInfo3", false)
game:DefineFastFlag("StudioToolboxFixNewEndpointFilters", false)

game:DefineFastFlag("ToolboxUseDevFrameworkPromise", false)
game:DefineFastFlag("ToolboxFixAnalyticsBugs", false)
game:DefineFastFlag("DebugToolboxEnableRoactChecks", false)

game:DefineFastFlag("ToolboxDisableMarketplaceAndRecentsForLuobu", false)

game:DefineFastFlag("ToolboxWaitForPluginOwnedStatus", false)

return nil
