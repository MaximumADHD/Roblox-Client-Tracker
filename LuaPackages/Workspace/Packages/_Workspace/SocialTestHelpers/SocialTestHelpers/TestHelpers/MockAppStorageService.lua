-- TODO https://jira.rbx.com/browse/SOCCONN-1850 Check if we can mock out
-- function calls here

local MockAppStorageService = {}
MockAppStorageService.__index = MockAppStorageService

function MockAppStorageService.new(initial)
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

function MockAppStorageService:flush() end

return MockAppStorageService
