local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GameSettings = settings():FindFirstChild("Game Options") or error("Game Options does not exist", 0)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local withStyle = UIBlox.Core.Style.withStyle
local ExternalEventConnection = UIBlox.Utility.ExternalEventConnection

local QuickActionsTooltip = require(script.QuickActionsTooltip)
local QuickActionsMenu = require(script.QuickActionsMenu)
local withVoiceState = require(RobloxGui.Modules.VoiceChat.VoiceStateContext).withVoiceState
local getCamMicPermissions = require(RobloxGui.Modules.Settings.getCamMicPermissions)

local InGameMenu = script.Parent.Parent
local Constants = require(InGameMenu.Resources.Constants)

local FFlagRecordRecording = require(InGameMenu.Flags.FFlagRecordRecording)
local FFlagEnableInGameMenuQAScreenshot = game:DefineFastFlag("EnableInGameMenuQAScreenshot", false)
local GetFFlagV3MenuAddSelfViewButtons = require(InGameMenu.Flags.GetFFlagV3MenuAddSelfViewButtons)

local QuickActions = Roact.PureComponent:extend("QuickActions")

local RobloxGuiDisplayOrderDefault = 0 -- default as 0

local CONTROL_WIDTH = 60
local HORIZONTAL_CONTROL_HEIGHT = 108
local NO_NOTCH_OFFSET = 24
local TOOLTIP_HEIGHT = 36
local FPS = 30
local IN_MENU_MENU_WIDTH = Constants.PageWidth + Constants.SideNavigationWidth
local IN_MENU_MENU_WIDTH_PAD = IN_MENU_MENU_WIDTH + 12

local platform = UserInputService:GetPlatform()
local isDesktopClient = platform == Enum.Platform.OSX or platform == Enum.Platform.Windows
local isMobilePlatform = platform == Enum.Platform.IOS or platform == Enum.Platform.Android

QuickActions.validateProps = t.strictInterface({
	respawnEnabled = t.boolean,
	visible = t.boolean,
})

local buttonCount = 1 -- default: Report
local checkVoiceButton = false
local frameFinalTransparency = 0.2 -- default: style.Theme.UIMuted

local function linearTween(dTime : number, startFrame : number, endFrame : number)
	local range = (endFrame - startFrame)/FPS
	return (dTime - (startFrame/FPS)) / range
end

local function isBetweenFrames(dTime : number, startFrame : number, endFrame : number)
	return dTime >= (startFrame/FPS) and dTime <= (endFrame/FPS)
end

local function showAnimation(timeElapsed, updateBindings, reverse, stopCallback)
	if reverse then
		if isBetweenFrames(timeElapsed, 0, 5) then
			local elapsed = linearTween(timeElapsed, 0, 5)
			updateBindings.button1(elapsed)
			updateBindings.button2(elapsed)
			updateBindings.button3(elapsed)
			updateBindings.button4(elapsed)
			updateBindings.button5(elapsed)
			updateBindings.button6(elapsed)
			updateBindings.button7(elapsed)
			updateBindings.button8(elapsed)
			updateBindings.button9(elapsed)
		else
			local finalTransparency = 1
			updateBindings.button1(finalTransparency)
			updateBindings.button2(finalTransparency)
			updateBindings.button3(finalTransparency)
			updateBindings.button4(finalTransparency)
			updateBindings.button5(finalTransparency)
			updateBindings.button6(finalTransparency)
			updateBindings.button7(finalTransparency)
			updateBindings.button8(finalTransparency)
			updateBindings.button9(finalTransparency)
			stopCallback()
		end
		updateBindings.gradient(1)
		updateBindings.frame(1)
		updateBindings.recIcon(1)
		return
	end
	--[[
		- frame 0 -> 9.5   300ms
		- frame 2  (50ms x buttonCcount)
	]]
	if isBetweenFrames(timeElapsed, 0, 2) then
		local elapsed = linearTween(timeElapsed, 0, 2)
		local scaledElapsed = 1 - elapsed
		updateBindings.button1(scaledElapsed)
	end

	if isBetweenFrames(timeElapsed, 2, 4) then
		local elapsed = linearTween(timeElapsed, 2, 4)
		local scaledElapsed = 1 - elapsed
		updateBindings.button2(scaledElapsed)
	end

	if isBetweenFrames(timeElapsed, 4, 6) then
		local elapsed = linearTween(timeElapsed, 4, 6)
		local scaledElapsed = 1 - elapsed
		updateBindings.button3(scaledElapsed)
	end

	if isBetweenFrames(timeElapsed, 6, 8) then
		local elapsed = linearTween(timeElapsed, 6, 8)
		local scaledElapsed = 1 - elapsed
		updateBindings.button4(scaledElapsed)
	end
	if isBetweenFrames(timeElapsed, 8, 10) then
		local elapsed = linearTween(timeElapsed, 8, 10)
		local scaledElapsed = 1 - elapsed
		updateBindings.button5(scaledElapsed)
	end
	if isBetweenFrames(timeElapsed, 10, 12) then
		local elapsed = linearTween(timeElapsed, 10, 12)
		local scaledElapsed = 1 - elapsed
		updateBindings.button6(scaledElapsed)
	end
	if isBetweenFrames(timeElapsed, 12, 14) then
		local elapsed = linearTween(timeElapsed, 12, 14)
		local scaledElapsed = 1 - elapsed
		updateBindings.button7(scaledElapsed)
	end

	local totalFrame = buttonCount * 2
	local delay = if isMobilePlatform then 0 else 4
	if isBetweenFrames(timeElapsed, 0, delay) then
		updateBindings.gradient(1)
		updateBindings.frame(1)
		updateBindings.recIcon(1)
	elseif isBetweenFrames(timeElapsed, delay, totalFrame+2.5) then
		local elapsed = linearTween(timeElapsed, delay, totalFrame+2.5)
		local scaledElapsed = 1 - elapsed
		updateBindings.gradient(1-linearTween(timeElapsed, delay, totalFrame+2.5))
		updateBindings.recIcon(scaledElapsed)
		scaledElapsed = 1 - 0.8 * elapsed
		updateBindings.frame(scaledElapsed)
	else
		--Complete animation
		updateBindings.gradient(0)
		updateBindings.frame(frameFinalTransparency)
		updateBindings.recIcon(0)
		updateBindings.button1(0)
		updateBindings.button2(0)
		updateBindings.button3(0)
		updateBindings.button4(0)
		updateBindings.button5(0)
		updateBindings.button6(0)
		updateBindings.button7(0)
		updateBindings.button8(0)
		updateBindings.button9(0)
		stopCallback()
	end
end

function QuickActions:init()
	self.gradientTransparency, self.updateGradient = Roact.createBinding(1)
	self.frameTransparency, self.updateFrame = Roact.createBinding(1)
	self.recIconTransparency, self.updateRecIcon = Roact.createBinding(1)
	self.button1Transparency, self.updateButton1 = Roact.createBinding(1)
	self.button2Transparency, self.updateButton2 = Roact.createBinding(1)
	self.button3Transparency, self.updateButton3 = Roact.createBinding(1)
	self.button4Transparency, self.updateButton4 = Roact.createBinding(1)
	self.button5Transparency, self.updateButton5 = Roact.createBinding(1)
	self.button6Transparency, self.updateButton6 = Roact.createBinding(1)
	self.button7Transparency, self.updateButton7 = Roact.createBinding(1)
	self.button8Transparency, self.updateButton8 = Roact.createBinding(1)
	self.button9Transparency, self.updateButton9 = Roact.createBinding(1)

	self.transparencies = {
		self.button1Transparency,
		self.button2Transparency,
		self.button3Transparency,
		self.button4Transparency,
		self.button5Transparency,
		self.button6Transparency,
		self.button7Transparency,
		self.button8Transparency,
		self.button9Transparency,
	}
	self.updateBindings = {
		gradient = self.updateGradient,
		frame = self.updateFrame,
		recIcon = self.updateRecIcon,
		button1 = self.updateButton1,
		button2 = self.updateButton2,
		button3 = self.updateButton3,
		button4 = self.updateButton4,
		button5 = self.updateButton5,
		button6 = self.updateButton6,
		button7 = self.updateButton7,
		button8 = self.updateButton8,
		button9 = self.updateButton9,
	}
	self.animationStartTime = nil
	self.animationFunction = nil
	self.reverseAnimation = false
	self.renderSteppedConnection = nil
	self:setState({
		-- In order to see the disappear animation
		frameVisible = false,
		selfViewEnabled = if GetFFlagV3MenuAddSelfViewButtons() then StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.All) or StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView) else nil,
		hasCameraPermissions = false,
	})
	if FFlagEnableInGameMenuQAScreenshot then
		buttonCount = buttonCount + 1
	end
	if self.props.respawnEnabled then
		buttonCount = buttonCount + 1
	end
	if isDesktopClient then
		buttonCount = buttonCount + 1
	end
	self.recordEnabled = GameSettings.VideoCaptureEnabled and FFlagRecordRecording or false
	if self.recordEnabled then
		buttonCount = buttonCount + 1
	end

	if self.state.selfViewEnabled then
		buttonCount += 1
	end

	-- Dynamic desktop position for encroachment/overlap with the InGameMenu panel
	self.containerWidth = 0
	self.menuWidth = 0
	self.updateSizeConstraint = function()
		local leftEdge = self.containerWidth * 0.5 - self.menuWidth * 0.5
		local encroach =  IN_MENU_MENU_WIDTH_PAD - leftEdge
		if encroach > 0 then
			if not self.state.lockToMenuEdge then
				self:setState({
					lockToMenuEdge = true
				})
			end
		elseif self.state.lockToMenuEdge then
			self:setState({
				lockToMenuEdge = false
			})
		end
	end
	self.onContainerSizeChange = function(rbx)
		self.containerWidth = rbx.AbsoluteSize.x
		self.updateSizeConstraint()
	end
	self.onMenuSizeChange = function(rbx)
		self.menuWidth = rbx.AbsoluteSize.x
		self.updateSizeConstraint()
	end

	self.onCoreGuiChanged = function()
		local coreGuiState = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
		if self.state.selfViewEnabled ~= coreGuiState then
			self:setState({
				selfViewEnabled = coreGuiState
			})
		end
	end
end

if GetFFlagV3MenuAddSelfViewButtons() then
	--[[
		Check that the user's device has given Roblox camera permission.
	]]
	function QuickActions:getPermissions()
		local callback = function(response)
			self:setState({
				hasCameraPermissions = response.hasCameraPermissions,
			})

			if response.hasCameraPermissions then
				buttonCount += 1
			end
		end

		return getCamMicPermissions(callback)
	end

	function QuickActions:didMount()
		self:getPermissions()
	end
end
function QuickActions:render()
	return withStyle(function(style)
		return withVoiceState(function(voiceState)
		if not checkVoiceButton and voiceState.voiceEnabled then
			buttonCount = buttonCount + 2
			checkVoiceButton = true
		end
		frameFinalTransparency = style.Theme.UIMuted.Transparency
		local gradientWidth = CONTROL_WIDTH + 2 * NO_NOTCH_OFFSET
		
		if isMobilePlatform then
			return Roact.createElement("Frame", {
				Size = UDim2.new(0, gradientWidth, 1, 0),
				Position = UDim2.new(1, 0, 0, 0),
				AnchorPoint = Vector2.new(1, 0),
				BackgroundTransparency = self.gradientTransparency,
				Visible = self.state.frameVisible,
			}, {
				UIGradient = Roact.createElement("UIGradient", {
					Rotation = 180,
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),
						ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))
					}),
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0.0, 0.5),
						NumberSequenceKeypoint.new(1.0, 1.0),
					})
				}),
				SelfViewChangedEvent = GetFFlagV3MenuAddSelfViewButtons() and Roact.createElement(ExternalEventConnection, {
					event = StarterGui.CoreGuiChangedSignal,
					callback = self.onCoreGuiChanged,
				}),
				QuickActionFrame = Roact.createElement("Frame", {
					Size = UDim2.new(0, CONTROL_WIDTH, 1, 0),
					Position = UDim2.new(0.5, 0, 0, -TOOLTIP_HEIGHT/2),
					AnchorPoint = Vector2.new(0.5, 0),
					BackgroundTransparency = 1,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Right,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					Tooltip = Roact.createElement(QuickActionsTooltip, {
						layoutOrder = 1,
						transparency = self.recIconTransparency,
					}),
					Menu = Roact.createElement(QuickActionsMenu, {
						layoutOrder = 2,
						voiceEnabled = voiceState.voiceEnabled,
						respawnEnabled = self.props.respawnEnabled,
						fullscreenEnabled = false,
						screenshotEnabled = FFlagEnableInGameMenuQAScreenshot,
						recordEnabled = self.recordEnabled,
						cameraEnabled = self.state.hasCameraPermissions,
						-- Do not show Self View without mic enabled.
						selfViewEnabled = self.state.selfViewEnabled and voiceState.voiceEnabled,
						frameTransparency = self.frameTransparency,
						transparencies = self.transparencies,
						fillDirection = Enum.FillDirection.Vertical,
						automaticSize = Enum.AutomaticSize.Y,
						size = UDim2.new(0, CONTROL_WIDTH, 0, 0),
						isHorizontal = false,
					}),
				})
			})
		else
			return Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0, 0),
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 0, HORIZONTAL_CONTROL_HEIGHT),
				BackgroundTransparency = 1,
				Visible = self.state.frameVisible,
			}, {
				QuickActionGradient = Roact.createElement("Frame", {
					BorderSizePixel = 0,
					Position = UDim2.new(0, IN_MENU_MENU_WIDTH, 0, 0),
					Size = UDim2.new(1, -IN_MENU_MENU_WIDTH, 0, HORIZONTAL_CONTROL_HEIGHT),
					BackgroundTransparency = self.gradientTransparency,
				}, {
					UIGradient = Roact.createElement("UIGradient", {
						Rotation = 90,
						Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),
							ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))
						}),
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0.0, 0.5),
							NumberSequenceKeypoint.new(1.0, 1.0),
						})
					}),
				}),
				SelfViewChangedEvent = GetFFlagV3MenuAddSelfViewButtons() and Roact.createElement(ExternalEventConnection, {
					event = StarterGui.CoreGuiChangedSignal,
					callback = self.onCoreGuiChanged,
				}),
				QuickActionFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					[Roact.Change.AbsoluteSize] = self.onContainerSizeChange,
				}, {
					LeftPad = Roact.createElement("Frame", {
						Size = if self.state.lockToMenuEdge
							then UDim2.new(0, IN_MENU_MENU_WIDTH_PAD, 0, 1)
							else UDim2.new(0, 0, 0, 0),
						BackgroundTransparency = 1,
					}),
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						HorizontalAlignment = if self.state.lockToMenuEdge
							then Enum.HorizontalAlignment.Left
							else Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Top,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					TooltipMenuStack = Roact.createElement("Frame", {
						LayoutOrder = 2,
						BackgroundTransparency = 1,
						AutomaticSize = Enum.AutomaticSize.XY,
					}, {
						Layout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Vertical,
							HorizontalAlignment = Enum.HorizontalAlignment.Left,
							VerticalAlignment = Enum.VerticalAlignment.Top,
							SortOrder = Enum.SortOrder.LayoutOrder,
						}),
						Tooltip = Roact.createElement(QuickActionsTooltip, {
							Size = UDim2.new(0, 250, 0, 24),
							TextXAlignment =  Enum.TextXAlignment.Left,
							layoutOrder = 1,
							Position = UDim2.new(0, 0, 0, -35),
							transparency = self.recIconTransparency,
						}),
						Menu = Roact.createElement(QuickActionsMenu, {
							layoutOrder = 2,
							voiceEnabled = voiceState.voiceEnabled,
							respawnEnabled = self.props.respawnEnabled,
							fullscreenEnabled = isDesktopClient,
							screenshotEnabled = isDesktopClient,
							recordEnabled = self.recordEnabled,
							cameraEnabled = self.state.hasCameraPermissions,
							-- Do not show Self View without mic enabled.
							selfViewEnabled = self.state.selfViewEnabled and voiceState.voiceEnabled,
							frameTransparency = self.frameTransparency,
							transparencies = self.transparencies,
							fillDirection = Enum.FillDirection.Horizontal,
							automaticSize = Enum.AutomaticSize.X,
							size = UDim2.new(0, 0, 0, CONTROL_WIDTH),
							isHorizontal = true,
							absoluteSizeChanged = self.onMenuSizeChange,
						}),
					}),
				})
			})
		end
	end)
	end)
end

function QuickActions:didUpdate(prevProps, _)
	if self.props.visible then
		self:setState({
			frameVisible = true
		})
		-- RobloxGui's displayOrder is under InGameMenu, bring it up to show above InGameMenu.
		RobloxGuiDisplayOrderDefault = RobloxGui.DisplayOrder
		RobloxGui.DisplayOrder = Constants.DisplayOrder.RobloxGui
	else
		RobloxGui.DisplayOrder = RobloxGuiDisplayOrderDefault
	end
	if prevProps.visible ~= self.props.visible then
		self:playAnimation(showAnimation, prevProps.visible)
	end
end

function QuickActions:playAnimation(animFunc, reverse)
	if self.animationFunction then
		--Complete current animation
		self.animationFunction(100, self.updateBindings, self.reverseAnimation, function() end)
	end
	self.animationStartTime = tick()
	self.animationFunction = animFunc
	self.reverseAnimation = reverse
	if not self.renderSteppedConnection then
		self.renderSteppedConnection = RunService.RenderStepped:Connect(function()
			self.animationFunction(tick() - self.animationStartTime, self.updateBindings, self.reverseAnimation, function()
				self:stopAnimation()
			end)
		end)
	end
end

function QuickActions:stopAnimation()
	self:setState({
		frameVisible = false
	})
	if self.renderSteppedConnection then
		self.renderSteppedConnection:Disconnect()
		self.renderSteppedConnection = nil
	end
end

function QuickActions:willUnmount()
	self:stopAnimation()
end

local function mapStateToProps(state, _)
	return {
		respawnEnabled = state.respawn.enabled,
		visible = state.isMenuOpen,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(QuickActions)
