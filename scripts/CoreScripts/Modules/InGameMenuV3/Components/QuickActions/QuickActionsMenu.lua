--!nonstrict
local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local React = require(CorePackages.Packages.React)
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local IconButton = UIBlox.App.Button.IconButton
local getIconSize = UIBlox.App.ImageSet.getIconSize
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local withStyle = UIBlox.Core.Style.withStyle
local withHoverTooltip = UIBlox.App.Dialog.TooltipV2.withHoverTooltip
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
local createRefCache = RoactGamepad.createRefCache

local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local TrustAndSafety = require(RobloxGui.Modules.TrustAndSafety)

local InGameMenu = script.Parent.Parent.Parent
local Assets = require(InGameMenu.Resources.Assets)
local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local MuteAllButton = require(InGameMenu.Components.QuickActions.MuteAllButton)
local MuteSelfButton = require(InGameMenu.Components.QuickActions.MuteSelfButton)
local ToggleCameraButton = require(InGameMenu.Components.QuickActions.ToggleCameraButton)
local ToggleSelfViewButton = require(InGameMenu.Components.QuickActions.ToggleSelfViewButton)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local Constants = require(InGameMenu.Resources.Constants)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local ExperienceMenuABTestManager = require(InGameMenu.ExperienceMenuABTestManager)
local withLocalization = require(InGameMenu.Localization.withLocalization)
local IsMenuCsatEnabled = require(InGameMenu.Flags.IsMenuCsatEnabled)
local UIAnimator = require(InGameMenu.Utility.UIAnimator)
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation
local DismissTooltip = require(InGameMenu.Actions.DismissTooltip)
local EducationTooltipPolicy = require(InGameMenu.Utility.EducationTooltipPolicy)

local GetFFlagV3MenuAddSelfViewButtons = require(InGameMenu.Flags.GetFFlagV3MenuAddSelfViewButtons)

local QuickActionsMenu = Roact.PureComponent:extend("QuickActionsMenu")

local QUICK_ACTIONS_BUTTON_PADDING = 12
local QUICK_ACTIONS_CORNER_RADIUS = 8
local QUICK_ACTIONS_PADDING = 8
local SCROLL_VELOCITY_SNAP = 40
local CONTROL_WIDTH = 60
local QAM_Y_HEIGHT_SCALE = 0.8

local HIGHLIGHT_ANIMATION_SPEED = 1.2
local HIGHLIGHT_TWEEN_INFO = TweenInfo.new(HIGHLIGHT_ANIMATION_SPEED, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true)

-- These hotkeys are on the spec, but they haven't been implemented
-- https://jira.rbx.com/browse/APPEXP-476
local REPORT_HOTKEYS = nil -- { Enum.KeyCode.LeftControl, Enum.KeyCode.R }
local SCREENSHOT_HOTKEYS = nil -- { Enum.KeyCode.S }
local RESPAWN_HOTKEYS = { Enum.KeyCode.R }

local FULLSCREEN_HOTKEYS = { Enum.KeyCode.F11 }
if UserInputService:GetPlatform() == Enum.Platform.OSX then
	FULLSCREEN_HOTKEYS = { Enum.KeyCode.LeftControl, Enum.KeyCode.LeftSuper, Enum.KeyCode.F }
end

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
	cameraEnabled = t.boolean,
	selfViewEnabled = if GetFFlagV3MenuAddSelfViewButtons() then t.boolean else nil,
	size = t.UDim2,
	showEduTooltip = t.boolean,
	automaticSize = t.enum(Enum.AutomaticSize),
	closeMenu = t.callback,
	fillDirection = t.enum(Enum.FillDirection),
	isHorizontal = t.boolean,
	absoluteSizeChanged = t.optional(t.callback),
	dismissEduTooltip = t.callback,
	screenSize = t.Vector2,
})


local function updateTransparency(props)
	local transparency = {}
	for _, v in pairs(props.transparencies) do
		if props.isHorizontal then
			if props.voiceEnabled and transparency["muteSelf"] == nil then
				transparency["muteSelf"] = v
			elseif props.voiceEnabled and transparency["muteAll"] == nil then
				transparency["muteAll"] = v
			elseif GetFFlagV3MenuAddSelfViewButtons() and props.cameraEnabled and transparency["camera"] == nil then
				transparency["camera"] = v
			elseif GetFFlagV3MenuAddSelfViewButtons() and props.selfViewEnabled and transparency["selfView"] == nil then
				transparency["selfView"] = v
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
			elseif GetFFlagV3MenuAddSelfViewButtons() and props.cameraEnabled and transparency["camera"] == nil then
				transparency["camera"] = v
			elseif GetFFlagV3MenuAddSelfViewButtons() and props.selfViewEnabled and transparency["selfView"] == nil then
				transparency["selfView"] = v
			end
		end
	end
	return transparency
end

--[[
	Given a button, figure out what index it is in the list.
]]
local function getIndex(scrollingFrameRef, buttonRef, sizePerIcon)
	local canvasPositionY = scrollingFrameRef.CanvasPosition.Y
	local scrollingFrameAbsPosY = scrollingFrameRef.AbsolutePosition.Y
	local buttonAbsPosY = buttonRef.AbsolutePosition.Y
	local posInScrollingFrame = canvasPositionY + buttonAbsPosY
	local index = (posInScrollingFrame - 8 - scrollingFrameAbsPosY) / sizePerIcon

	return math.round(index + 1)
end

function QuickActionsMenu:snapToClosestButton()
	-- Pulled from UIBlox.
	local iconSizeToSizeScale = {
		[IconSize.Small] = 1,
		[IconSize.Medium] = 2,
		[IconSize.Large] = 3,
		[IconSize.XLarge] = 4,
		[IconSize.XXLarge] = 5,
	}
	local iconSize = getIconSize(IconSize.Medium)
	local scrollVelocity = self.scrollingFrameRef.current.ScrollVelocity.Y

	if math.abs(scrollVelocity) < SCROLL_VELOCITY_SNAP then
		-- Set Scroll Velocity to 0 and tween to closest button.
		self.scrollingFrameRef.current.ScrollVelocity = Vector2.new(0, 0)
		local canvasPositionY = self.scrollingFrameRef.current.CanvasPosition.Y

		local closest
		local closestY = math.huge

		local totalIconSize = iconSize + 4 * iconSizeToSizeScale[IconSize.Medium]
		local padding = QUICK_ACTIONS_BUTTON_PADDING

		-- Loop through the buttons looking for the closest one to snap to.
		for _, buttonRef in self.buttonRefs do
			local index = getIndex(self.scrollingFrameRef.current, buttonRef, totalIconSize + padding)

			local numIcons = index - 1

			local totalSize = totalIconSize * numIcons + (padding * (index - 1)) + QUICK_ACTIONS_PADDING
			local yChange = math.abs(totalSize - canvasPositionY)
			
			if yChange < closestY or not closest then
				closestY = yChange
				closest = buttonRef
			end
		end

		-- Figure out button location inside the scrolling frame
		local index = getIndex(self.scrollingFrameRef.current, closest, totalIconSize + padding)

		local numIcons = index - 1	
		local totalSize = totalIconSize * numIcons + (padding * (numIcons)) + QUICK_ACTIONS_PADDING

		local snapOffset = 8
		local yPos = totalSize - snapOffset

		-- Create a tween to "snap" to the closest button
		local tween = game:GetService("TweenService"):Create(self.scrollingFrameRef.current, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0),
			{CanvasPosition = Vector2.new(0, math.min(yPos, self.scrollingFrameRef.current.AbsoluteCanvasSize.Y - self.scrollingFrameRef.current.AbsoluteWindowSize.Y))})
		tween:Play()

		-- Disconnect connections. These are no longer needed.
		self.tweenCompleted = tween.Completed:connect(function()
			if self.renderSteppedConnection then
				self.renderSteppedConnection:disconnect()
				self.renderSteppedConnection = nil
			end
			if self.tweenCompleted then
				self.tweenCompleted:disconnect()
				self.tweenCompleted = nil
			end
		end)
	end
end

function QuickActionsMenu:init()
	self.highlightAnimator = UIAnimator:new()
	self.highlightTheme = nil
	self.scrollingFrameRef = Roact.createRef()
	self.buttonRefs = createRefCache()

	self.openReportMenu = function()
		TrustAndSafety.openReportMenu(Constants.AnalyticsQuickActionsMenuSource)

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

	self.createSnapToButtonConnection = function(rbx, inputObj)
		if inputObj.UserInputType == Enum.UserInputType.Touch then
			if self.tweenCompleted then
				self.tweenCompleted:disconnect()
				self.tweenCompleted = nil
			end
			if self.renderSteppedConnection then
				self.renderSteppedConnection:disconnect()
				self.renderSteppedConnection = nil
			end
			self.renderSteppedConnection = RunService.RenderStepped:Connect(function()
				if self.scrollingFrameRef.current and self.scrollingFrameRef.current.ScrollVelocity.Y ~= 0 then
					self:snapToClosestButton()
				end
			end)
		end
	end

	self:setState({
		isFullScreen = GameSettings:InFullScreen(),
		absContentSize = 0,
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

	self.setRootRef = function (instance)
		if instance ~= nil then
			self.highlightAnimator:addTween(instance, 'FrameHighlight', {
				BackgroundColor3 = self.highlightTheme.rootBackgroundColor,
			}, HIGHLIGHT_TWEEN_INFO)
		end
	end

	self.addButtonHighlightTween = function (instance)
		if instance ~= nil then
			if GetFFlagV3MenuAddSelfViewButtons() then
				table.insert(self.buttonRefs, instance)
			end
			local backgroundInstance = instance:FindFirstChild("background")
			if backgroundInstance then
				self.highlightAnimator:addTween(backgroundInstance, 'ButtonHighlight', {
					BackgroundColor3 = self.highlightTheme.buttonBackgroundColor,
				}, HIGHLIGHT_TWEEN_INFO)
			end
		end
	end

	self.onMenuOpenStateChanged = function(isOpened, wasOpened)
		if self.props.showEduTooltip and isOpened ~= wasOpened then
			if isOpened then
				self:startHighlightAnimation()
			else
				self:stopHighlightAnimation()
			end
		end
	end
end

function QuickActionsMenu:startHighlightAnimation()
	self.highlightAnimator:playAllTweens()
end

function QuickActionsMenu:stopHighlightAnimation()
	self.highlightAnimator:resetAllTweens()
end

function QuickActionsMenu:render()
	local shouldScroll
	if GetFFlagV3MenuAddSelfViewButtons() then
		shouldScroll = self.state.absContentSize > self.props.screenSize.Y * 0.8 and self.props.screenSize.Y > 0
	end

	return withStyle(function(style)
		if not self.highlightTheme then
			self.highlightTheme = {
				rootBackgroundColor = style.Theme.BackgroundUIDefault.Color,
				buttonBackgroundColor = style.Theme.UIDefault.Color,
			}
		end

		return withLocalization({
			report = "CoreScripts.InGameMenu.QuickActions.Report",
			screenshot = "CoreScripts.InGameMenu.QuickActions.Screenshot",
			fullscreen = "CoreScripts.InGameMenu.QuickActions.FullScreen",
			respawn = "CoreScripts.InGameMenu.QuickActions.Respawn",
			eduTooltipHead = "CoreScripts.InGameMenu.EduToolTip.QuickActionMenu.Header",
			eduTooltipBody = "CoreScripts.InGameMenu.EduToolTip.QuickActionMenu.Body",
			eduTooltipConfirm = "CoreScripts.InGameMenu.EduToolTip.Button.Confirm",
		})(function(localized)

			local tooltipProps = {
				headerText = localized.eduTooltipHead,
				bodyText = localized.eduTooltipBody,
				buttonProps = {
					text = localized.eduTooltipConfirm,
					onActivated = self.props.dismissEduTooltip,
				},
				useLargeDropShadow = true,
			}
			local tooltipOptions = {
				preferredOrientation = if self.props.isHorizontal then TooltipOrientation.Bottom else TooltipOrientation.Left,
				guiTarget = CoreGui,
				active = self.props.showEduTooltip,
				DisplayOrder = Constants.DisplayOrder.Tooltips,
			}

			-- When displaying the Quick Action buttons vertically, use a Scrolling Frame to fit all the buttons.
			local useScrollingFrame = if GetFFlagV3MenuAddSelfViewButtons() and not self.props.isHorizontal then true else false

			local children = {
				padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, QUICK_ACTIONS_PADDING),
					PaddingBottom = UDim.new(0, QUICK_ACTIONS_PADDING),
					PaddingLeft = UDim.new(0, QUICK_ACTIONS_PADDING),
					PaddingRight = UDim.new(0, QUICK_ACTIONS_PADDING),
				}),
				
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = self.props.fillDirection,
					HorizontalAlignment = self.props.isHorizontal and Enum.HorizontalAlignment.Left or Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					Padding = UDim.new(0, QUICK_ACTIONS_BUTTON_PADDING),
					SortOrder = Enum.SortOrder.LayoutOrder,
					[Roact.Change.AbsoluteContentSize] = GetFFlagV3MenuAddSelfViewButtons() and function(rbx)
						self:setState({
							absContentSize = rbx.AbsoluteContentSize.Y
						})
					end,
				}),
				MuteSelfButton = self.props.voiceEnabled and Roact.createElement(MuteSelfButton, {
					iconTransparency = self.transparency.muteSelf,
					backgroundTransparency = self.transparency.muteSelf,
					backgroundColor = style.Theme.BackgroundUIDefault,
					iconSize = IconSize.Medium,
					layoutOrder = 1,
					buttonRef = self.addButtonHighlightTween,
				}) or nil,
				MuteAllButton = self.props.voiceEnabled and Roact.createElement(MuteAllButton, {
					iconTransparency = self.transparency.muteAll,
					backgroundTransparency = self.transparency.muteAll,
					backgroundColor = style.Theme.BackgroundUIDefault,
					iconSize = IconSize.Medium,
					layoutOrder = 2,
					buttonRef = self.addButtonHighlightTween,
				}) or nil,
				ToggleCameraButton = if GetFFlagV3MenuAddSelfViewButtons() and self.props.cameraEnabled then Roact.createElement(ToggleCameraButton, {
					iconTransparency = self.transparency.camera,
					backgroundTransparency = self.transparency.camera,
					backgroundColor = style.Theme.BackgroundUIDefault,
					iconSize = IconSize.Medium,
					layoutOrder = 3,
					buttonRef = self.addButtonHighlightTween,
				}) else nil,
				SelfViewButton = if GetFFlagV3MenuAddSelfViewButtons() and self.props.selfViewEnabled then Roact.createElement(ToggleSelfViewButton, {
					iconTransparency = self.transparency.selfView,
					backgroundTransparency = self.transparency.selfView,
					backgroundColor = style.Theme.BackgroundUIDefault,
					iconSize = IconSize.Medium,
					layoutOrder = 4,
					buttonRef = self.addButtonHighlightTween,
				}) else nil,
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
						layoutOrder = 5,
						icon = Assets.Images.ReportIcon,
						iconSize = IconSize.Medium,
						onActivated = self.openReportMenu,
						onStateChanged = onStateChanged,
						onAbsolutePositionChanged = triggerPointChanged,
						buttonRef = self.addButtonHighlightTween,
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
						layoutOrder = 6,
						iconSize = IconSize.Medium,
						onActivated = self.screenshot,
						icon = Assets.Images.ScreenshotIcon,
						onStateChanged = onStateChanged,
						onAbsolutePositionChanged = triggerPointChanged,
						buttonRef = self.addButtonHighlightTween,
						[Roact.Change.AbsoluteSize] = triggerPointChanged,
					})
				end),
				RecordButton = self.props.recordEnabled and Roact.createElement(IconButton, {
					iconTransparency = self.transparency.record,
					backgroundTransparency = self.transparency.record,
					backgroundColor = self.state.recording and style.Theme.Alert or style.Theme.BackgroundUIDefault,
					showBackground = true,
					layoutOrder = 7,
					iconSize = IconSize.Medium,
					onActivated = self.record,
					icon = Assets.Images.RecordIcon,
					buttonRef = self.addButtonHighlightTween,
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
						layoutOrder = 8,
						onActivated = self.toggleFullscreen,
						iconSize = IconSize.Medium,
						icon = self.state.isFullScreen and Assets.Images.PreviewShrinkIcon
							or Assets.Images.PreviewExpandIcon,
						onStateChanged = onStateChanged,
						onAbsolutePositionChanged = triggerPointChanged,
						buttonRef = self.addButtonHighlightTween,
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
						layoutOrder = 9,
						onActivated = self.startRespawning,
						iconSize = IconSize.Medium,
						icon = Assets.Images.RespawnIcon,
						onStateChanged = onStateChanged,
						onAbsolutePositionChanged = triggerPointChanged,
						buttonRef = self.addButtonHighlightTween,
						[Roact.Change.AbsoluteSize] = triggerPointChanged,
					})
				end),
				Watcher = Roact.createElement(PageNavigationWatcher, {
					onNavigate = self.onMenuOpenStateChanged,
					desiredPage = "",
				}),
			}

			if not useScrollingFrame then
				children["UICorner"] = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, QUICK_ACTIONS_CORNER_RADIUS),
				})
			end

			local newChildren
			if useScrollingFrame then
				newChildren = Roact.createFragment({
					UICorner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, QUICK_ACTIONS_CORNER_RADIUS),
					}),
					ScrollingFrame = Roact.createElement("ScrollingFrame", {
						LayoutOrder = self.props.layoutOrder,
						Size = not shouldScroll and UDim2.fromScale(1, 0) or UDim2.fromScale(1, 1),
						AutomaticSize = not shouldScroll and Enum.AutomaticSize.Y or nil,
						BackgroundColor3 = style.Theme.UIMuted.Color,
						BackgroundTransparency = 1,
						AutomaticCanvasSize = Enum.AutomaticSize.Y,
						ScrollBarThickness = 0,
						CanvasSize = UDim2.new(0, 0, 0, 0),
						ScrollingDirection = Enum.ScrollingDirection.Y,
						ScrollBarImageTransparency = 1,

						[Roact.Ref] = self.scrollingFrameRef,
						[React.Event.InputBegan] = self.createSnapToButtonConnection,
						[React.Event.InputChanged] = self.createSnapToButtonConnection,
					}, children)
				})
			else
				newChildren = children
			end

			local automaticSize = self.props.automaticSize
			local size = self.props.size

			--[[
				Don't use Automatic Size if the Scrolling Frame is using it for its Canvas.
				We want to limit the size of the parent so we can actually scroll.
			]]
			if GetFFlagV3MenuAddSelfViewButtons() then
				automaticSize = if not useScrollingFrame or not shouldScroll then self.props.automaticSize else nil
				-- Limit the Y height to 80% of the screen. Scroll for the remaining buttons.
				size = if not useScrollingFrame or not shouldScroll then self.props.size else UDim2.new(0, CONTROL_WIDTH, QAM_Y_HEIGHT_SCALE, 0)
			end

			return withTooltip(tooltipProps, tooltipOptions, function(triggerPointChanged)
				return Roact.createElement("Frame", {
					LayoutOrder = self.props.layoutOrder,
					AutomaticSize = automaticSize,
					Size = size,
					BackgroundColor3 = style.Theme.UIMuted.Color,
					BackgroundTransparency = self.props.frameTransparency,
					[Roact.Ref] = self.setRootRef,
					[React.Change.AbsoluteSize] = function(rbx)
						if self.props.absoluteSizeChanged then
							self.props.absoluteSizeChanged(rbx)
						end
						if triggerPointChanged then
							triggerPointChanged(rbx)
						end
					end,
					[React.Change.AbsolutePosition] = triggerPointChanged,
				}, newChildren)
			end)
		end)
	end)
end

function QuickActionsMenu:didUpdate(prevProps, prevState)
	if self.props.recording ~= prevProps.recording then
		self:setState({
			recording = self.props.recording
		})
	end

	if self.props.showEduTooltip ~= prevProps.showEduTooltip then
		if self.props.showEduTooltip then
			self:startHighlightAnimation()
		else
			self:stopHighlightAnimation()
		end
	end
end

function QuickActionsMenu:willUnmount()
	self:stopHighlightAnimation()
end

local function mapStateToProps(state, _)
	return {
		showEduTooltip = state.isMenuOpen and state.educationalTooltip[EducationTooltipPolicy.QUICK_ACTION_IDENT],
		recording = state.recording,
		screenSize = state.screenSize,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dismissEduTooltip = function()
			dispatch(DismissTooltip(EducationTooltipPolicy.QUICK_ACTION_IDENT))
		end,
		closeMenu = function()
			dispatch(CloseMenu)
		end,
		startRespawning = function()
			dispatch(SetRespawning(true))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(QuickActionsMenu)
