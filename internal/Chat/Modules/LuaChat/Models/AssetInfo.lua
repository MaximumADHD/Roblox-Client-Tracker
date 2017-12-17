local LuaChat = script.Parent.Parent
local MockId = require(LuaChat.MockId)

local AssetInfo = {}

function AssetInfo.new()
	local self = {}

	return self
end

function AssetInfo.mock(mergeTable)
	local self = AssetInfo.new(mergeTable)

	self.id = MockId()
	self.Name = "BarricadeZ"
	self.AssetId = 1055125381
	self.AssetTypeId = Enum.AssetType.Place.Value
	self.Description = "The Best Game Ever"

	if mergeTable ~= nil then
		for key, value in pairs(mergeTable) do
			self[key] = value
		end
	end

	return self
end

return AssetInfo