local MockMarketplaceService = {}

MockMarketplaceService.__index = MockMarketplaceService

function MockMarketplaceService.new()
	return setmetatable({}, MockMarketplaceService)
end

function MockMarketplaceService:Destroy() end

function MockMarketplaceService:GetProductInfo(_assetId: number, _infoType: Enum.InfoType)
	return {}
end

return MockMarketplaceService
