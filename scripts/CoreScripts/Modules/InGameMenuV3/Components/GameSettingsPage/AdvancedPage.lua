--!nonstrict
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local UserGameSettings = UserSettings():GetService("UserGameSettings")
local OnScreenProfilerEnabled = UserGameSettings:GetPropertyChangedSignal("OnScreenProfilerEnabled")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local withStyle = UIBlox.Core.Style.withStyle
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind
local VerticalScrollViewWithIndicator = UIBlox.App.Container.VerticalScrollViewWithIndicator

local DevConsoleMaster = require(CoreGui.RobloxGui.Modules.DevConsoleMaster)

local InGameMenu = script.Parent.Parent.Parent

local Divider = require(InGameMenu.Components.Divider)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnectionMemo)
local Page = require(script.Parent.Parent.Page)

local CategoryHeader = require(script.Parent.CategoryHeader)
local ToggleEntry = require(script.Parent.ToggleEntry)
local VersionReporter = require(script.Parent.VersionReporter)
local BillboardVisibilityEntry = require(script.Parent.BillboardVisibilityEntry)

local CloseMenu = require(InGameMenu.Thunks.CloseMenu)

local FocusHandler = require(script.Parent.Parent.Connection.FocusHandler)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local AdvancedPage = Roact.PureComponent:extend("AdvancedPage")

AdvancedPage.validateProps = t.strictInterface({
	canCaptureFocus = t.boolean,
	closeMenu = t.callback,
	pageTitle = t.string,
	shouldForgetPreviousSelection = t.boolean,
})

function AdvancedPage:init()
	local platform = UserInputService:GetPlatform()
	self.isDesktopClient = (platform == Enum.Platform.Windows) or (platform == Enum.Platform.OSX) or (platform == Enum.Platform.UWP)
	self.isMobileClient = (platform == Enum.Platform.IOS) or (platform == Enum.Platform.Android)
	self.canUseProfiler = (self.isDesktopClient or self.isMobileClient)

	self:setState({
		isProfilerEnabled = self:isProfilerEnabled(),
		performanceStatsEnabled = UserGameSettings.PerformanceStatsVisible,
	})

	self.backButtonRef = Roact.createRef()
	self.performanceToggleRef = Roact.createRef()

	self.scrollingFrameRef = Roact.createRef()
	self.pageHeaderActivated = function()
		local scrollingFrame = self.scrollingFrameRef:getValue()
		if scrollingFrame then
			scrollingFrame:scrollToTop()
		end
	end
end

function AdvancedPage:isProfilerEnabled()
	if self.isDesktopClient then
		return UserGameSettings.OnScreenProfilerEnabled
	elseif self.isMobileClient then
		return UserGameSettings.MicroProfilerWebServerEnabled
	else
		return false
	end
end

function AdvancedPage:toggleProfiler()
	if self.isDesktopClient then
		UserGameSettings.OnScreenProfilerEnabled = not UserGameSettings.OnScreenProfilerEnabled
	elseif self.isMobileClient then
		if UserGameSettings.MicroProfilerWebServerEnabled then
			self:turnOffMicroProfilerWebServer()
		else
			self:turnOnMicroProfilerWebServer()
		end
	end
end

function AdvancedPage:turnOnMicroProfilerWebServer()
	UserGameSettings.MicroProfilerWebServerEnabled = true
	-- wait for ip address and port
	local pollCount = 30
	while (pollCount >= 1) do
		if UserGameSettings.MicroProfilerWebServerPort ~= 0 then
			break
		end
		pollCount = pollCount - 1
		wait(0.1)
	end
	if pollCount <= 0 then
		-- if the web server has not been started, stop the web server
		UserGameSettings.MicroProfilerWebServerEnabled = false
	end
	self:setState({
		isProfilerEnabled = self:isProfilerEnabled(),
	})
end

function AdvancedPage:turnOffMicroProfilerWebServer()
	UserGameSettings.MicroProfilerWebServerEnabled = false
	self:setState({
		isProfilerEnabled = false,
	})
end

function AdvancedPage:getMicroProfilerWebAddresses()
	local enabled = UserGameSettings.MicroProfilerWebServerEnabled
	local port = UserGameSettings.MicroProfilerWebServerPort
	if (not self.isMobileClient) or (not enabled) or (not port) then
		return nil
	end
	return UserGameSettings.MicroProfilerWebServerIP .. port
end

function AdvancedPage:renderWithSelectionCursor(getSelectionCursor)
	local profilerWebAddresses = self:getMicroProfilerWebAddresses()
	return withStyle(function(style)
		return Roact.createElement(Page, {
			pageTitle = self.props.pageTitle,
			zIndex = 2,
			position = self.props.position,
			buttonRef = self.backButtonRef,
			NextSelectionDown = self.performanceToggleRef,
			onHeaderActivated = self.pageHeaderActivated,
		}, {
			FocusHandler = Roact.createElement(FocusHandler, {
				isFocused = self.props.canCaptureFocus,
				shouldForgetPreviousSelection =  self.props.shouldForgetPreviousSelection,
				didFocus = function(previousSelection)
					GuiService.SelectedCoreObject = previousSelection or self.performanceToggleRef:getValue()
				end,
			}),
			PageContents = Roact.createElement(VerticalScrollViewWithIndicator, {
				position = self.props.position,
				size = UDim2.new(1, 0, 1, 0),
				useAutomaticCanvasSize = true,
				canvasSizeY = UDim.new(0, 0), -- no minmum size
				scrollingFrameRef = self.scrollingFrameRef,
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
					buttonRef = self.performanceToggleRef,
					NextSelectionUp = self.backButtonRef,
				}),
				Divider1 = Roact.createElement(Divider, {
					Size = UDim2.new(1, -24, 0, 1),
					LayoutOrder = 3,
				}),
				Profiler = Roact.createElement(ToggleEntry, {
					LayoutOrder = 4,
					labelKey = "CoreScripts.InGameMenu.GameSettings.ShowMicroProfiler",
					isDisabled = not self.canUseProfiler,
					checked = self.state.isProfilerEnabled,
					onToggled = function()
						self:toggleProfiler()
						SendAnalytics(Constants.AnalyticsSettingsChangeName, nil, {}, true)
					end,
				}),
				ProfilerText = profilerWebAddresses and Roact.createElement(ThemedTextLabel, {
					LayoutOrder = 5,
					Text = profilerWebAddresses,
					TextXAlignment = Enum.TextXAlignment.Left,
					themeKey = "TextDefault",
					fontKey = "Footer",
					Size = UDim2.new(1, -24, 0, 24),
				}) or nil,
				Divider2 = Roact.createElement(Divider, {
					Size = UDim2.new(1, -24, 0, 1),
					LayoutOrder = 6,
				}),
				BillboardVisibilityToggle = Roact.createElement(BillboardVisibilityEntry, {
					LayoutOrder = 7,
				}),
				DeveloperConsole = withLocalization({
					text = "CoreScripts.InGameMenu.GameSettings.DeveloperConsole",
				})(function(localized)
					return Roact.createElement("TextButton", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 54),
						Text = localized.text,
						TextColor3 = style.Theme.TextEmphasis.Color,
						Font = style.Font.Header2.Font,
						TextSize = style.Font.Header2.RelativeSize * style.Font.BaseSize,
						TextXAlignment = Enum.TextXAlignment.Left,
						LayoutOrder = 8,
						SelectionImageObject = getSelectionCursor(CursorKind.Square),
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
				Divider3 = Roact.createElement(Divider, {
					Size = UDim2.new(1, -24, 0, 1),
					LayoutOrder = 9,
				}),
				VersionReporter = Roact.createElement(VersionReporter, {
					LayoutOrder = 10,
				}),

				OnScreenProfilerListener = Roact.createElement(ExternalEventConnection, {
					event = OnScreenProfilerEnabled,
					callback = function()
						self:setState({
							isProfilerEnabled = self:isProfilerEnabled(),
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
			}),
		})
	end)
end

function AdvancedPage:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithSelectionCursor(getSelectionCursor)
	end)
end

return RoactRodux.UNSTABLE_connect2(function(state)
	local canCaptureFocus = state.menuPage == "AdvancedGameSettings"
		and state.displayOptions.inputType == Constants.InputType.Gamepad
		and not state.respawn.dialogOpen
		and state.currentZone == 1

	return {
		canCaptureFocus = canCaptureFocus,
		shouldForgetPreviousSelection = state.menuPage ~= Constants.advancedSettingsPageKey or state.currentZone == 0
	}
end, function(dispatch)
	return {
		closeMenu = function()
			dispatch(CloseMenu)
		end,
	}
end)(AdvancedPage)
