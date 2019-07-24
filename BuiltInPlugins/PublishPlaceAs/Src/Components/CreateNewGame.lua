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

local MenuBar = require(Plugin.Src.Components.Menu.MenuBar)
local Separator = require(Plugin.Src.Components.Separator)
local Footer = require(Plugin.Src.Components.Footer)

local CreateNewGame = Roact.PureComponent:extend("CreateNewGame")

function CreateNewGame:init()
	self.state = {
		selected = 1,
	}
end

function CreateNewGame:pageSelected(index)
	self:setState({
		selected = index,
	})
end

function CreateNewGame:render(props)
	return Theming.withTheme(function(theme)

		local onClose = self.props.OnClose
		local menuEntries = {
			{Name = "BasicInfo"},
			{Name = "Permissions"},
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
				Size = UDim2.new(0, 3, 1, 0),
				Position = UDim2.new(0, Constants.MENU_BAR_WIDTH, 0, 0),
			}),

			Footer = Roact.createElement(Footer, {
				OnClose = function(didSave, savePromise)
					onClose(didSave, savePromise)
				end,
				CancelActive = true
			}),

		})
	end)
end

return CreateNewGame
