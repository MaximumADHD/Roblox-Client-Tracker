local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local withStyle = UIBlox.Core.Style.withStyle
local QuickActionsTooltip = require(script.QuickActionsTooltip)
local QuickActionsMenu = require(script.QuickActionsMenu)

local FFlagEnableInGameMenuQAScreenshot = game:DefineFastFlag("EnableInGameMenuQAScreenshot", true)

local QuickActions = Roact.PureComponent:extend("QuickActions")

-- Wait for LocalPlayer to exist
local localPlayer = Players.LocalPlayer
if not localPlayer then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	localPlayer = Players.LocalPlayer
end
local touchControlGui = nil

local CONTROL_WIDTH = 60
local NOTCH_OFFSET = 44
local NO_NOTCH_OFFSET = 24
local TOOLTIP_HEIGHT = 36
local FPS = 30

QuickActions.validateProps = t.strictInterface({
	visible = t.boolean,
	voiceEnabled = t.boolean,
})

local function linearTween(dTime, startFrame, endFrame)
	local range = (endFrame - startFrame)/FPS
	return (dTime - (startFrame/FPS)) / range
end

local function isBetweenFrames(dTime, startFrame, endFrame)
	return dTime >= (startFrame/FPS) and dTime <= (endFrame/FPS)
end

local buttonCount = 2 -- default: Respawn, Report
local frameFinalTransparency = 0.2 -- default: style.Theme.UIMuted

local function showAnimation(timeElapsed, updateBindings, reverse, stopCallback)
	if reverse then
		if isBetweenFrames(timeElapsed, 0, 5) then
			local elapsed = linearTween(timeElapsed, 0, 5)
			updateBindings.gradient(elapsed)
			if elapsed > frameFinalTransparency then
				updateBindings.frame(elapsed)
			end
			-- updateBindings.frame(0.2 + elapsed * 0.8)
			updateBindings.button1(elapsed)
			updateBindings.button2(elapsed)
			updateBindings.button3(elapsed)
			updateBindings.button4(elapsed)
			updateBindings.button5(elapsed)
		else
			local finalTransparency = 1
			updateBindings.gradient(finalTransparency)
			updateBindings.frame(finalTransparency)
			updateBindings.button1(finalTransparency)
			updateBindings.button2(finalTransparency)
			updateBindings.button3(finalTransparency)
			updateBindings.button4(finalTransparency)
			updateBindings.button5(finalTransparency)
			stopCallback()
		end
		return
	end
	--[[
		- frame 0 -> 9.5   300ms
		- frame 2  (50ms x buttonCcount)
	]]
	if isBetweenFrames(timeElapsed, 9.5, 11.5) then
		local elapsed = linearTween(timeElapsed, 9.5, 11.5)
		local scaledElapsed = 1 - elapsed
		updateBindings.button1(scaledElapsed)
	end

	if isBetweenFrames(timeElapsed, 11.5, 13.5) then
		local elapsed = linearTween(timeElapsed, 11.5, 13.5)
		local scaledElapsed = 1 - elapsed
		updateBindings.button2(scaledElapsed)
	end

	if isBetweenFrames(timeElapsed, 13.5, 15.5) then
		local elapsed = linearTween(timeElapsed, 13.5, 15.5)
		local scaledElapsed = 1 - elapsed
		updateBindings.button3(scaledElapsed)
	end

	if isBetweenFrames(timeElapsed, 15.5, 17.5) then
		local elapsed = linearTween(timeElapsed, 15.5, 17.5)
		local scaledElapsed = 1 - elapsed
		updateBindings.button4(scaledElapsed)
	end
	if isBetweenFrames(timeElapsed, 17.5, 19.5) then
		local elapsed = linearTween(timeElapsed, 17.5, 19.5)
		local scaledElapsed = 1 - elapsed
		updateBindings.button5(scaledElapsed)
	end

	local totalFrame = buttonCount * 2 + 9.5
	if isBetweenFrames(timeElapsed, 0, 9.5) then
		updateBindings.gradient(1)
		updateBindings.frame(1)
	elseif isBetweenFrames(timeElapsed, 9.5, totalFrame) then
		local elapsed = linearTween(timeElapsed, 9.5, totalFrame)
		local scaledElapsed = 1 - elapsed
		updateBindings.gradient(scaledElapsed)
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
		stopCallback()
	end
end

function QuickActions:init()
	-- self.backgroundTransparency, self.updateBackgroundTransparency = Roact.createBinding(1)
	self.gradientTransparency, self.updateGradient = Roact.createBinding(1)
	self.frameTransparency, self.updateFrame = Roact.createBinding(1)
	self.button1Transparency, self.updateButton1 = Roact.createBinding(1)
	self.button2Transparency, self.updateButton2 = Roact.createBinding(1)
	self.button3Transparency, self.updateButton3 = Roact.createBinding(1)
	self.button4Transparency, self.updateButton4 = Roact.createBinding(1)
	self.button5Transparency, self.updateButton5 = Roact.createBinding(1)

	self.updateBindings = {
		gradient = self.updateGradient,
		frame = self.updateFrame,
		button1 = self.updateButton1,
		button2 = self.updateButton2,
		button3 = self.updateButton3,
		button4 = self.updateButton4,
		button5 = self.updateButton5,
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
	if self.props.voiceEnabled then
		buttonCount = buttonCount + 2
	end

	local touchScreenGui = localPlayer.PlayerGui:FindFirstChild("TouchGui")
	if touchScreenGui then
		touchControlGui = touchScreenGui:FindFirstChild("TouchControlFrame")
	end
end

function QuickActions:render()
	return withStyle(function(style)
		frameFinalTransparency = style.Theme.UIMuted.Transparency
		local gradientWidth = CONTROL_WIDTH
		if game:GetEngineFeature("NotchSpaceSupportEnabled") then
			gradientWidth = gradientWidth + 2 * NOTCH_OFFSET
		else
			gradientWidth = gradientWidth + 2 * NO_NOTCH_OFFSET
		end
		local transparencies = {
			frame = self.frameTransparency,
			button1 = self.button1Transparency,
			button2= self.button2Transparency,
			button3 = self.button3Transparency,
			button4 = self.button4Transparency,
			button5 = self.button5Transparency,
		}
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
					voiceEnabled = self.props.voiceEnabled,
					screenshotEnabled = FFlagEnableInGameMenuQAScreenshot,
					transparencies = transparencies,
				}),
			})
		})
	end)
end

function QuickActions:didUpdate(prevProps, _)
	if self.props.visible == true then
		self:setState({
			frameVisible = true
		})
		if touchControlGui then
			touchControlGui.Visible = false
		end
	else
		if touchControlGui then
			touchControlGui.Visible = true
		end
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
	local voiceEnabled = false
	if state.voiceState then
		voiceEnabled = state.voiceState.voiceEnabled or false
	end
	return {
		visible = state.isMenuOpen,
		voiceEnabled = voiceEnabled,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(QuickActions)
