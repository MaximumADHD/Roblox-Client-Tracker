--[[
	Settings page for Localization settings
		- Autoscraping on/off

	Settings:
		bool Autoscraping - Whether the game tells all its clients to
			scrape strings for the purpose of auto-localization and upload
			all the results to RCC.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.createSettingsPage)

--Loads settings values into props by key
local function loadValuesToProps(getValue)
	return {
		AutoscrapingOn = getValue("autoscrapingOn"),
	}
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	return {
		AutoscrapingOnChanged = setValue("autoscrapingOn"),
	}
end

--Uses props to display current settings values
local function displayContents(page)
	local props = page.props
	return {
		Autoscraping = Roact.createElement(RadioButtonSet, {
			Title = "Autoscraping",
			Buttons = {{
					Id = true,
					Title = "On",
					Description = "Readies your game for localization by automatically scraping all text.",
				}, {
					Id = false,
					Title = "Off",
				},
			},
			Enabled = props.AutoscrapingOn ~= nil,
			LayoutOrder = 3,
			--Functionality
			Selected = props.AutoscrapingOn,
			SelectionChanged = function(button)
				props.AutoscrapingOnChanged(button.Id)
			end,
		}),
	}
end

local SettingsPage = createSettingsPage("Localization", loadValuesToProps, dispatchChanges)

local function Localization(props)
	return Roact.createElement(SettingsPage, {
		ContentHeightChanged = props.ContentHeightChanged,
		SetScrollbarEnabled = props.SetScrollbarEnabled,
		LayoutOrder = props.LayoutOrder,
		Content = displayContents,

		AddLayout = true,
	})
end

return Localization
