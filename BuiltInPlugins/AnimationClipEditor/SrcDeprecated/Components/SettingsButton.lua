--[[
	A settings button which displays on the top right of the editor.
	Displays a menu when the user clicks on the button.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.SrcDeprecated.Util.Constants)

local Theme = require(Plugin.SrcDeprecated.Context.Theme)
local withTheme = Theme.withTheme

local Mouse = require(Plugin.SrcDeprecated.Context.Mouse)
local getMouse = Mouse.getMouse

local SettingsMenu = require(Plugin.SrcDeprecated.Components.SettingsMenu)

local SettingsButton = Roact.PureComponent:extend("SettingsButton")

function SettingsButton:init()
	self.state = {
		showMenu = false,
	}

	self.showMenu = function()
		self:setState({
			showMenu = true,
		})
	end

	self.hideMenu = function()
		self:setState({
			showMenu = false,
		})
	end

	self.mouseEnter = function()
		getMouse(self).pushCursor("PointingHand")
	end

	self.mouseLeave = function()
		getMouse(self).popCursor()
	end
end

function SettingsButton:willUnmount()
	getMouse(self).resetCursor()
end

function SettingsButton:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		local onChangeFPS = props.OnChangeFPS

		return Roact.createElement("ImageButton", {
			BackgroundColor3 = theme.backgroundColor,
			BorderColor3 = theme.borderColor,
			Size = UDim2.new(0, Constants.SCROLL_BAR_SIZE, 0, Constants.TIMELINE_HEIGHT),
			Image = theme.settingsButtonTheme.image,
			ScaleType = Enum.ScaleType.Fit,
			ImageColor3 = theme.settingsButtonTheme.imageColor,
			AutoButtonColor = false,

			[Roact.Event.Activated] = self.showMenu,
			[Roact.Event.MouseEnter] = self.mouseEnter,
			[Roact.Event.MouseLeave] = self.mouseLeave,
		}, {
			SettingsMenu = Roact.createElement(SettingsMenu, {
				ShowMenu = state.showMenu,
				OnMenuOpened = self.hideMenu,
				OnChangeFPS = onChangeFPS,
			}),
		})
	end)
end

return SettingsButton