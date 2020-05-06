--[[
	Menu bar that accepts any number of MenuEntries.

	Props:
		table Entries: A table of entries to include in this MenuBar
		function SelectionChanged: Callback when the selected menu entry changes
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)

local ContextServices = require(Plugin.Framework.ContextServices)

local withTheme = require(Plugin.Src.Consumers.withTheme)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local MenuEntry = require(Plugin.Src.Components.MenuEntry)

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local MenuBar = Roact.PureComponent:extend("MenuBar")

local errorsFromPage, warningsFromPage
if FFlagStudioConvertGameSettingsToDevFramework then
	errorsFromPage = {
		["BasicInfo"] = {
			name = true,
			description = true,
			playableDevices = true,
		},
		["Avatar"] = {
			universeAvatarAssetOverrides = true,
		},
	}

	warningsFromPage = {
		["AccessPermissions"] = {
			isActive = true,
		},
		["Avatar"] = {
			universeAvatarType = true,
		}
	}

	-- Fix errors not being assigned to a page
	errorsFromPage["BasicInfo"].thumbnails = true
	errorsFromPage["BasicInfo"].gameIcon = true
else
	errorsFromPage = {
		["Basic Info"] = {
			name = true,
			description = true,
			playableDevices = true,
		},
		["Avatar"] = {
			universeAvatarAssetOverrides = true,
		},
	}

	warningsFromPage = {
		["Access Permissions"] = {
			isActive = true,
		},
		["Avatar"] = {
			universeAvatarType = true,
		}
	}

	-- Fix errors not being assigned to a page
	errorsFromPage["Basic Info"].thumbnails = true
	errorsFromPage["Basic Info"].gameIcon = true
end

if settings():GetFFlag("DeveloperSubscriptionsEnabled") then
	errorsFromPage["Developer Subscriptions"] = {
		DeveloperSubscriptions = true
	}
end

function MenuBar:DEPRECATED_render()
	local props = self.props
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
				Size = UDim2.new(0, DEPRECATED_Constants.MENU_BAR_WIDTH, 1, 0),
				BackgroundColor3 = theme.menuBar.backgroundColor,
				BorderSizePixel = 0,
			}, menuEntries)
		end)
	end)
end

function MenuBar:render()
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render()
	end

	local props = self.props

	local theme = props.Theme:get("Plugin")
	local localization = props.Localization

	local menuEntries = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 1),
		})
	}

	for i, entry in ipairs(props.Entries) do
		-- TODO (awarwick) 4/27/2020 Rename entry to entryId when FFlagGameSettingsNetworkRefactor is removed
		local entryId = game:GetFastFlag("GameSettingsNetworkRefactor") and entry or entry.Name

		local errorHighlight = false
		if errorsFromPage[entryId] then
			for err in pairs(props.Errors) do
				if errorsFromPage[entryId][err] then
					errorHighlight = true
					break
				end
			end
		end

		local warningHighlight = false
		if warningsFromPage[entryId] then
			for _, warning in ipairs(props.Warnings) do
				if warningsFromPage[entryId][warning] then
					warningHighlight = true
					break
				end
			end
		end

		table.insert(menuEntries, Roact.createElement(MenuEntry, {
			Title = localization:getText("General", "Category"..entryId),
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
		Size = UDim2.new(0, DEPRECATED_Constants.MENU_BAR_WIDTH, 1, 0),
		BackgroundColor3 = theme.menuBar.backgroundColor,
		BorderSizePixel = 0,
	}, menuEntries)
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(MenuBar,{
		Theme = ContextServices.Theme,
		Localization = ContextServices.Localization,
	})
end

return RoactRodux.connect(
	function(state, props)
		if not state then return end
		return {
			Errors = state.Settings.Errors,
			Warnings = state.Settings.Warnings,
		}
	end
)(MenuBar)