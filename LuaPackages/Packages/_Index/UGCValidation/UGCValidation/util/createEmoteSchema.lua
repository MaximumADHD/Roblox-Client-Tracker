--[[
	describes the Instance hierarchy for an Emote
]]

local NumberValueNames = {
	"ThumbnailCharacterRotation",
	"ThumbnailHorizontalOffset",
	"ThumbnailKeyframe",
	"ThumbnailVerticalOffset",
	"ThumbnailZoom",
	"ThumbnailTime",
	"ThumbnailFieldOfView",
}

local function createEmoteSchema()
	local result = {
		ClassName = "Animation",
		_children = {},
	}

	for _, name in NumberValueNames do
		table.insert(result._children, {
			Name = name,
			ClassName = "NumberValue",
			_optional = true,
		})
	end
	return result
end

return createEmoteSchema
