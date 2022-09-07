--!nonstrict
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local withStyle = UIBlox.Core.Style.withStyle
local QuickActionsTooltip = require(script.QuickActionsTooltip)
local QuickActionsMenu = require(script.QuickActionsMenu)
local withVoiceState = require(RobloxGui.Modules.VoiceChat.VoiceStateContext).withVoiceState

local InGameMenu = script.Parent.Parent
local Constants = require(InGameMenu.Resources.Constants)

local FFlagEnableInGameMenuQAScreenshot = game:DefineFastFlag("EnableInGameMenuQAScreenshot", false)

local QuickActions = Roact.PureComponent:extend("QuickActions")

local RobloxGuiDisplayOrderDefault = 0 -- default as 0

local CONTROL_WIDTH = 60
local HORIZONTAL_CONTROL_HEIGHT = 108
local NOTCH_OFFSET = 44
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

local function linearTween(dTime, startFrame, endFrame)
	local range = (endFrame - startFrame)/FPS
	return (dTime - (startFrame/FPS)) / range
end

local function isBetweenFrames(dTime, startFrame, endFrame)
	return dTime >= (startFrame/FPS) and dTime <= (endFrame/FPS)
end

local buttonCount = 1 -- default: Report
local frameFinalTransparency = 0.2 -- default: style.Theme.UIMuted

local function showAnimation(timeElapsed, updateBindings, reverse, stopCallback)
	if reverse then
		if isBetweenFrames(timeElapsed, 0, 5) then
			local elapsed = linearTween(timeElapsed, 0, 5)
			-- updateBindings.frame(0.2 + elapsed * 0.8)
			updateBindings.button1(elapsed)
			updateBindings.button2(elapsed)
			updateBindings.button3(elapsed)
			updateBindings.button4(elapsed)
			updateBindings.button5(elapsed)
			updateBindings.button6(elapsed)
		else
			local finalTransparency = 1
			updateBindings.button1(finalTransparency)
			updateBindings.button2(finalTransparency)
			updateBindings.button3(finalTransparency)
			updateBindings.button4(finalTransparency)
			updateBindings.button5(finalTransparency)
			stopCallback()
		end
		updateBindings.gradient(1)
		updateBindings.frame(1)
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
	local totalFrame = buttonCount * 2
	local delay = if isMobilePlatform then 0 else 4
	if isBetweenFrames(timeElapsed, 0, delay) then
		updateBindings.gradient(1)
		updateBindings.frame(1)
	elseif isBetweenFrames(timeElapsed, delay, totalFrame+2.5) then
		local elapsed = linearTween(timeElapsed, delay, totalFrame+2.5)
		local scaledElapsed = 1 - elapsed
		updateBindings.gradient(1-linearTween(timeElapsed, delay, totalFrame+2.5))
		scaledElapsed = 1 - 0.8 * elapsed
		updateBindings.frame(scaledElapsed)
	else
		--Complete animation
		updateBindings.gradient(0)
		updateBindings.frame(frameFinalTransparency)
		updateBindings.button1(0)
		updateBindings.button2(0)
		updateBindings.button3(0)
		updateBindings.button4(0)
		updateBindings.button5(0)
		updateBindings.button6(0)
		stopCallback()
	end
end

function QuickActions:init()
	self.gradientTransparency, self.updateGradient = Roact.createBinding(1)
	self.frameTransparency, self.updateFrame = Roact.createBinding(1)
	self.button1Transparency, self.updateButton1 = Roact.createBinding(1)
	self.button2Transparency, self.updateButton2 = Roact.createBinding(1)
	self.button3Transparency, self.updateButton3 = Roact.createBinding(1)
	self.button4Transparency, self.updateButton4 = Roact.createBinding(1)
	self.button5Transparency, self.updateButton5 = Roact.createBinding(1)
	self.button6Transparency, self.updateButton6 = Roact.createBinding(1)

	self.transparencies = {
		frame = self.frameTransparency,
		button1 = self.button1Transparency,
		button2= self.button2Transparency,
		button3 = self.button3Transparency,
		button4 = self.button4Transparency,
		button5 = self.button5Transparency,
		button6 = self.button6Transparency,
	}

	self.updateBindings = {
		gradient = self.updateGradient,
		frame = self.updateFrame,
		button1 = self.updateButton1,
		button2 = self.updateButton2,
		button3 = self.updateButton3,
		button4 = self.updateButton4,
		button5 = self.updateButton5,
		button6 = self.updateButton6,
	}
	self.animationStartTime = nil
	self.animationFunction = nil
	self.reverseAnimation = false
	self.renderSteppedConnection = nil
	self:setState({
		-- In order to see the disappear animation
		frameVisible = false
	})
	if FFlagEnableInGameMenuQAScreenshot then
		buttonCount = buttonCount + 1
	end
	if self.props.respawnEnabled then
		buttonCount = buttonCount + 1
	end
	if self.props.voiceEnabled then
		buttonCount = buttonCount + 2
	end

	if isDesktopClient then
		buttonCount = buttonCount + 1
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
end

function QuickActions:render()
	return withStyle(function(style)
		return withVoiceState(function(voiceState)
		frameFinalTransparency = style.Theme.UIMuted.Transparency
		local gradientWidth = CONTROL_WIDTH
		if game:GetEngineFeature("NotchSpaceSupportEnabled") then
			gradientWidth = gradientWidth + 2 * NOTCH_OFFSET
		else
			gradientWidth = gradientWidth + 2 * NO_NOTCH_OFFSET
		end

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
					}),
					Menu = Roact.createElement(QuickActionsMenu, {
						layoutOrder = 2,
						voiceEnabled = voiceState.voiceEnabled,
						respawnEnabled = self.props.respawnEnabled,
						fullscreenEnabled = false,
						screenshotEnabled = FFlagEnableInGameMenuQAScreenshot,
						transparencies = self.transparencies,
						fillDirection = Enum.FillDirection.Vertical,
						automaticSize = Enum.AutomaticSize.Y,
						size = UDim2.new(0, CONTROL_WIDTH, 0, 0),
						isHorizontal = false,
					}),
				})
			})
		else
			local isDesktopClient = platform == Enum.Platform.OSX or platform == Enum.Platform.Windows
			return Roact.createElement("Frame", {
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
						VerticalAlignment = Enum.VerticalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					Menu = Roact.createElement(QuickActionsMenu, {
						layoutOrder = 1,
						voiceEnabled = voiceState.voiceEnabled,
						respawnEnabled = self.props.respawnEnabled,
						fullscreenEnabled = isDesktopClient,
						screenshotEnabled = FFlagEnableInGameMenuQAScreenshot,
						transparencies = self.transparencies,
						fillDirection = Enum.FillDirection.Horizontal,
						automaticSize = Enum.AutomaticSize.X,
						size = UDim2.new(0, 0, 0, CONTROL_WIDTH),
						isHorizontal = true,
						absoluteSizeChanged = self.onMenuSizeChange,
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
