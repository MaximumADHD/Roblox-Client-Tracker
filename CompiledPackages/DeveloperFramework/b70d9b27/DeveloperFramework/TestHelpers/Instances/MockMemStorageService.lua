local MockMemStorageService = {}

MockMemStorageService.__index = MockMemStorageService

function MockMemStorageService.new()
	return setmetatable({}, MockMemStorageService)
end

function MockMemStorageService:Destroy() end

function MockMemStorageService:Bind() end

function MockMemStorageService:Fire() end

return MockMemStorageService
