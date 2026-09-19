local MockInsertService = {}

MockInsertService.__index = MockInsertService

function MockInsertService.new()
	return setmetatable({}, MockInsertService)
end

function MockInsertService:Destroy() end

function MockInsertService:LoadLocalAsset(_asset: string)
	return Instance.new("Model")
end

return MockInsertService
