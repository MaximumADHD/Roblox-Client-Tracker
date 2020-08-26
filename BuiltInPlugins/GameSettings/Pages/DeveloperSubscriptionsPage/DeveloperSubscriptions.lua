local Page = script.Parent
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local DeepMergeTables = require(Plugin.Src.Util.DeepMergeTables)

local AddTableChange = require(Plugin.Src.Actions.AddTableChange)
local AddChange = require(Plugin.Src.Actions.AddChange)
local AddTableKeyChange = require(Plugin.Src.Actions.AddTableKeyChange)
local AddTableKeyErrors = require(Plugin.Src.Actions.AddTableKeyErrors)
local DiscardTableChanges = require(Plugin.Src.Actions.DiscardTableChanges)
local DiscardTableKeyErrors = require(Plugin.Src.Actions.DiscardTableKeyErrors)

local ContextServices = require(Plugin.Framework.ContextServices)

local SettingsPage = require(Plugin.Src.Components.SettingsPages.SettingsPage)

local DeveloperSubscriptionWidget = require(Page.Components.DeveloperSubscriptionWidget)
local DevSubModeration = require(Page.Thunks.DevSubModeration)

local FVariableMaxRobuxPrice = game:GetFastInt("DeveloperSubscriptionsMaxRobuxPrice")

local DeveloperSubscriptions = Roact.PureComponent:extend(script.Name)

local LOCALIZATION_ID = "DeveloperSubscriptions"

local function loadSettings(store, contextItems)
	local state = store:getState()
	local gameId = state.Metadata.gameId
	local devSubsController = contextItems.developerSubscriptionsController

	return {
		function(loadedSettings)
			local openDevSubs = devSubsController:getDevSubs(gameId, true)
			local closedDevSubs = devSubsController:getDevSubs(gameId, false)
			local allDevSubs = DeepMergeTables.Merge(openDevSubs, closedDevSubs) or {}

			loadedSettings["DeveloperSubscriptions"] = allDevSubs
		end,
	}
end

local function saveSettings(store, contextItems)
	local state = store:getState()
	local gameId = state.Metadata.gameId
	local devSubsController = contextItems.developerSubscriptionsController

	local saveFunctions = {}
	local currDevSubs = state.Settings.Current.DeveloperSubscriptions
	local changedDevSubs = state.Settings.Changed.DeveloperSubscriptions or {}
	for key, devSub in pairs(changedDevSubs) do
		if devSub.IsNew then
			table.insert(saveFunctions, function()
				devSubsController:createDevSub(gameId, devSub)
			end)
		else
			if devSub.Active == false then
				table.insert(saveFunctions, function()
					devSubsController:discontinueDevSub(currDevSubs[key])
				end)
			else
				table.insert(saveFunctions, function()
					devSubsController:changeDevSub(currDevSubs[key], devSub)
				end)
			end
		end
	end

	return saveFunctions
end

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
local function displayContents(props)
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

function DeveloperSubscriptions:render()
	local props = self.props
	local localization = props.Localization

	local createChildren = function()
		return displayContents(props)
	end

	return Roact.createElement(SettingsPage, {
		SettingsLoadJobs = loadSettings,
		SettingsSaveJobs = saveSettings,
		Title = localization:getText("General", "Category"..LOCALIZATION_ID),
		PageId = script.Name,
		CreateChildren = createChildren,
	})
end

ContextServices.mapToProps(DeveloperSubscriptions, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

local settingFromState = require(Plugin.Src.Networking.settingFromState)
DeveloperSubscriptions = RoactRodux.connect(
	function(state, props)
		if not state then return end

		local getValue = function(propName)
			return settingFromState(state.Settings, propName)
		end

		return loadValuesToProps(getValue, state)
	end,

	function(dispatch)
		local setValue = function(propName)
			return function(value)
				dispatch(AddChange(propName, value))
			end
		end

		return dispatchChanges(setValue, dispatch)
	end
)(DeveloperSubscriptions)

DeveloperSubscriptions.LocalizationId = LOCALIZATION_ID

return DeveloperSubscriptions