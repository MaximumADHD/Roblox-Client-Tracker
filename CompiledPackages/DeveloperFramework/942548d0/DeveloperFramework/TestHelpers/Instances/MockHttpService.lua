local MockHttpService = {}

MockHttpService.__index = MockHttpService

function MockHttpService.new()
	return setmetatable({
		_index = 0,
	}, MockHttpService)
end

function MockHttpService:GenerateGUID(): string
	self._index += 1
	return tostring(self._index)
end

return MockHttpService
