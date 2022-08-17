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
local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local ContextButton = Roact.PureComponent:extend("ContextButton")

function ContextButton:init()
	self.state = {
		hovered = false,
	}

	self.mouseEnter = function()
		if self.props.Mouse then
			self.props.Mouse:__pushCursor("PointingHand")
			self:setState({
				hovered = true,
			})
		end
	end

	self.mouseLeave = function()
		if self.props.Mouse then
			self.props.Mouse:__popCursor()
			self:setState({
				hovered = false,
			})
		end
	end

	self.onActivated = function()
		if self.props.OnActivated then
			self.props.OnActivated()
		end
	end
end

function ContextButton:willUnmount()
	self.props.Mouse:__resetCursor()
end

function ContextButton:render()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
	local state = self.state
	local trackTheme = theme.trackTheme
	local anchorPoint = props.AnchorPoint
	local position = props.Position
	local zIndex = props.ZIndex
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
		ZIndex = zIndex,

		Image = trackTheme.contextMenu,
		ImageColor3 = imageColor,
		ScaleType = Enum.ScaleType.Fit,

		[Roact.Event.Activated] = self.onActivated,
		[Roact.Event.MouseEnter] = self.mouseEnter,
		[Roact.Event.MouseLeave] = self.mouseLeave,
	})
end

ContextButton = withContext({
	Stylizer = ContextServices.Stylizer,
	Mouse = ContextServices.Mouse,
})(ContextButton)

return ContextButton
