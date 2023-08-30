--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GameSettings = UserSettings().GameSettings

local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = require(CorePackages.Packages.Roact)
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local SegmentedControl = UIBlox.App.Control.SegmentedControl

local InGameMenu = script.Parent.Parent.Parent
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

local VRComfortSettingChanged = GameSettings:GetPropertyChangedSignal("VRComfortSetting")
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local LAYOUT_PADDING_LEFT = 24
local LAYOUT_PADDING_RIGHT = 24
local LAYOUT_PADDING_TOP = 15
local LAYOUT_PADDING_BOTTOM = 15
local LIST_ITEM_PADDING = 20
local DESCRIPTION_WIDTH_FRACTION = 0.9


local COMFORT_SETTINGS_LOCALIZATION_KEYS = {
	["Description"] = "CoreScripts.InGameMenu.GameSettings.ComfortSettingsDescription",
	["Enum.VRComfortSetting.Comfort"] = "CoreScripts.InGameMenu.GameSettings.ComfortSettingComfort",
	["Enum.VRComfortSetting.Normal"] = "CoreScripts.InGameMenu.GameSettings.ComfortSettingNormal",
	["Enum.VRComfortSetting.Expert"] = "CoreScripts.InGameMenu.GameSettings.ComfortSettingExpert",
	["Enum.VRComfortSetting.Custom"] = "CoreScripts.InGameMenu.GameSettings.ComfortSettingCustom",
}

local VRComfortSettingEnumValues = Enum.VRComfortSetting:GetEnumItems()
local function getComfortSettingIndex(mode)
	return LuauPolyfill.Array.indexOf(VRComfortSettingEnumValues, mode)
end

local function setComfortSettingByIndex(index)
	local enumValue = VRComfortSettingEnumValues[index]
	GameSettings.VRComfortSetting = enumValue
	SendAnalytics(
		Constants.AnalyticsSettingsChangeName,
		Constants.AnalyticsSettingsVRComfortSettingChangeName, {
		mode = tostring(enumValue)
	})
end


local ComfortSettingsEntry = Roact.PureComponent:extend("ComfortSettingsEntry")
ComfortSettingsEntry.validateProps = t.strictInterface({
	LayoutOrder = t.optional(t.integer),
})

function ComfortSettingsEntry:init()
	self:setState({
		selectedMode = getComfortSettingIndex(GameSettings.VRComfortSetting),
	})
end

function ComfortSettingsEntry:render()
	return withLocalization(
		COMFORT_SETTINGS_LOCALIZATION_KEYS
	)(function(localized)
		return Roact.createFragment({
			VRComfortSettingListener = Roact.createElement(ExternalEventConnection, {
				event = VRComfortSettingChanged,
				callback = function()
					self:setState({
						selectedMode = getComfortSettingIndex(GameSettings.VRComfortSetting),
					})
				end,
			}),
			ComfortSettingEntrySelector = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				LayoutOrder = self.props.LayoutOrder,
				ZIndex = 2,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, LAYOUT_PADDING_LEFT),
					PaddingRight = UDim.new(0, LAYOUT_PADDING_RIGHT),
					PaddingBottom = UDim.new(0, LAYOUT_PADDING_BOTTOM),
					PaddingTop = UDim.new(0, LAYOUT_PADDING_TOP),
				}),
				ListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, LIST_ITEM_PADDING),
				}),
				InputDescription = Roact.createElement(ThemedTextLabel, {
					themeKey = "TextDefault",
					fontKey = "CaptionHeader",
					Text = localized["Description"],
					Size = UDim2.new(DESCRIPTION_WIDTH_FRACTION, 0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					TextWrapped = true,
					LayoutOrder = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				-- without using this extra frame, the SegmentedControl won't respect LayoutOrder
				Frame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				}, {
					SegmentedControl = Roact.createElement(SegmentedControl, {
						width = UDim.new(1, 0),
						selectedTabIndex = self.state.selectedMode,
						onTabActivated = function(index)
							setComfortSettingByIndex(index)
						end,
						tabs = LuauPolyfill.Array.map(VRComfortSettingEnumValues, function(item, index)
							return {
								tabName = localized[tostring(item)]
							}
						end),
					}),
				}),
			}),
		})
	end)
end

return ComfortSettingsEntry
