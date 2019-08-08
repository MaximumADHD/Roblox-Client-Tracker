--[[

	Component for setting the details of the place we are publishing.
	Allows the user to switch to overwriting an existing place

	Props:
		function OnClose - closure to run to close the QWidget dialog
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Theming = require(Plugin.Src.ContextServices.Theming)
local Constants = require(Plugin.Src.Resources.Constants)
local UILibrary = require(Plugin.Packages.UILibrary)
local Separator = UILibrary.Component.Separator

local MenuBar = require(Plugin.Src.Components.Menu.MenuBar)
local Footer = require(Plugin.Src.Components.Footer)
local BasicInfo = require(Plugin.Src.Components.BasicInfo)

local ScreenCreateNewGame = Roact.PureComponent:extend("ScreenCreateNewGame")

function ScreenCreateNewGame:init()
	self.state = {
		selected = 1,
	}
end

function ScreenCreateNewGame:pageSelected(index)
	self:setState({
		selected = index,
	})
end

function ScreenCreateNewGame:render(props)
	return Theming.withTheme(function(theme)

		local onClose = self.props.OnClose
		local menuEntries = {
			{Name = "BasicInfo"},
		}

		local selected = self.state.selected

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = theme.backgroundColor,
		}, {

			MenuBar = Roact.createElement(MenuBar, {
				Entries = menuEntries,
				Selected = selected,
				SelectionChanged = function(index)
					self:pageSelected(index)
				end,
			}),

			Separator = Roact.createElement(Separator, {
				Weight = 3,
				Position = UDim2.new(0, Constants.MENU_BAR_WIDTH, 0.5, 0),
				DominantAxis = Enum.DominantAxis.Height,
			}),

			Page = Roact.createElement(BasicInfo, {
				PageName = menuEntries[selected].Name,
			}),

			Footer = Roact.createElement(Footer, {
				OnClose = onClose,
				CancelActive = true,
				NextScreen = Constants.SCREENS.CHOOSE_GAME,
				NextScreenText = "UpdateExistingGame"
			}),

		})
	end)
end

return ScreenCreateNewGame
