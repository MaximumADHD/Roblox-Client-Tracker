local Framework = script.Parent.Parent

local getFFlagDevFrameworkMemStorageServiceMocks =
	require(Framework.SharedFlags.getFFlagDevFrameworkMemStorageServiceMocks)

local Instances = require(script.Parent.Instances)
local isCli = require(script.Parent.isCli)

local ServiceWrapper = {}
ServiceWrapper.__index = ServiceWrapper

local function getMockService(serviceName: string, instance: Instance?)
	local MockMap = {
		AnalyticsService = function()
			return Instances.MockAnalyticsService.new()
		end,
		AssetManagerService = function()
			return Instances.MockAssetManagerService.new()
		end,
		CalloutService = function()
			return Instances.MockCalloutService.new()
		end,
		ChangeHistoryService = function()
			return Instances.MockChangeHistoryService.new()
		end,
		CoreGui = function()
			return Instances.MockCoreGui.new()
		end,
		HttpService = function()
			return Instances.MockHttpService.new()
		end,
		InsertService = function()
			return Instances.MockInsertService.new()
		end,
		MarketplaceService = function()
			return Instances.MockMarketplaceService.new()
		end,
		MaterialGenerationService = function()
			return Instances.MockMaterialGenerationService.new()
		end,
		MaterialService = function()
			return Instances.MockMaterialService.new(instance)
		end,
		MemStorageService = if getFFlagDevFrameworkMemStorageServiceMocks()
			then function()
				return Instances.MockMemStorageService.new()
			end
			else nil,
		Selection = function()
			return Instances.MockSelectionService.new()
		end,
		StudioService = function()
			return Instances.MockStudioService.new()
		end,
		ToastNotificationService = function()
			return Instances.MockToastNotificationService.new()
		end,
		StudioDeviceEmulatorService = function()
			return Instances.MockStudioDeviceEmulatorService.new()
		end,
	}

	return MockMap[serviceName]()
end

function ServiceWrapper.new(ServiceName: string, Mock: boolean?)
	local instance, mockService

	if Mock then
		instance = Instance.new("Folder")
		mockService = getMockService(ServiceName, instance)
	end

	local self = {
		_mock = mockService,
		_instance = if Mock then instance else game:GetService(ServiceName),
		-- AssetManagerService is not available in roblox-cli
		_service = if Mock or (isCli() and ServiceName == "AssetManagerService")
			then mockService
			else game:GetService(ServiceName),
	}

	return setmetatable(self, ServiceWrapper)
end

function ServiceWrapper:destroy()
	if self._mock then
		self._mock:Destroy()
		self._mock = nil

		self._instance:Destroy()
		self._instance = nil
	end
end

function ServiceWrapper:asInstance()
	return self._instance
end

function ServiceWrapper:asService()
	return self._service
end

return ServiceWrapper
