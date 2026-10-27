local MockAssetManagerService = {}

MockAssetManagerService.__index = MockAssetManagerService

function MockAssetManagerService.new()
	return setmetatable({}, MockAssetManagerService)
end

function MockAssetManagerService:Destroy() end

function MockAssetManagerService:CreateAlias(_assetTypeId: number, _assetIdNumber: number, _fileName: string) end

return MockAssetManagerService
