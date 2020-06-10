local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local UserGameSettings = UserSettings():GetService("UserGameSettings")
local MicroProfilerChanged = UserGameSettings:GetPropertyChangedSignal("OnScreenProfilerEnabled")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local withStyle = UIBlox.Core.Style.withStyle

local DevConsoleMaster = require(CoreGui.RobloxGui.Modules.DevConsoleMaster)

local InGameMenu = script.Parent.Parent.Parent

local Divider = require(InGameMenu.Components.Divider)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)
local Page = require(script.Parent.Parent.Page)

local CategoryHeader = require(script.Parent.CategoryHeader)
local ToggleEntry = require(script.Parent.ToggleEntry)
local VersionReporter = require(script.Parent.VersionReporter)

local CloseMenu = require(InGameMenu.Thunks.CloseMenu)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local AdvancedPage = Roact.PureComponent:extend("AdvancedPage")

AdvancedPage.validateProps = t.strictInterface({
	closeMenu = t.callback,
	pageTitle = t.string,
})

function AdvancedPage:init()
	self:setState({
		microProfilerEnabled = UserGameSettings.OnScreenProfilerEnabled,
		performanceStatsEnabled = UserGameSettings.PerformanceStatsVisible,
	})
end

function AdvancedPage:render()
	return withStyle(function(style)
		return Roact.createElement(Page, {
			pageTitle = self.props.pageTitle,
			zIndex = 2,
			position = self.props.position,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				VerticalAlignment = Enum.VerticalAlignment.Top,
			}),
			AdvancedHeader = Roact.createElement(CategoryHeader, {
				LayoutOrder = 1,
				localizationKey = "CoreScripts.InGameMenu.GameSettings.AdvancedSettingsTitle",
			}),
			PerformanceStats = Roact.createElement(ToggleEntry, {
				LayoutOrder = 2,
				labelKey = "CoreScripts.InGameMenu.GameSettings.ShowPerfStats",
				checked = self.state.performanceStatsEnabled,
				onToggled = function()
					UserGameSettings.PerformanceStatsVisible = not UserGameSettings.PerformanceStatsVisible
					SendAnalytics(Constants.AnalyticsSettingsChangeName, nil, {}, true)
				end,
			}),
			MicroProfiler = Roact.createElement(ToggleEntry, {
				LayoutOrder = 3,
				labelKey = "CoreScripts.InGameMenu.GameSettings.ShowMicroProfiler",
				checked = self.state.microProfilerEnabled,
				onToggled = function()
					UserGameSettings.OnScreenProfilerEnabled = not UserGameSettings.OnScreenProfilerEnabled
					SendAnalytics(Constants.AnalyticsSettingsChangeName, nil, {}, true)
				end,
			}),
			DeveloperConsole = withLocalization({
				text = "CoreScripts.InGameMenu.GameSettings.DeveloperConsole"
			})(function(localized)
				return Roact.createElement("TextButton", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 54),
					Text = localized.text,
					TextColor3 = style.Theme.TextEmphasis.Color,
					Font = style.Font.Header2.Font,
					TextSize = style.Font.Header2.RelativeSize * style.Font.BaseSize,
					TextXAlignment = Enum.TextXAlignment.Left,
					LayoutOrder = 4,
					[Roact.Event.Activated] = function()
						DevConsoleMaster:SetVisibility(true)
						self.props.closeMenu()
					end,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 24),
					}),
				})
			end),
			Divider = Roact.createElement(Divider, {
				Size = UDim2.new(1, -24, 0, 1),
				LayoutOrder = 5,
			}),
			VersionReporter = Roact.createElement(VersionReporter, {
				LayoutOrder = 6,
			}),

			MicroProfilerVisibilityListener = Roact.createElement(ExternalEventConnection, {
				event = MicroProfilerChanged,
				callback = function()
					self:setState({
						microProfilerEnabled = UserGameSettings.OnScreenProfilerEnabled,
					})
				end,
			}),
			PerformanceStatsVisibilityListener = Roact.createElement(ExternalEventConnection, {
				event = UserGameSettings.PerformanceStatsVisibleChanged,
				callback = function()
					self:setState({
						performanceStatsEnabled = UserGameSettings.PerformanceStatsVisible,
					})
				end,
			}),
		})
	end)
end

return RoactRodux.UNSTABLE_connect2(nil, function(dispatch)
	return {
		closeMenu = function()
			dispatch(CloseMenu)
		end
	}
end)(AdvancedPage)
