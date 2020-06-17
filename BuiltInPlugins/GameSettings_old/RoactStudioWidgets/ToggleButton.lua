--[[
	A button with an on and off state.

	Props:
		bool Enabled = Whether or not this button can be clicked.
		bool IsOn = whether the button should be on or off
		int LayoutOrder = The order this ToggleButton will sort to when placed in a UIListLayout
		Position = explicit position, if not placed in UIListLayout
		bool DarkStyle = light/dark style
		Mouse = plugin mouse for changing the mouse icon

		function OnClickedOn = The function that will be called when this button is clicked to turn on
		function OnClickedOff = The function that will be called when this button is clicked to turn off
]]

local FFlagFixToggleOffDarkName = game:DefineFastFlag("FixToggleOffDarkName", false) -- when this flag is deleted, see if `toggle_off _dark.png` can be deleted

local ON_LIGHT = "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png"
local OFF_LIGHT = "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png"
local DISABLED_LIGHT = "rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png"

local ON_DARK = "rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png"
local OFF_DARK = "rbxasset://textures/RoactStudioWidgets/" .. (FFlagFixToggleOffDarkName and "toggle_off_dark.png" or "toggle_off _dark.png") -- old version of png file had space in filename
local DISABLED_DARK = "rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png"

local WIDTH = 40
local HEIGHT = 24

local Roact = require(script.Parent.Internal.RequireRoact)
local Mouse = require(script.Parent.Internal.Mouse)
local ThemeChangeListener = require(script.Parent.Internal.ThemeChangeListener)
local Theme = require(script.Parent.Internal.Theme)

local selectImage = nil

local ToggleButton = Roact.PureComponent:extend("ToggleButton")

function ToggleButton:render()
	local function renderInternal()
		return Roact.createElement("ImageButton", {
			BackgroundTransparency = 1, -- Necessary to make the rounded background
			Image = selectImage(self),

			Position = self.props.Position,
			Size = self.props.Size or UDim2.new(0, WIDTH, 0, HEIGHT),

			LayoutOrder = self.props.LayoutOrder or 1,

			[Roact.Event.MouseEnter] = function() if self.props.Enabled then Mouse.onEnter(self.props.Mouse) end end,
			[Roact.Event.MouseLeave] = function() if self.props.Enabled then Mouse.onLeave(self.props.Mouse) end end,

			[Roact.Event.MouseButton1Click] = function()
				if self.props.IsOn then
					self.props.OnClickedOff()
				else
					self.props.OnClickedOn()
				end
			end,
		})
	end

	return Roact.createElement(ThemeChangeListener, {
		render = renderInternal,
	})
end

selectImage = function(self)
	local darkTheme = (function() if nil ~= self.DarkStyle then return self.DarkStyle else return Theme.isDarkerTheme() end end)()
	if self.props.Enabled then
		if self.props.IsOn then
			return darkTheme and ON_DARK or ON_LIGHT
		end
		return darkTheme and OFF_DARK or OFF_LIGHT
	end
	return darkTheme and DISABLED_DARK or DISABLED_LIGHT
end

return ToggleButton
