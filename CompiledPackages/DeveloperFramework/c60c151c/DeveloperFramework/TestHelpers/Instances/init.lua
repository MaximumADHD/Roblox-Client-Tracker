local Framework = script.Parent.Parent

local getFFlagDevFrameworkMemStorageServiceMocks =
	require(Framework.SharedFlags.getFFlagDevFrameworkMemStorageServiceMocks)

local strict = require(script.Parent.Parent.Util.strict)

return strict({
	MockAnalyticsService = require(script.MockAnalyticsService),
	MockAssetManagerService = require(script.MockAssetManagerService),
	MockCalloutService = require(script.MockCalloutService),
	MockChangeHistoryService = require(script.MockChangeHistoryService),
	MockCoreGui = require(script.MockCoreGui),
	MockHttpService = require(script.MockHttpService),
	MockInsertService = require(script.MockInsertService),
	MockMarketplaceService = require(script.MockMarketplaceService),
	MockMaterialGenerationService = require(script.MockMaterialGenerationService),
	MockMaterialService = require(script.MockMaterialService),
	MockMemStorageService = if getFFlagDevFrameworkMemStorageServiceMocks()
		then require(script.MockMemStorageService)
		else nil,
	MockMouse = require(script.MockMouse),
	MockPlugin = require(script.MockPlugin),
	MockPluginToolbar = require(script.MockPluginToolbar),
	MockPluginToolbarButton = require(script.MockPluginToolbarButton),
	MockSelectionService = require(script.MockSelectionService),
	MockStudioService = require(script.MockStudioService),
	MockToastNotificationService = require(script.MockToastNotificationService),
	MockStudioDeviceEmulatorService = require(script.MockStudioDeviceEmulatorService),
})
