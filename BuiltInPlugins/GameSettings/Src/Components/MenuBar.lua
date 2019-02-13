--[[
	Menu bar that accepts any number of MenuEntries.

	Props:
		table Entries: A table of entries to include in this MenuBar
		function SelectionChanged: Callback when the selected menu entry changes
]]
local FFlagGameSettingsImageUploadingEnabled = settings():GetFFlag("GameSettingsImageUploadingEnabled")
local FFlagGameSettingsEnforceMaxThumbnails = settings():GetFFlag("GameSettingsEnforceMaxThumbnails")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)

local withTheme = require(Plugin.Src.Consumers.withTheme)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)
local Constants = require(Plugin.Src.Util.Constants)
local MenuEntry = require(Plugin.Src.Components.MenuEntry)

local fastFlags = require(Plugin.Src.Util.FastFlags)

local errorsFromPage = {
	["Basic Info"] = {
		name = true,
		description = true,
		playableDevices = true,
	},
	["Avatar"] = fastFlags.isMorphingPanelWidgetsStandardizationOn() and {
		universeAvatarAssetOverrides = true,
	} or nil
}

local warningsFromPage = {
	["Basic Info"] = {
		isActive = true,
	},
	["Avatar"] = {
		universeAvatarType = true,
	}
}

if FFlagGameSettingsEnforceMaxThumbnails then
	-- Fix errors not being assigned to a page
	errorsFromPage["Basic Info"].thumbnails = true
	errorsFromPage["Basic Info"].gameIcon = true
elseif FFlagGameSettingsImageUploadingEnabled then
	errorsFromPage.thumbnails = true
	errorsFromPage.gameIcon = true
end

local function MenuBar(props)
	return withLocalization(function(localized)
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

				local warningHighlight = false
				if warningsFromPage[entry.Name] then
					for _, warning in ipairs(props.Warnings) do
						if warningsFromPage[entry.Name][warning] then
							warningHighlight = true
							break
						end
					end
				end

				table.insert(menuEntries, Roact.createElement(MenuEntry, {
					Title = localized.Category[entry.Name],
					Selected = (props.Selected == i),
					Index = i,
					Error = errorHighlight,
					Warning = warningHighlight,

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
	end)
end

MenuBar = RoactRodux.connect(
	function(state, props)
		if not state then return end
		return {
			Errors = state.Settings.Errors,
			Warnings = state.Settings.Warnings,
		}
	end
)(MenuBar)

return MenuBar