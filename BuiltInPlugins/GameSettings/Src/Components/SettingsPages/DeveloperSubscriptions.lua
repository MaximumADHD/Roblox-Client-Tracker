local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local DeepMergeTables = require(Plugin.Src.Util.DeepMergeTables)

local AddTableChange = require(Plugin.Src.Actions.AddTableChange)
local AddTableKeyChange = require(Plugin.Src.Actions.AddTableKeyChange)
local AddTableKeyErrors = require(Plugin.Src.Actions.AddTableKeyErrors)
local DiscardTableChanges = require(Plugin.Src.Actions.DiscardTableChanges)
local DiscardTableKeyErrors = require(Plugin.Src.Actions.DiscardTableKeyErrors)

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.DEPRECATED_createSettingsPage)

local DeveloperSubscriptionsFolder = Plugin.Src.Components.DeveloperSubscriptions
local DeveloperSubscriptionWidget = require(DeveloperSubscriptionsFolder.DeveloperSubscriptionWidget)
local DevSubModeration = require(Plugin.Src.Thunks.DevSubModeration)

local FVariableMaxRobuxPrice = game:GetFastInt("DeveloperSubscriptionsMaxRobuxPrice")

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	local errors = state.Settings.Errors

	local currDevSubs = state.Settings.Current or {}
	currDevSubs = currDevSubs.DeveloperSubscriptions or {}

	local changedDevSubs = state.Settings.Changed or {}
	changedDevSubs = changedDevSubs.DeveloperSubscriptions or {}

	return {
		DeveloperSubscriptions = DeepMergeTables.Merge(currDevSubs, changedDevSubs) or {},
		ModeratedDevSubs = state.DevSubModeration or {},
		DevSubsErrors = errors.DeveloperSubscriptions or {},
	}
end
 
local function checkChangedDevSubKey(dispatch, devSubKey, valueKey, value)
	if valueKey == "Name" and (value == "" or value == nil) then
		dispatch(AddTableKeyErrors("DeveloperSubscriptions", devSubKey, valueKey, {Empty = "Name can't be empty"}))
	elseif valueKey == "Description" then
		-- If they modify the description, remove any moderation errors because name and description are moderated
		-- If you use this in checkChangedDevSub, the order matters which feels weird...
		dispatch(DiscardTableKeyErrors("DeveloperSubscriptions", devSubKey, "Name", "Moderated"))
	elseif valueKey == "Price" then
		local price = tonumber(value)
		if not price or price <= 0  then
			dispatch(AddTableKeyErrors("DeveloperSubscriptions", devSubKey, valueKey, {NotANumber = "Price needs to be a valid number"}))
		elseif FVariableMaxRobuxPrice and price > FVariableMaxRobuxPrice then
			dispatch(AddTableKeyErrors("DeveloperSubscriptions", devSubKey, valueKey, {AboveMaxRobuxAmount = "Price must be less than a certain amount"}))
		end
	elseif valueKey == "Image" and (value == nil or value == "None") then
		dispatch(AddTableKeyErrors("DeveloperSubscriptions", devSubKey, valueKey, {Empty = "Image can't be empty"}))
	end
end

local function checkChangedDevSub(dispatch, devSub)
	checkChangedDevSubKey(dispatch, devSub.Key, "Name", devSub.Name)
	checkChangedDevSubKey(dispatch, devSub.Key, "Image", devSub.Image)
	checkChangedDevSubKey(dispatch, devSub.Key, "Price", devSub.Image)
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	return {
		OnDeveloperSubscriptionValueChanged = function(devSubKey, valueKey, value)
			dispatch(AddTableKeyChange("DeveloperSubscriptions", devSubKey, valueKey, value))
			checkChangedDevSubKey(dispatch, devSubKey, valueKey, value)
		end,
		OnDeveloperSubscriptionChanged = function(devSub)
			dispatch(AddTableChange("DeveloperSubscriptions", devSub.Key, devSub))
			checkChangedDevSub(dispatch, devSub)
		end,
		OnDevSubDiscontinued = function(devSub)
			-- You can not change a developer subsciption that is discontinued
			dispatch(DiscardTableChanges("DeveloperSubscriptions", devSub.Key))
            if not devSub.IsNew then
                dispatch(AddTableKeyChange("DeveloperSubscriptions", devSub.Key, "Active", false))
            end
        end,
		ModerateDevSub = function(devSub)
			dispatch(DevSubModeration(devSub))
		end,
	}
end

--Uses props to display current settings values
local function displayContents(page, localized)
	local props = page.props
	local developerSubscriptions = props.DeveloperSubscriptions or {}
	local moderatedDevSubs = props.ModeratedDevSubs or {}
	local devSubsErrors = props.DevSubsErrors or {}
	
	return {
		Roact.createElement(DeveloperSubscriptionWidget, {
			DeveloperSubscriptions = developerSubscriptions,
			ModeratedDevSubs = moderatedDevSubs,
			DevSubsErrors = devSubsErrors,

			OnDeveloperSubscriptionChanged = props.OnDeveloperSubscriptionChanged,
			OnDeveloperSubscriptionValueChanged = props.OnDeveloperSubscriptionValueChanged,
			OnDevSubDiscontinued = props.OnDevSubDiscontinued,
			ModerateDevSub = props.ModerateDevSub,
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