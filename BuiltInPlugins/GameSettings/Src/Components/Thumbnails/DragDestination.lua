--[[
	A temporary container that exists as a visual destination for dragged thumbnails.
	Used in the process of reordering thumbnails.

	When a thumbnail is being dragged, its appearance in the ThumbnailSet is
	replaced with this DragDestination image.

	Props:
		int LayoutOrder = The order in which this widget will appear in the set.
]]

local BORDER = "rbxasset://textures/GameSettings/DottedBorder.png"

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local function DragDestination(props)
	return withTheme(function(theme)
		local index = props.LayoutOrder or 1

		return Roact.createElement("ImageLabel", {
			BorderSizePixel = 0,
			BackgroundTransparency = 0.85,
			BackgroundColor3 = theme.thumbnailDrag.background,
			ImageColor3 = theme.thumbnailDrag.border,
			LayoutOrder = index,
			Image = BORDER,
		})
	end)
end

return DragDestination