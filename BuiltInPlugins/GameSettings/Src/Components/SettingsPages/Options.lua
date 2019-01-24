--[[
	Settings page for Http settings (formerly known as Security).
		- Http Enabled

	Settings:
		bool HttpEnabled - Whether the game is allowed to access external Http endpoints
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.createSettingsPage)

--Loads settings values into props by key
local function loadValuesToProps(getValue)
	return {
		HttpEnabled = getValue("HttpEnabled"),
	}
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue)
	return {
		HttpEnabledChanged = setValue("HttpEnabled")
	}
end

--Uses props to display current settings values
local function displayContents(page)
	local props = page.props
	return {
		Http = Roact.createElement(RadioButtonSet, {
			Title = "Allow HTTP Requests",
			Buttons = {{
					Id = true,
					Title = "On",
					Description = "Allow game server to issue requests to remote servers.",
				}, {
					Id = false,
					Title = "Off",
				},
			},
			Enabled = props.HttpEnabled ~= nil,
			LayoutOrder = 3,
			--Functionality
			Selected = props.HttpEnabled,
			SelectionChanged = function(button)
				props.HttpEnabledChanged(button.Id)
			end,
		}),
	}
end

local SettingsPage = createSettingsPage("Options", loadValuesToProps, dispatchChanges)

local function Options(props)
	return Roact.createElement(SettingsPage, {
		ContentHeightChanged = props.ContentHeightChanged,
		SetScrollbarEnabled = props.SetScrollbarEnabled,
		LayoutOrder = props.LayoutOrder,
		Content = displayContents,

		AddLayout = true,
	})
end

return Options