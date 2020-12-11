--[[
	Represents a context button with an ellipsis image.

	Props:
		UDim2 Position = The position of the button.
		Vector2 AnchorPoint = The pivot of the button's position.
		bool TrackSelected = Whether the track this button is on is selected.
			This shows a brighter button so it can be seen against the darker
			selection background color.

		function OnActivated = A callback for when the user clicks this button.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.SrcDeprecated.Util.Constants)

local Theme = require(Plugin.SrcDeprecated.Context.Theme)
local withTheme = Theme.withTheme

local Mouse = require(Plugin.SrcDeprecated.Context.Mouse)
local getMouse = Mouse.getMouse

local ContextButton = Roact.PureComponent:extend("ContextButton")

function ContextButton:init()
	self.state = {
		hovered = false,
	}

	self.mouseEnter = function()
		getMouse(self).pushCursor("PointingHand")
		self:setState({
			hovered = true,
		})
	end

	self.mouseLeave = function()
		getMouse(self).popCursor()
		self:setState({
			hovered = false,
		})
	end

	self.onActivated = function()
		getMouse(self).resetCursor()
		if self.props.OnActivated then
			self.props.OnActivated()
		end
	end
end

function ContextButton:willUnmount()
	getMouse(self).resetCursor()
end

function ContextButton:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state
		local trackTheme = theme.trackTheme
		local anchorPoint = props.AnchorPoint
		local position = props.Position
		local trackSelected = props.TrackSelected

		local hovered = state.hovered

		local imageColor
		if trackSelected then
			imageColor = trackTheme.selectedTextColor
		elseif hovered then
			imageColor = trackTheme.hoveredButtonColor
		else
			imageColor = trackTheme.buttonColor
		end

		return Roact.createElement("ImageButton", {
			Size = UDim2.new(0, Constants.TRACKLIST_BUTTON_SIZE, 0, Constants.TRACKLIST_BUTTON_SIZE),
			AnchorPoint = anchorPoint,
			Position = position,
			BackgroundTransparency = 1,

			Image = trackTheme.contextMenu,
			ImageColor3 = imageColor,
			ScaleType = Enum.ScaleType.Fit,

			[Roact.Event.Activated] = self.onActivated,
			[Roact.Event.MouseEnter] = self.mouseEnter,
			[Roact.Event.MouseLeave] = self.mouseLeave,
		})
	end)
end

return ContextButton