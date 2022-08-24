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
local IsMenuCsatEnabled = require(InGameMenu.Flags.IsMenuCsatEnabled)

local QuickActionsMenu = Roact.PureComponent:extend("QuickActionsMenu")

local QUICK_ACTIONS_BUTTON_PADDING = 12
local QUICK_ACTIONS_CORNER_RADIUS = 8
local QUICK_ACTIONS_PADDING = 8

QuickActionsMenu.validateProps = t.strictInterface({
	layoutOrder = t.number,
	startRespawning = t.callback,
	transparencies = t.table,
	voiceEnabled = t.boolean,
	respawnEnabled = t.boolean,
	fullscreenEnabled = t.boolean,
	screenshotEnabled = t.boolean,
	size = t.UDim2,
	automaticSize = t.enum(Enum.AutomaticSize),
	closeMenu = t.callback,
	fillDirection = t.enum(Enum.FillDirection),
	isHorizontal = t.boolean,
})

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

	GameSettings.FullscreenChanged:connect(function(isFullScreen)
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
end

local function updateHorizontalTransparency(props)
	local transparency = {
		respawn = props.transparencies.button6,
		fullscreen = props.transparencies.button5,
		screenshot = props.transparencies.button4,
		report = props.transparencies.button3,
		muteAll = props.transparencies.button2,
		muteSelf = props.transparencies.button1,
	}
	if props.respawnEnabled then
		if props.fullscreenEnabled then
			if not props.screenshotEnabled then
				if props.voiceEnabled then
					transparency.respawn = props.transparencies.button5
					transparency.fullscreen = props.transparencies.button4
					transparency.report = props.transparencies.button3
					transparency.muteAll = props.transparencies.button2
					transparency.muteSelf = props.transparencies.button1
				else
					transparency.respawn = props.transparencies.button3
					transparency.fullscreen = props.transparencies.button2
					transparency.report = props.transparencies.button1
				end
			end
		else
			if not props.screenshotEnabled then
				if props.voiceEnabled then
					transparency.respawn = props.transparencies.button4
					transparency.report = props.transparencies.button3
					transparency.muteAll = props.transparencies.button2
					transparency.muteSelf = props.transparencies.button1
				else
					transparency.respawn = props.transparencies.button2
					transparency.report = props.transparencies.button1
				end
			end
		end
	else
		if props.screenshotEnabled then
			if props.voiceEnabled then
				transparency.screenshot = props.transparencies.button4
				transparency.report = props.transparencies.button3
				transparency.muteAll = props.transparencies.button2
				transparency.muteSelf = props.transparencies.button1
			else
				transparency.screenshot = props.transparencies.button2
				transparency.report = props.transparencies.button1
			end
		else
			if props.voiceEnabled then
				transparency.report = props.transparencies.button3
				transparency.muteAll = props.transparencies.button2
				transparency.muteSelf = props.transparencies.button1
			else
				transparency.report = props.transparencies.button1
			end
		end
	end
	return transparency
end

local function updateTransparency(props)
	local transparency = {
		respawn = props.transparencies.button1,
		screenshot = props.transparencies.button2,
		report = props.transparencies.button3,
		muteAll = props.transparencies.button4,
		muteSelf = props.transparencies.button5,
	}
	if props.respawnEnabled then
		if not props.screenshotEnabled then
			transparency.report = props.transparencies.button2
			transparency.muteAll = props.transparencies.button3
			transparency.muteSelf = props.transparencies.button4
		end
	else
		if props.screenshotEnabled then
			transparency.screenshot = props.transparencies.button1
			transparency.report = props.transparencies.button2
			transparency.muteAll = props.transparencies.button3
			transparency.muteSelf = props.transparencies.button4
		else
			transparency.report = props.transparencies.button1
			transparency.muteAll = props.transparencies.button2
			transparency.muteSelf = props.transparencies.button3
		end
	end
	return transparency
end

function QuickActionsMenu:render()
	return withStyle(function(style)
		local transparency = self.props.isHorizontal and updateHorizontalTransparency(self.props) or updateTransparency(self.props)
		return Roact.createElement("Frame", {
			LayoutOrder = self.props.layoutOrder,
			Size = self.props.size,
			AutomaticSize = self.props.automaticSize,
			BackgroundColor3 = style.Theme.UIMuted.Color,
			BackgroundTransparency = self.props.transparencies.frame,
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
				iconTransparency = transparency.muteSelf,
				backgroundTransparency = transparency.muteSelf,
				backgroundColor = style.Theme.BackgroundUIDefault,
				iconSize = IconSize.Medium,
				layoutOrder = 1,
			}) or nil,
			MuteAllButton = self.props.voiceEnabled and Roact.createElement(MuteAllButton, {
				iconTransparency = transparency.muteAll,
				backgroundTransparency = transparency.muteAll,
				backgroundColor = style.Theme.BackgroundUIDefault,
				iconSize = IconSize.Medium,
				layoutOrder = 2,
			}) or nil,
			ReportButton = Roact.createElement(IconButton, {
				iconTransparency = transparency.report,
				backgroundTransparency = transparency.report,
				backgroundColor = style.Theme.BackgroundUIDefault,
				showBackground = true,
				layoutOrder = 3,
				icon = Assets.Images.ReportIcon,
				iconSize = IconSize.Medium,
				onActivated = self.openReportMenu,
			}),
			ScreenshotButton = self.props.screenshotEnabled and Roact.createElement(IconButton, {
				iconTransparency = transparency.screenshot,
				backgroundTransparency = transparency.screenshot,
				backgroundColor = style.Theme.BackgroundUIDefault,
				showBackground = true,
				layoutOrder = 4,
				iconSize = IconSize.Medium,
				onActivated = self.screenshot,
				icon = Assets.Images.ScreenshotIcon,
			}) or nil,
			FullscreenButton = self.props.fullscreenEnabled and Roact.createElement(IconButton, {
				iconTransparency = transparency.fullscreen,
				backgroundTransparency = transparency.fullscreen,
				backgroundColor = style.Theme.BackgroundUIDefault,
				showBackground = true,
				layoutOrder = 5,
				onActivated = self.toggleFullscreen,
				iconSize = IconSize.Medium,
				icon = self.state.isFullScreen and Assets.Images.PreviewShrinkIcon or Assets.Images.PreviewExpandIcon,
			}) or nil,
			RespawnButton = self.props.respawnEnabled and Roact.createElement(IconButton, {
				iconTransparency = transparency.respawn,
				backgroundTransparency = transparency.respawn,
				backgroundColor = style.Theme.BackgroundUIDefault,
				showBackground = true,
				layoutOrder = 6,
				onActivated = self.startRespawning,
				iconSize = IconSize.Medium,
				icon = Assets.Images.RespawnIcon,
			}) or nil,
		})
	end)
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

return RoactRodux.connect(nil, mapDispatchToProps)(QuickActionsMenu)
