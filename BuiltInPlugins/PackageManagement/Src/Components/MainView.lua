--[[
	The top level container of the Game Settings window.
	Contains the menu bar, and the currently selected page.

	Props:
		table MenuEntries = The entries to show on the left side menu
		int Selected = The index of the currently selected menu entry
		function SelectionChanged = A callback when the selected entry is changed
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)

local withTheme = require(Plugin.Src.ContextServices.Theming).withTheme

local MenuBar = require(Plugin.Src.Components.MenuBar)
local CurrentPage = require(Plugin.Src.Components.CurrentPage)

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

function MainView:render()
	return withTheme(function(theme)
		local Selected = self.state.Selected

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = theme.backgroundColor,
			Position = UDim2.new(0,0,0,0),
		}, {
			--Add MenuBar to the left side of the screen
			MenuBar = Roact.createElement(MenuBar, {
				Entries = self.props.MenuEntries,
				Selected = Selected,
				SelectionChanged = function(index)
					self:pageSelected(index)
				end,
			}),

			--Add the page we are currently on
			Page = Roact.createElement(CurrentPage, {}),
		})
	end)
end

return MainView