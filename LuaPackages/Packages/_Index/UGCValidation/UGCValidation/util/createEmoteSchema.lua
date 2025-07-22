--[[
	describes the Instance hierarchy for an Emote
]]

local root = script.Parent.Parent

local getFFlagUGCValidateAllowThumbnailFieldOfView = require(root.flags.getFFlagUGCValidateAllowThumbnailFieldOfView)

local NumberValueNames = {
	"ThumbnailCharacterRotation",
	"ThumbnailHorizontalOffset",
	"ThumbnailKeyframe",
	"ThumbnailVerticalOffset",
	"ThumbnailZoom",
	"ThumbnailTime",
}

if getFFlagUGCValidateAllowThumbnailFieldOfView() then
	table.insert(NumberValueNames, "ThumbnailFieldOfView")
end

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
