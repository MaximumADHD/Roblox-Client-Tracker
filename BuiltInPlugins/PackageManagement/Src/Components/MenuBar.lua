--[[
	Menu bar that accepts any number of MenuEntries.

	Props:
		table Entries: A table of entries to include in this MenuBar
		function SelectionChanged: Callback when the selected menu entry changes
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local withLocalization = UILibrary.Localizing.withLocalization

local Constants = require(Plugin.Src.Util.Constants)

local withTheme = require(Plugin.Src.ContextServices.Theming).withTheme

local MenuEntry = require(Plugin.Src.Components.MenuEntry)

local function MenuBar(props)
	return withTheme(function(theme)
		return withLocalization(function(localization)
			local menuEntries = {
				Layout = Roact.createElement("UIListLayout", {
					Padding = UDim.new(0, 1),
				})
			}

			for i, entry in ipairs(props.Entries) do
				table.insert(menuEntries, Roact.createElement(MenuEntry, {
					Title = entry.Name,
					Selected = (props.Selected == i),
					Index = i,

					OnClicked = function()
						props.SelectionChanged(i)
					end,
				}))
			end
	
			return Roact.createElement("Frame", {
				Size = UDim2.new(0, Constants.MENU_BAR_WIDTH, 1, 0),
				BackgroundColor3 = theme.MenuBar.BackgroundColor,
				BorderSizePixel = 1,
				BorderColor3 = Color3.new(),
			}, menuEntries)
		end)
	end)
end

return MenuBar
