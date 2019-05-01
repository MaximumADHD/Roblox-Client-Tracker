local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.createSettingsPage)

local DeveloperSubscriptionsFolder = Plugin.Src.Components.DeveloperSubscriptions
local DeveloperSubscriptionWidget = require(DeveloperSubscriptionsFolder.DeveloperSubscriptionWidget)

--Loads settings values into props by key
local function loadValuesToProps(getValue)
	return {
		DeveloperSubscriptions = getValue("DeveloperSubscriptions"),
	}
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue)
	return {
		OnDeveloperSubscriptionsChanged = setValue("DeveloperSubscriptions"),
	}
end

--Uses props to display current settings values
local function displayContents(page, localized)
	local props = page.props
	local developerSubscriptions = props.DeveloperSubscriptions

	return {
		Roact.createElement(DeveloperSubscriptionWidget, {
			DeveloperSubscriptions = developerSubscriptions,
			OnDeveloperSubscriptionsChanged = props.OnDeveloperSubscriptionsChanged,
		})
	}
end

local SettingsPage = createSettingsPage("Developer Subscriptions", loadValuesToProps, dispatchChanges)

local function DeveloperSubscriptions(props)
	return Roact.createElement(SettingsPage, {
		ContentHeightChanged = props.ContentHeightChanged,
		SetScrollbarEnabled = props.SetScrollbarEnabled,
		LayoutOrder = props.LayoutOrder,
		Content = displayContents,

		AddLayout = true,
	})
end

return DeveloperSubscriptions