--[[
	Test Policy section

	Props:
		int LayoutOrder
			layout order of UIListLayout in Mainview

		table allPolicies
			all policies items need be rendered
		table policySettingStatus
			current policy setting status
		function loadAllPolicyItems
			send HTTP request for allPolicies and load policySettingStatus
		function updateToggleItem
			update setting of toggle item
		function updateListItem
			update setting of list item
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local NetworkingContext = require(Plugin.Src.ContextServices.NetworkingContext)
local UILibrary = require(Plugin.Packages.UILibrary)
local createFitToContent = UILibrary.Component.createFitToContent
local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
})

local GetPolicySettings = require(Plugin.Src.Networking.Requests.GetPolicySettings)
local UpdatePolicyBooleanItem = require(Plugin.Src.Actions.UpdatePolicyBooleanItem)
local UpdatePolicyListItem = require(Plugin.Src.Actions.UpdatePolicyListItem)
local ToggleItemModule = require(Plugin.Src.Components.ToggleItemModule)
local ListItemsModule = require(Plugin.Src.Components.ListItemsModule)

local PolicySection = Roact.PureComponent:extend("PolicySection")

function PolicySection:didMount()
	local networkingImpl = self.props.Networking:get()
	local plugin = self.props.Plugin:get()
	self.props.loadAllPolicyItems(networkingImpl, plugin)
end

function PolicySection:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder

	local allPolicies = props.allPolicies
	local allPolicySortedKeys = props.allPolicySortedKeys
	local policySettingStatus = props.policySettingStatus
	local updateToggleItem = props.updateToggleItem
	local updateListItem = props.updateListItem

	local toggleElements = {}
	local listItemElements = {}

	for _, key in ipairs(allPolicySortedKeys) do
		if type(allPolicies[key]) == "boolean" then
			local isOn = policySettingStatus[key]
			toggleElements["Toggle"..key] = Roact.createElement(ToggleItemModule, {
				Key = key,
				IsOn = isOn,
				ToggleCallback = updateToggleItem,
			})
		elseif type(allPolicies[key]) == "table" then
			listItemElements["List"..key] = Roact.createElement(ListItemsModule, {
				LabelText = key,
				Items = allPolicies[key],
				ListItemsCheckBoxCallback = updateListItem,
				ListStatus = policySettingStatus[key],
			})
		end
	end

	return Roact.createElement(FitToContent, {
		LayoutOrder = layoutOrder,
		BackgroundTransparency = 1,
	}, {
		ToggleElementsFrame = Roact.createElement(FitToContent, {
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}, toggleElements),

		ListElementsFrame = Roact.createElement(FitToContent, {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, listItemElements)
	})
end

ContextServices.mapToProps(PolicySection, {
	Networking = NetworkingContext,
	Plugin = ContextServices.Plugin,
})

local function mapStateToProps(state, _)
	return {
		allPolicies = state.Policies.allPolicies,
		allPolicySortedKeys = state.Policies.allPolicySortedKeys,
		policySettingStatus = state.Policies.policySettingStatus,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		loadAllPolicyItems = function(networkingImpl, plugin)
			dispatch(GetPolicySettings(networkingImpl, plugin))
		end,
		updateToggleItem = function(key, value, plugin)
			dispatch(UpdatePolicyBooleanItem(key, value, plugin))
		end,
		updateListItem = function(key, item, plugin)
			dispatch(UpdatePolicyListItem(key, item, plugin))
		end
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PolicySection)