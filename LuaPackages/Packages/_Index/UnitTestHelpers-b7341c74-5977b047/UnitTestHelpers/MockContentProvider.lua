--[[
	A mock ContentProvider that invokes PreloadAsync callbacks immediately.

	It is normally used via mockProviders.
]]
local MockContentProvider = {}
MockContentProvider.__index = MockContentProvider

function MockContentProvider.new()
	local self = {}

	setmetatable(self, {
		__index = MockContentProvider,
	})
	return self
end

function MockContentProvider:PreloadAsync(assets, callback)
	if callback then
		for _, value in ipairs(assets) do
			callback(value, Enum.AssetFetchStatus.Success)
		end
	end
end

return MockContentProvider
