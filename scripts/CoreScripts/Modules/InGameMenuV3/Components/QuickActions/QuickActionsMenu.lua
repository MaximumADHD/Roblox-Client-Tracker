--!nonstrict
local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local withStyle = UIBlox.Core.Style.withStyle
local withHoverTooltip = UIBlox.App.Dialog.TooltipV2.withHoverTooltip

local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local TrustAndSafety = require(RobloxGui.Modules.TrustAndSafety)

local InGameMenu = script.Parent.Parent.Parent
local Assets = require(InGameMenu.Resources.Assets)
local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local MuteAllButton = require(InGameMenu.Components.QuickActions.MuteAllButton)
local MuteSelfButton = require(InGameMenu.Components.QuickActions.MuteSelfButton)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local Constants = require(InGameMenu.Resources.Constants)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local ExperienceMenuABTestManager = require(InGameMenu.ExperienceMenuABTestManager)
local withLocalization = require(InGameMenu.Localization.withLocalization)
local IsMenuCsatEnabled = require(InGameMenu.Flags.IsMenuCsatEnabled)

local QuickActionsMenu = Roact.PureComponent:extend("QuickActionsMenu")

local QUICK_ACTIONS_BUTTON_PADDING = 12
local QUICK_ACTIONS_CORNER_RADIUS = 8
local QUICK_ACTIONS_PADDING = 8

-- These hotkeys are on the spec, but they haven't been implemented
-- https://jira.rbx.com/browse/APPEXP-476
local REPORT_HOTKEYS = nil -- { Enum.KeyCode.LeftControl, Enum.KeyCode.R }
local SCREENSHOT_HOTKEYS = nil -- { Enum.KeyCode.S }
local FULLSCREEN_HOTKEYS = { Enum.KeyCode.F11 }
local RESPAWN_HOTKEYS = { Enum.KeyCode.R }

QuickActionsMenu.validateProps = t.strictInterface({
	layoutOrder = t.number,
	startRespawning = t.callback,
	transparencies = t.table,
	frameTransparency = t.table,
	voiceEnabled = t.boolean,
	respawnEnabled = t.boolean,
	recording = t.boolean,
	recordEnabled = t.boolean,
	fullscreenEnabled = t.boolean,
	screenshotEnabled = t.boolean,
	size = t.UDim2,
	automaticSize = t.enum(Enum.AutomaticSize),
	closeMenu = t.callback,
	fillDirection = t.enum(Enum.FillDirection),
	isHorizontal = t.boolean,
	absoluteSizeChanged = t.optional(t.callback),
})


local function updateTransparency(props)
	local transparency = {}
	for _, v in pairs(props.transparencies) do
		if props.isHorizontal then
			if props.voiceEnabled and transparency["muteSelf"] == nil then
				transparency["muteSelf"] = v
			elseif props.voiceEnabled and transparency["muteAll"] == nil then
				transparency["muteAll"] = v
			elseif transparency["report"] == nil then
				transparency["report"] = v
			elseif props.screenshotEnabled and transparency["screenshot"] == nil then
				transparency["screenshot"] = v
			elseif props.recordEnabled and transparency["record"] == nil then
				transparency["record"] = v
			elseif props.fullscreenEnabled and transparency["fullscreen"] == nil then
				transparency["fullscreen"] = v
			elseif props.respawnEnabled and transparency["respawn"] == nil then
				transparency["respawn"] = v
			end
		else
			if props.respawnEnabled and transparency["respawn"] == nil then
				transparency["respawn"] = v
			elseif props.fullscreenEnabled and transparency["fullscreen"] == nil then
				transparency["fullscreen"] = v
			elseif props.recordEnabled and transparency["record"] == nil then
				transparency["record"] = v
			elseif props.screenshotEnabled and transparency["screenshot"] == nil then
				transparency["screenshot"] = v
			elseif transparency["report"] == nil then
				transparency["report"] = v
			elseif props.voiceEnabled and transparency["muteAll"] == nil then
				transparency["muteAll"] = v
			elseif props.voiceEnabled and transparency["muteSelf"] == nil then
				transparency["muteSelf"] = v
			end
		end
	end
	return transparency
end

function QuickActionsMenu:init()
	self.openReportMenu = function()
		TrustAndSafety.openReportMenu()

		SendAnalytics(
			Constants.AnalyticsMenuActionName,
			Constants.AnalyticsReportAbuse,
			{ source = Constants.AnalyticsQuickActionsMenuSource }
		)

		if IsMenuCsatEnabled() then
			ExperienceMenuABTestManager.default:setCSATQualification()
		end
	end

	self.screenshot = function()
		self.props.closeMenu()
		for _ = 1, 16 do -- wait for menu animation to hide
			RunService.RenderStepped:Wait()
		end
		CoreGui:TakeScreenshot()
		SendAnalytics(
			Constants.AnalyticsMenuActionName,
			Constants.AnalyticsScreenshot,
			{ source = Constants.AnalyticsQuickActionsMenuSource }
		)
		if IsMenuCsatEnabled() then
			ExperienceMenuABTestManager.default:setCSATQualification()
		end
	end
 

	self.record = function()
		self.props.closeMenu()
		for _ = 1, 16 do -- wait for menu animation to hide
			RunService.RenderStepped:Wait()
		end
		CoreGui:ToggleRecording()
		SendAnalytics(
			Constants.AnalyticsMenuActionName,
			Constants.AnalyticsRecord,
			{ source = Constants.AnalyticsQuickActionsMenuSource }
		)
		if IsMenuCsatEnabled() then
			ExperienceMenuABTestManager.default:setCSATQualification()
		end
	end

	self.startRespawning = function()
		self.props.startRespawning()

		SendAnalytics(
			Constants.AnalyticsMenuActionName,
			Constants.AnalyticsRespawnCharacterName,
			{ source = Constants.AnalyticsQuickActionsMenuSource }
		)

		if IsMenuCsatEnabled() then
			ExperienceMenuABTestManager.default:setCSATQualification()
		end
	end

	self:setState({
		isFullScreen = GameSettings:InFullScreen()
	})

	GameSettings.FullscreenChanged:Connect(function(isFullScreen)
		self:setState({
			isFullScreen = isFullScreen,
		})
	end)

	self.toggleFullscreen = function()
		GuiService:ToggleFullscreen()

		SendAnalytics(
			Constants.AnalyticsMenuActionName,
			Constants.AnalyticsFullscreen,
			{ source = Constants.AnalyticsQuickActionsMenuSource }
		)
		if IsMenuCsatEnabled() then
			ExperienceMenuABTestManager.default:setCSATQualification()
		end
	end

	self.transparency = updateTransparency(self.props)

end

function QuickActionsMenu:render()
	return withStyle(function(style)
		return withLocalization({
			report = "CoreScripts.InGameMenu.QuickActions.Report",
			screenshot = "CoreScripts.InGameMenu.QuickActions.Screenshot",
			fullscreen = "CoreScripts.InGameMenu.QuickActions.FullScreen",
			respawn = "CoreScripts.InGameMenu.QuickActions.Respawn",
		})(function(localized)
			return Roact.createElement("Frame", {
				LayoutOrder = self.props.layoutOrder,
				Size = self.props.size,
				AutomaticSize = self.props.automaticSize,
				BackgroundColor3 = style.Theme.UIMuted.Color,
				BackgroundTransparency = self.props.frameTransparency,
				[Roact.Change.AbsoluteSize] = self.props.absoluteSizeChanged,
			}, {
				padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, QUICK_ACTIONS_PADDING),
					PaddingBottom = UDim.new(0, QUICK_ACTIONS_PADDING),
					PaddingLeft = UDim.new(0, QUICK_ACTIONS_PADDING),
					PaddingRight = UDim.new(0, QUICK_ACTIONS_PADDING),
				}),
				UICorner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, QUICK_ACTIONS_CORNER_RADIUS),
				}),
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = self.props.fillDirection,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, QUICK_ACTIONS_BUTTON_PADDING),
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				MuteSelfButton = self.props.voiceEnabled and Roact.createElement(MuteSelfButton, {
					iconTransparency = self.transparency.muteSelf,
					backgroundTransparency = self.transparency.muteSelf,
					backgroundColor = style.Theme.BackgroundUIDefault,
					iconSize = IconSize.Medium,
					layoutOrder = 1,
				}) or nil,
				MuteAllButton = self.props.voiceEnabled and Roact.createElement(MuteAllButton, {
					iconTransparency = self.transparency.muteAll,
					backgroundTransparency = self.transparency.muteAll,
					backgroundColor = style.Theme.BackgroundUIDefault,
					iconSize = IconSize.Medium,
					layoutOrder = 2,
				}) or nil,
				ReportButton = withHoverTooltip({
					headerText = localized.report,
					hotkeyCodes = REPORT_HOTKEYS,
					textAlignment = Enum.TextXAlignment.Center,
				}, {
					guiTarget = CoreGui,
					DisplayOrder = Constants.DisplayOrder.Tooltips,
				}, function(triggerPointChanged, onStateChanged)
					return Roact.createElement(IconButton, {
						iconTransparency = self.transparency.report,
						backgroundTransparency = self.transparency.report,
						backgroundColor = style.Theme.BackgroundUIDefault,
						showBackground = true,
						layoutOrder = 3,
						icon = Assets.Images.ReportIcon,
						iconSize = IconSize.Medium,
						onActivated = self.openReportMenu,
						onStateChanged = onStateChanged,
						onAbsolutePositionChanged = triggerPointChanged,
						[Roact.Change.AbsoluteSize] = triggerPointChanged,
					})
				end),
				ScreenshotButton = self.props.screenshotEnabled and withHoverTooltip({
					headerText = localized.screenshot,
					hotkeyCodes = SCREENSHOT_HOTKEYS,
					textAlignment = Enum.TextXAlignment.Center,
				}, {
					guiTarget = CoreGui,
					DisplayOrder = Constants.DisplayOrder.Tooltips,
				}, function(triggerPointChanged, onStateChanged)
					return Roact.createElement(IconButton, {
						iconTransparency = self.transparency.screenshot,
						backgroundTransparency = self.transparency.screenshot,
						backgroundColor = style.Theme.BackgroundUIDefault,
						showBackground = true,
						layoutOrder = 4,
						iconSize = IconSize.Medium,
						onActivated = self.screenshot,
						icon = Assets.Images.ScreenshotIcon,
						onStateChanged = onStateChanged,
						onAbsolutePositionChanged = triggerPointChanged,
						[Roact.Change.AbsoluteSize] = triggerPointChanged,
					})
				end),
				RecordButton = self.props.recordEnabled and Roact.createElement(IconButton, {
					iconTransparency = self.transparency.record,
					backgroundTransparency = self.transparency.record,
					backgroundColor = self.state.recording and style.Theme.Alert or style.Theme.BackgroundUIDefault,
					showBackground = true,
					layoutOrder = 5,
					iconSize = IconSize.Medium,
					onActivated = self.record,
					icon = Assets.Images.RecordIcon,
				}) or nil,
				FullscreenButton = self.props.fullscreenEnabled and withHoverTooltip({
					headerText = localized.fullscreen,
					hotkeyCodes = FULLSCREEN_HOTKEYS,
					textAlignment = Enum.TextXAlignment.Center,
				}, {
					guiTarget = CoreGui,
					DisplayOrder = Constants.DisplayOrder.Tooltips,
				}, function(triggerPointChanged, onStateChanged)
					return Roact.createElement(IconButton, {
						iconTransparency = self.transparency.fullscreen,
						backgroundTransparency = self.transparency.fullscreen,
						backgroundColor = style.Theme.BackgroundUIDefault,
						showBackground = true,
						layoutOrder = 6,
						onActivated = self.toggleFullscreen,
						iconSize = IconSize.Medium,
						icon = self.state.isFullScreen and Assets.Images.PreviewShrinkIcon
							or Assets.Images.PreviewExpandIcon,
						onStateChanged = onStateChanged,
						onAbsolutePositionChanged = triggerPointChanged,
						[Roact.Change.AbsoluteSize] = triggerPointChanged,
					})
				end),
				RespawnButton = self.props.respawnEnabled and withHoverTooltip({
					headerText = localized.respawn,
					hotkeyCodes = RESPAWN_HOTKEYS,
					textAlignment = Enum.TextXAlignment.Center,
				}, {
					guiTarget = CoreGui,
					DisplayOrder = Constants.DisplayOrder.Tooltips,
				}, function(triggerPointChanged, onStateChanged)
					return Roact.createElement(IconButton, {
						iconTransparency = self.transparency.respawn,
						backgroundTransparency = self.transparency.respawn,
						backgroundColor = style.Theme.BackgroundUIDefault,
						showBackground = true,
						layoutOrder = 7,
						onActivated = self.startRespawning,
						iconSize = IconSize.Medium,
						icon = Assets.Images.RespawnIcon,
						onStateChanged = onStateChanged,
						onAbsolutePositionChanged = triggerPointChanged,
						[Roact.Change.AbsoluteSize] = triggerPointChanged,
					})
				end),
			})
		end)
	end)
end

function QuickActionsMenu:didUpdate(prevProps, prevState)
	if self.props.recording ~= prevProps.recording then
		self:setState({
			recording = self.props.recording
		})
	end
end

local function mapStateToProps(state, _)
	return {
		recording = state.recording,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closeMenu = function()
			dispatch(CloseMenu)
		end,
		startRespawning = function()
			dispatch(SetRespawning(true))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(QuickActionsMenu)
