local MockAppStorageService = {}
MockAppStorageService.__index = MockAppStorageService

function MockAppStorageService.new(data)
	local self = setmetatable({
		_privateValues = data,
	}, MockAppStorageService)

	return self
end

function MockAppStorageService:GetItem(key)
    return self._privateValues[key]
end

function MockAppStorageService:SetItem(key, value)
    self._privateValues[key] = value
end

function MockAppStorageService:Flush()
end

function MockAppStorageService:_DeepEquals(table)
    for key, value in table do
        if self._privateValues[key] ~= value then
            return false
        end
    end

    return true
end

return MockAppStorageService