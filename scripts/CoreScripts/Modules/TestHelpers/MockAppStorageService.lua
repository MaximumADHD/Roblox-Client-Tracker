local MockAppStorageService = {}
MockAppStorageService.__index = MockAppStorageService

function MockAppStorageService.new(initial: any?)
	local self = initial or {}

	setmetatable(self, {
		__index = MockAppStorageService,
	})
	return self
end

function MockAppStorageService:GetItem(key)
	return self[key]

end

function MockAppStorageService:SetItem(key, value)
	self[key] = tostring(value)
end

function MockAppStorageService:flush()
end

return MockAppStorageService
