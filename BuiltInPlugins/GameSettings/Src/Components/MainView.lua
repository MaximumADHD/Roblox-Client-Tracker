--[[
	The top level container of the Game Settings window.
	Contains the menu bar, the footer, and the currently selected page.

	Props:
		table MenuEntries = The entries to show on the left side menu
		int Selected = The index of the currently selected menu entry
		function SelectionChanged = A callback when the selected entry is changed
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local MenuBar = require(Plugin.Src.Components.MenuBar)
local CurrentPage = require(Plugin.Src.Components.CurrentPage)
local Separator = require(Plugin.Src.Components.Separator)
local Footer = require(Plugin.Src.Components.Footer)

local MainView = Roact.PureComponent:extend("MainView")

function MainView:init()
	self.state = {
		Selected = 1,
	}
end

function MainView:pageSelected(index)
	self:setState({
		Selected = index,
	})
end

function MainView:render(props)
	return withTheme(function(theme)
		local Selected = self.state.Selected

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = theme.backgroundColor,
		}, {
			--Add padding to main frame
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 5),
			}),
			--Add MenuBar to the left side of the screen
			MenuBar = Roact.createElement(MenuBar, {
				Entries = self.props.MenuEntries,
				Selected = Selected,
				SelectionChanged = function(index)
					self:pageSelected(index)
				end,
			}),

			Separator = Roact.createElement(Separator, {
				Size = UDim2.new(0, 3, 1, 0),
				Position = UDim2.new(0, Constants.MENU_BAR_WIDTH, 0, 0),
			}),

			--Add the page we are currently on
			Page = Roact.createElement(CurrentPage, {
				Page = self.props.MenuEntries[Selected].Name,
			}),

			--Add footer for cancel and save buttons
			Footer = Roact.createElement(Footer, {
				OnClose = function(didSave, savePromise)
					self.props.OnClose(didSave, savePromise)
				end,
			})
		})
	end)
end

return MainView