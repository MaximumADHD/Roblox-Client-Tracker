--[[
	Plugin Custom Policy Switch section

	Props:
		int LayoutOrder
			layout order of UIListLayout in Mainview

		boolean mainSwitchEnabled
			if emulation is enabled
		boolean customPolicySwitchEnabled
			if custom policy switch is enabled
		bool customPolicySwitchActive
			if custom policy switch is active
		function onCustomPolicyEnabledChanged
			on toggle custom policy enabled
]]
local PlayerEmulatorService = game:GetService("PlayerEmulatorService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ToggleItemModule = require(Plugin.Src.Components.ToggleItemModule)

local Constants = require(Plugin.Src.Util.Constants)
local OnCustomPolicyEnabledChanged = require(Plugin.Src.Actions.OnCustomPolicyEnabledChanged)
local OnCustomPolicySwitchEnabledChanged = require(Plugin.Src.Actions.OnCustomPolicySwitchEnabledChanged)

local function GetPlayerEmulatorServiceCustomPoliciesEnabledProperty()
	return PlayerEmulatorService.CustomPoliciesEnabled
end

local function SetPlayerEmulatorServiceCustomPoliciesEnabledProperty(isEnabled)
	PlayerEmulatorService.CustomPoliciesEnabled = isEnabled
end

local CustomPolicySwitchSection = Roact.PureComponent:extend("CustomPolicySwitchSection")

function CustomPolicySwitchSection:updateCustomPoliciesEnabled()
	local onCustomPolicyEnabledChanged = self.props.onCustomPolicyEnabledChanged
	onCustomPolicyEnabledChanged(GetPlayerEmulatorServiceCustomPoliciesEnabledProperty())
end

function CustomPolicySwitchSection:updateCustomPoliciesSwitchEnabled(enabled)
	local plugin = self.props.Plugin:get()
	plugin:SetSetting(Constants.CUSTOM_POLICIES_SWITCH_KEY, enabled)
	local onCustomPolicySwitchEnabledChanged = self.props.onCustomPolicySwitchEnabledChanged
	onCustomPolicySwitchEnabledChanged(enabled)
end

function CustomPolicySwitchSection:init()
	self.signalTokens = {}
end

function CustomPolicySwitchSection:didMount()
	local enabledChangedSignal = PlayerEmulatorService:GetPropertyChangedSignal("CustomPoliciesEnabled"):Connect(function()
		self:updateCustomPoliciesEnabled()
	end)
	table.insert(self.signalTokens, enabledChangedSignal)

	local plugin = self.props.Plugin:get()
	local cachedSetting = plugin:GetSetting(Constants.CUSTOM_POLICIES_SWITCH_KEY)
	if cachedSetting == true then
		self:updateCustomPoliciesSwitchEnabled(cachedSetting)
	end
	
	self:updateCustomPoliciesEnabled()
end

function CustomPolicySwitchSection:willUnmount()
	for _, signal in pairs(self.signalTokens) do
		signal:Disconnect()
	end
	self.signalTokens = nil
end

function CustomPolicySwitchSection:render()
	local props = self.props
	local theme = props.Stylizer
	local localization = props.Localization
	local layoutOrder = props.LayoutOrder
	local isOn = props.customPolicySwitchEnabled
	local mainSwitchEnabled = props.mainSwitchEnabled
	local customPolicySwitchActive = props.customPolicySwitchActive
	
	if not customPolicySwitchActive then
		SetPlayerEmulatorServiceCustomPoliciesEnabledProperty(true)
		return nil
	end
	
	SetPlayerEmulatorServiceCustomPoliciesEnabledProperty(isOn)
	
	return Roact.createElement("Frame", {
		Size = theme.TOGGLE_ITEM_FRAME_SIZE,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Toggle = Roact.createElement(ToggleItemModule, {
			Key = localization:getText("CustomPolicySwitchSection", "LabelText"),
			IsOn = isOn,
			Enabled = mainSwitchEnabled,
			ToggleCallback = function(key, value, plugin) self:updateCustomPoliciesSwitchEnabled(value) end,
		}),
	})
end

CustomPolicySwitchSection = withContext({
	Plugin = ContextServices.Plugin,
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(CustomPolicySwitchSection)

local function mapStateToProps(state, _)
	return {
		mainSwitchEnabled = state.MainSwitch.mainSwitchEnabled,
		customPolicySwitchEnabled = state.CustomPolicySwitch.customPolicySwitchEnabled,
		customPolicySwitchActive = state.CustomPolicySwitch.customPolicySwitchActive
	}
end

local function mapDispatchToProps(dispatch)
	return {
		onCustomPolicyEnabledChanged = function(enabled)
			dispatch(OnCustomPolicyEnabledChanged(enabled))
		end,
		onCustomPolicySwitchEnabledChanged = function(enabled)
			dispatch(OnCustomPolicySwitchEnabledChanged(enabled))
		end
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(CustomPolicySwitchSection)