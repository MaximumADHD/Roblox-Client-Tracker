local CorePackages = game:GetService("CorePackages")
local FFlagEnableInspectAndBuyV2RootFlag =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableInspectAndBuyV2RootFlag

return FFlagEnableInspectAndBuyV2RootFlag and game:DefineFastFlag("AXEnableFetchAvatarPreview9", false)
