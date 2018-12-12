--[[
	Represents the widget for adding a new Thumbnail to a ThumbnailSet.

	Props:
		int LayoutOrder = The order in which this widget will appear in the set.
		function OnClick = A callback for when this button is clicked.
]]

local BORDER = "rbxasset://textures/GameSettings/DottedBorder.png"
local PLUS = "rbxasset://textures/GameSettings/CenterPlus.png"

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local NewThumbnail = Roact.PureComponent:extend("NewThumbnail")

function NewThumbnail:init()
	self.mouseEnter = function()
		self:mouseHoverChanged(true)
	end

	self.mouseLeave = function()
		self:mouseHoverChanged(false)
	end
end

function NewThumbnail:mouseHoverChanged(hovering)
	getMouse(self).setHoverIcon("PointingHand", hovering)
end

function NewThumbnail:render()
	return withTheme(function(theme)
		return Roact.createElement("ImageButton", {
			BorderSizePixel = 0,
			BackgroundColor3 = theme.newThumbnail.background,
			ImageColor3 = theme.newThumbnail.border,
			LayoutOrder = self.props.LayoutOrder or 1,
			Image = BORDER,

			[Roact.Event.MouseEnter] = self.mouseEnter,
			[Roact.Event.MouseLeave] = self.mouseLeave,

			[Roact.Event.Activated] = self.props.OnClick,
		}, {
			Plus = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				ImageColor3 = theme.newThumbnail.plus,
				ImageTransparency = 0.4,
				Size = UDim2.new(1, 0, 1, 0),
				Image = PLUS,
				ZIndex = 2,
			})
		})
	end)
end

return NewThumbnail