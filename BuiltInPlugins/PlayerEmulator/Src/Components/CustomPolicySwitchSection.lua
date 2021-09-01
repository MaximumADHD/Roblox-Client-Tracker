--[[
	Plugin Custom Policy Switch section

	Props:
		int LayoutOrder
			layout order of UIListLayout in Mainview

		boolean mainSwitchEnabled
			if emulation is enabled
		boolean customPolicySwitchEnabled
			if custom policy switch is enabled
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

local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local function GetPlayerEmulatorServiceCustomPoliciesEnabledProperty()
	return PlayerEmulatorService.CustomPoliciesEnabled
end

local function SetPlayerEmulatorServiceCustomPoliciesEnabledProperty(isEnabled)
	PlayerEmulatorService.CustomPoliciesEnabled = isEnabled
end

local CustomPolicySwitchSection = Roact.PureComponent:extend("CustomPolicySwitchSection")

function CustomPolicySwitchSection:initEnabledStatus()
	local plugin = self.props.Plugin:get()
	local cachedSetting = plugin:GetSetting(Constants.CUSTOM_POLICIES_KEY)
	if cachedSetting == true then
		SetPlayerEmulatorServiceCustomPoliciesEnabledProperty(true)
	end
end

function CustomPolicySwitchSection:updateCustomPoliciesEnabled(enabled)
	local plugin = self.props.Plugin:get()
	plugin:SetSetting(Constants.CUSTOM_POLICIES_KEY, enabled)

	local onCustomPolicyEnabledChanged = self.props.onCustomPolicyEnabledChanged
	onCustomPolicyEnabledChanged(enabled)
end

function CustomPolicySwitchSection:init()
	self.signalTokens = {}
end

function CustomPolicySwitchSection:didMount()
	local enabledChangedSignal = PlayerEmulatorService:GetPropertyChangedSignal("CustomPoliciesEnabled"):Connect(function()
		self:updateCustomPoliciesEnabled(GetPlayerEmulatorServiceCustomPoliciesEnabledProperty())
	end)
	table.insert(self.signalTokens, enabledChangedSignal)

	self:initEnabledStatus()
end

function CustomPolicySwitchSection:willUnmount()
	for _, signal in pairs(self.signalTokens) do
		signal:Disconnect()
	end
	self.signalTokens = nil
end

function CustomPolicySwitchSection:render()
	local props = self.props
	local theme
	if THEME_REFACTOR then
		theme = props.Stylizer
	else
		theme = props.Theme:get("Plugin")
	end
	local localization = props.Localization
	local layoutOrder = props.LayoutOrder
	local isOn = props.customPolicySwitchEnabled
	local mainSwitchEnabled = props.mainSwitchEnabled
	
	return Roact.createElement("Frame", {
		Size = theme.TOGGLE_ITEM_FRAME_SIZE,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Toggle = Roact.createElement(ToggleItemModule, {
			Key = localization:getText("CustomPolicySwitchSection", "LabelText"),
			IsOn = isOn,
			Enabled = mainSwitchEnabled,
			ToggleCallback = function(key, value, plugin) SetPlayerEmulatorServiceCustomPoliciesEnabledProperty(value) end,
		}),
	})
end

CustomPolicySwitchSection = withContext({
	Plugin = ContextServices.Plugin,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Localization = ContextServices.Localization,
})(CustomPolicySwitchSection)

local function mapStateToProps(state, _)
	return {
		mainSwitchEnabled = state.MainSwitch.mainSwitchEnabled,
		customPolicySwitchEnabled = state.CustomPolicySwitch.customPolicySwitchEnabled
	}
end

local function mapDispatchToProps(dispatch)
	return {
		onCustomPolicyEnabledChanged = function(enabled)
			dispatch(OnCustomPolicyEnabledChanged(enabled))
		end
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(CustomPolicySwitchSection)