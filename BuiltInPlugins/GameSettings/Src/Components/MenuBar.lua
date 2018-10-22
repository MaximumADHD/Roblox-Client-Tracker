--[[
	Menu bar that accepts any number of MenuEntries.

	Props:
		table Entries: A table of entries to include in this MenuBar
		function SelectionChanged: Callback when the selected menu entry changes
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)

local withTheme = require(Plugin.Src.Consumers.withTheme)
local Constants = require(Plugin.Src.Util.Constants)
local MenuEntry = require(Plugin.Src.Components.MenuEntry)

local errorsFromPage = {
	["Basic Info"] = {
		name = true,
		description = true,
		playableDevices = true,
	}
}

local function MenuBar(props)
	return withTheme(function(theme)
		local menuEntries = {
			Layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 1),
			})
		}

		for i, entry in ipairs(props.Entries) do
			local errorHighlight = false
			if errorsFromPage[entry.Name] then
				for err in pairs(props.Errors) do
					if errorsFromPage[entry.Name][err] then
						errorHighlight = true
						break
					end
				end
			end

			table.insert(menuEntries, Roact.createElement(MenuEntry, {
				Title = entry.Name,
				Selected = (props.Selected == i),
				Index = i,
				Error = errorHighlight,

				OnClicked = function()
					props.SelectionChanged(i)
				end,
			}))
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, Constants.MENU_BAR_WIDTH, 1, 0),
			BackgroundColor3 = theme.menuBar.backgroundColor,
			BorderSizePixel = 0,
		}, menuEntries)
	end)
end

MenuBar = RoactRodux.connect(
	function(state, props)
		if not state then return end
		return {
			Errors = state.Settings.Errors,
		}
	end
)(MenuBar)

return MenuBar