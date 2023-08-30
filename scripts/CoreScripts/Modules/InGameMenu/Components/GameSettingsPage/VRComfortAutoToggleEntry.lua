local CorePackages = game:GetService("CorePackages")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent

local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)

local ToggleEntry = require(script.Parent.ToggleEntry)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local VRComfortSettingChanged = UserGameSettings:GetPropertyChangedSignal("VRComfortSetting")

local VRComfortAutoToggleEntry = Roact.PureComponent:extend("VRComfortAutoToggleEntry")
VRComfortAutoToggleEntry.validateProps = t.strictInterface({
	-- The UserGameSettings entry to use for modifying the custom version of this value.
	-- When UserGameSettings.VRComfortSetting is set to "Custom", this value can be set.
	-- Otherwise, the toggle will be disabled.
	customValueKey = t.string,

	-- The UserGameSettings entry to use for displaying the current state of the toggle.
	-- We only read from this.
	derivedValueKey = t.string,

	-- The text to show
	labelKey = t.string,

	-- The order to render with respect to siblings
	LayoutOrder = t.integer,

	-- When true, the toggle shows the "On" position when the underlying value in UserGameSettings is true.
	-- When false, the toggle's state is reversed and shows the "On" position when  the underlying value in UserGameSettings is false.
	checkedValue = t.optional(t.any),
})

VRComfortAutoToggleEntry.defaultProps = {
	checkedValue = true,
}

function VRComfortAutoToggleEntry:init(props)
	self.derivedValueChangeEvent = UserGameSettings:GetPropertyChangedSignal(props.derivedValueKey)

	self:setState({
		checked = UserGameSettings[props.derivedValueKey] == props.checkedValue,
		vrComfortSetting = UserGameSettings.VRComfortSetting,
	})

	self.onExternalChange = function()
		local newValue = UserGameSettings[props.derivedValueKey]
		self:setState({
			checked = newValue == props.checkedValue
		})
	end

	self.onToggled = function()
		if self.state.vrComfortSetting == Enum.VRComfortSetting.Custom then
			local isOn = UserGameSettings[props.customValueKey] == props.checkedValue
			if isOn then
				UserGameSettings[props.customValueKey] = not props.checkedValue
			else
				UserGameSettings[props.customValueKey] = props.checkedValue
			end		
			SendAnalytics(Constants.AnalyticsSettingsChangeName, nil, {}, true)
		end
	end
end

function VRComfortAutoToggleEntry:render()
	local props = self.props

	return Roact.createFragment({
		Toggle = Roact.createElement(ToggleEntry, {
			checked = self.state.checked,
			labelKey = props.labelKey,
			LayoutOrder = props.LayoutOrder,
			onToggled = self.onToggled,
			isDisabled = (self.state.vrComfortSetting ~= Enum.VRComfortSetting.Custom),
		}),

		DerivedValueListener = Roact.createElement(ExternalEventConnection, {
			event = self.derivedValueChangeEvent,
			callback = self.onExternalChange,
		}),
		VRComfortSettingListener = Roact.createElement(ExternalEventConnection, {
			event = VRComfortSettingChanged,
			callback = function()
				self:setState({
					vrComfortSetting = UserGameSettings.VRComfortSetting,
				})
			end,
		}),
})
end

return VRComfortAutoToggleEntry
