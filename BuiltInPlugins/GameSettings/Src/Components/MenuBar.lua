--[[
	Menu bar that accepts any number of MenuEntries.

	Props:
		table Entries: A table of entries to include in this MenuBar
		function SelectionChanged: Callback when the selected menu entry changes
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local MenuEntry = require(Plugin.Src.Components.MenuEntry)

local MenuBar = Roact.PureComponent:extend("MenuBar")

local PERMISSIONS = "Permissions"
local AVATAR = "Avatar"
local BASIC_INFO = "BasicInfo"
local MONETIZATION = "Monetization"

local errorsFromPage = {
	[BASIC_INFO] = {
		name = true,
		description = true,
		playableDevices = true,
	},
	[AVATAR] = {
		universeAvatarAssetOverrides = true,
	},
}

local warningsFromPage = {
	[PERMISSIONS] = {
		isActive = true,
	},
	[AVATAR] = {
		universeAvatarType = true,
	}
}

-- Fix errors not being assigned to a page
errorsFromPage[BASIC_INFO].thumbnails = true
errorsFromPage[BASIC_INFO].gameIcon = true


if settings():GetFFlag("DeveloperSubscriptionsEnabled") then
	errorsFromPage[MONETIZATION] = {
		DeveloperSubscriptions = true
	}
end

function MenuBar:render()
	local props = self.props

	local theme = THEME_REFACTOR and props.Stylizer or props.Theme:get("Plugin")
	local localization = props.Localization

	local menuEntries = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 1),
		})
	}

	for i, entryId in ipairs(props.Entries) do
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


MenuBar = withContext({
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Localization = ContextServices.Localization,
})(MenuBar)



return RoactRodux.connect(
	function(state, props)
		if not state then return end
		return {
			Errors = state.Settings.Errors,
			Warnings = state.Settings.Warnings,
		}
	end
)(MenuBar)
