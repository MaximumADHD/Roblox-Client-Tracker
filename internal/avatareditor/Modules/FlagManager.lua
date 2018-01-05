local TEST_MODE_IN_PROD_STUDIO = true

--
--
local testMode = false
if TEST_MODE_IN_PROD_STUDIO and game["Run Service"]:IsStudio() and not pcall(settings) then
	testMode = true
end

local flags = {
	EnabledAvatarEditorV2 = false,
	AvatarEditorUsesSpriteSheets = false,
	EnabledAvatarScalePage = false,
	EnabledAvatarAnimationCategory = false,
	AvatarEditorUsesNewAssetGetEndpoint = false,
	AvatarEditorAmendsRigsWhenAppearanceChanges = false,
	AvatarEditorDisplaysWarningOnR15OnlyPages = false,
	AvatarEditorSpinCounter = false,
	AvatarEditorCameraZoomingEnabled = false,
	MoveAvatarEditorPages = false,
	AvatarEditorUsesNewR15Loading = false,
	AvatarEditorUsesBrowserWindowCall = false,
	AvatarEditorUsesRecommended = false,
	AvatarEditorMarketplacePurchase = false,
	AvatarEditorWaitsForInitialLoad = false,
	AvatarEditorPrintsBenchmarkTest = false,
	AvatarEditorCanScaleHead = false,
	AvatarEditorUsesEngineCharacterScaling = false,
	AvatarEditorCardRecycling = false,
	AvatarEditorInitializationOptimization = false,
	AvatarEditorEnableDefaultShirtAndPants = false,
	UseAnthroValues2 = false
}

local testStates = {
	EnabledAvatarEditorV2 = true,
	AvatarEditorUsesSpriteSheets = true,
	EnabledAvatarScalePage = true,
	EnabledAvatarAnimationCategory = true,
	AvatarEditorUsesNewAssetGetEndpoint = false,
	AvatarEditorAmendsRigsWhenAppearanceChanges = true,
	AvatarEditorDisplaysWarningOnR15OnlyPages = true,
	AvatarEditorSpinCounter = true,
	AvatarEditorCameraZoomingEnabled = true,
	MoveAvatarEditorPages = true,
	AvatarEditorUsesNewR15Loading = true,
	AvatarEditorUsesBrowserWindowCall = false,
	AvatarEditorUsesRecommended = false,
	AvatarEditorMarketplacePurchase = false,
	AvatarEditorWaitsForInitialLoad = true,
	AvatarEditorPrintsBenchmarkTest = false,
	AvatarEditorCanScaleHead = true,
	AvatarEditorUsesEngineCharacterScaling = true,
	AvatarEditorCardRecycling = true,
	AvatarEditorInitializationOptimization = true,
	AvatarEditorEnableDefaultShirtAndPants = true,
	UseAnthroValues2 = true
}

--
--
local this = {}

if testMode then
	for name, default in next, flags do
		this[name] = testStates[name] or default
	end
else
	for name, default in next, flags do
		pcall(function()
			this[name] = settings():GetFFlag(name)
		end)
	end
end

--
--
return this
