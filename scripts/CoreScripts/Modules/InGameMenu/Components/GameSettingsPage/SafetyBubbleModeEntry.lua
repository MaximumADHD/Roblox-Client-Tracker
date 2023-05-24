--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GameSettings = UserSettings().GameSettings

local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = require(CorePackages.Packages.Roact)
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local InGameMenu = script.Parent.Parent.Parent
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

local VRSafetyBubbleModeChanged = GameSettings:GetPropertyChangedSignal("VRSafetyBubbleMode")
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)

local InputLabel = require(script.Parent.InputLabel)
local RadioButtonList = UIBlox.App.InputButton.RadioButtonList
local withLocalization = require(InGameMenu.Localization.withLocalization)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local SAFETY_BUBBLE_MODE_LOCALIZATION_KEYS = {
	["Title"] = "CoreScripts.InGameMenu.GameSettings.SafetyBubbleModeTitle",
	["Description"] = "CoreScripts.InGameMenu.GameSettings.SafetyBubbleModeDescription",
	["Enum.VRSafetyBubbleMode.NoOne"] = "CoreScripts.InGameMenu.GameSettings.SafetyBubbleModeNoOne",
	["Enum.VRSafetyBubbleMode.OnlyFriends"] = "CoreScripts.InGameMenu.GameSettings.SafetyBubbleModeOnlyFriends",
	["Enum.VRSafetyBubbleMode.Anyone"] = "CoreScripts.InGameMenu.GameSettings.SafetyBubbleModeAnyone",
}

local VRSafetyBubbleModeEnumValues = Enum.VRSafetyBubbleMode:GetEnumItems()
local function getSafetyBubbleModeIndex(mode)
	return LuauPolyfill.Array.indexOf(VRSafetyBubbleModeEnumValues, mode)
end

local function setSafetyBubbleModeByIndex(index)
	local enumValue = VRSafetyBubbleModeEnumValues[index]
	GameSettings.VRSafetyBubbleMode = enumValue
	SendAnalytics(
		Constants.AnalyticsSettingsChangeName,
		Constants.AnalyticsSettingsSafetyBubbleModeChangeName, {
		mode = tostring(enumValue)
	})
end


local SafetyBubbleModeEntry = Roact.PureComponent:extend("SafetyBubbleModeEntry")
SafetyBubbleModeEntry.validateProps = t.strictInterface({
	LayoutOrder = t.optional(t.integer),
})

function SafetyBubbleModeEntry:init()
	self:setState({
		selectedMode = getSafetyBubbleModeIndex(GameSettings.VRSafetyBubbleMode),
	})
end

function SafetyBubbleModeEntry:render()
	return withLocalization(
		SAFETY_BUBBLE_MODE_LOCALIZATION_KEYS
	)(function(localized)
			return Roact.createFragment({
				VRSafetyBubbleModeListener = Roact.createElement(ExternalEventConnection, {
					event = VRSafetyBubbleModeChanged,
					callback = function()
						self:setState({
							selectedMode = getSafetyBubbleModeIndex(GameSettings.VRSafetyBubbleMode),
						})
					end,
				}),
				SafetyBubbleModeEntrySelector = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					LayoutOrder = self.props.LayoutOrder,
					ZIndex = 2,
				}, {
						Padding = Roact.createElement("UIPadding", {
							PaddingLeft = UDim.new(0, 24),
							PaddingRight = UDim.new(0, 24),
							PaddingBottom = UDim.new(0, 15),
							PaddingTop = UDim.new(0, 15),
						}),
						ListLayout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Vertical,
							HorizontalAlignment = Enum.HorizontalAlignment.Left,
							SortOrder = Enum.SortOrder.LayoutOrder,
							Padding = UDim.new(0, 20),
						}),
						InputLabel = Roact.createElement(InputLabel, {
							localizationKey = SAFETY_BUBBLE_MODE_LOCALIZATION_KEYS["Title"],
							Size = UDim2.new(1, 0, 0, 0),
							Position = UDim2.new(0, 0, 0, 0),
							AnchorPoint = Vector2.new(0, 0),
							LayoutOrder = 1,
						}),
						InputDescription = Roact.createElement(ThemedTextLabel, {
							themeKey = "TextDefault",
							fontKey = "CaptionHeader",
							Text = localized["Description"],
							Size = UDim2.new(0.9, 0, 0, 0),
							AutomaticSize = Enum.AutomaticSize.Y,
							TextWrapped = true,
							LayoutOrder = 2,
							TextXAlignment = Enum.TextXAlignment.Left,

						}),
						RadioList = Roact.createElement(RadioButtonList, {
							layoutOrder = 3,
							radioButtons = LuauPolyfill.Array.map(VRSafetyBubbleModeEnumValues, function(item, index)
								return {
									label = localized[tostring(item)]
								}
							end),
							onActivated = function(value)
								setSafetyBubbleModeByIndex(value)
							end,
							currentValue = self.state.selectedMode,
							automaticSize = true,
							padding = UDim.new(0, 20),
							elementSize = UDim2.new(0, 0, 0, 20),
						})
					}
				),
			})
	end)
end

return SafetyBubbleModeEntry
