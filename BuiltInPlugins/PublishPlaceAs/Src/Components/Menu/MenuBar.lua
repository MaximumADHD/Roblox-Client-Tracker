--[[
	Menu bar that accepts any number of MenuEntries.

	Props:
		table Entries: A table of entries to include in this MenuBar
		function selectionChanged: Callback when the selected menu entry changes
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Theming = require(Plugin.Src.ContextServices.Theming)
local UILibrary = require(Plugin.Packages.UILibrary)
local Localizing = UILibrary.Localizing

local MenuEntry = require(Plugin.Src.Components.Menu.MenuEntry)
local Constants = require(Plugin.Src.Resources.Constants)

local function MenuBar(props)
	local selected = props.Selected
	local selectionChanged = props.SelectionChanged
	local entries = props.Entries

	assert(type(entries) == "table", "MenuBar.Entries must be a table")

	return Theming.withTheme(function(theme)
		return Localizing.withLocalization(function(localization)
			local menuEntries = {
				Layout = Roact.createElement("UIListLayout", {
					Padding = UDim.new(0, 1),
				})
			}

			for i, entry in ipairs(entries) do
				table.insert(menuEntries, Roact.createElement(MenuEntry, {
					Title = localization:getText("MenuItem", entry.Name),
					Selected = (selected == i),
					Index = i,
					ShowError = false,
					ShowWarning = false,

					OnClicked = function()
						selectionChanged(i)
					end,
				}))
			end

			return Roact.createElement("Frame", {
				Size = UDim2.new(0, Constants.MENU_BAR_WIDTH, 1, 0),
				BackgroundColor3 = theme.menuBar.backgroundColor,
				BorderSizePixel = 0,
			}, menuEntries)
		end)
	end)
end

return MenuBar
