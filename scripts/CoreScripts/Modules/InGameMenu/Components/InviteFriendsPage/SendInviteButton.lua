local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent.Parent

local Constants = require(InGameMenu.Resources.Constants)
local InviteStatus = Constants.InviteStatus

local Assets = require(InGameMenu.Resources.Assets)
local Images = UIBlox.App.ImageSet.Images

local ImageSetLabel = UIBlox.Core.ImageSet.Label

local FFlagFixMenuIcons = require(InGameMenu.Flags.FFlagFixMenuIcons)

local SendInviteButton = Roact.PureComponent:extend("SendInviteButton")

SendInviteButton.validateProps = t.strictInterface({
	onActivated = t.callback,
	animationBegun = t.callback,
	animationEnded = t.callback,
	userInviteStatus = t.optional(t.string)
})

local FPS = 30

-- Returns 0-1 based on the value of time betweenStartFrame and endFrame
local function linearTween(dTime, startFrame, endFrame)
	local range = (endFrame - startFrame)/FPS
	return (dTime - (startFrame/FPS)) / range
end

local function isBetweenFrames(dTime, startFrame, endFrame)
	return dTime >= (startFrame/FPS) and dTime <= (endFrame/FPS)
end

local STATUS_TO_ANIMATION_MAP = {
	[InviteStatus.Pending] = function(timeElapsed, updateBindings)
		local maxTransparency = 0.75
		local minTransparency = 0
		local range = (maxTransparency - minTransparency) / 2

		-- Tween transparency on a sin wave for a transparency "pulse" effect
		local transparency = range + (range * math.sin(2 * math.pi * timeElapsed))
		updateBindings.sendTransparency(transparency)
	end,
	[InviteStatus.Success] = function(timeElapsed, updateBindings, stopCallback)
		-- Fade out send icon, fade-in and scale-down success icon
		if isBetweenFrames(timeElapsed, 0, 4) then
			local scaledElapse = linearTween(timeElapsed, 0, 4)
			updateBindings.sendTransparency(scaledElapse)
			updateBindings.successTransparency(1-scaledElapse)

			local successSizeMax = 1.5
			local successSizeMin = 0.75
			local range = successSizeMax-successSizeMin
			local size = successSizeMin + (range * (1 - scaledElapse))
			updateBindings.successSize(size)

		-- Complete fade-outs, scale success icon to normal size
		elseif isBetweenFrames(timeElapsed, 4, 9) then
			updateBindings.sendTransparency(1)
			updateBindings.successTransparency(0)

			local scaledElapse = linearTween(timeElapsed, 4, 9)
			local successSizeMax = 1
			local successSizeMin = 0.75
			local range = successSizeMax-successSizeMin
			local size = successSizeMin + (range * (scaledElapse))
			updateBindings.successSize(size)

		-- Complete success icon size tween,
		else
			updateBindings.successSize(1)
			stopCallback()
		end
	end,
	[InviteStatus.Failed] = function(timeElapsed, updateBindings, stopCallback)
		-- Fade out send icon
		if isBetweenFrames(timeElapsed, 0, 2) then
			local scaledElapse = linearTween(timeElapsed, 0, 4)
			updateBindings.sendTransparency(scaledElapse)

		-- Hold fadeout to frame 52
		elseif isBetweenFrames(timeElapsed, 2, 52) then
			updateBindings.sendTransparency(1)

		-- Fade in send icon
		elseif isBetweenFrames(timeElapsed, 52, 57) then
			local scaledElapse = linearTween(timeElapsed, 52, 57)
			updateBindings.sendTransparency(1-scaledElapse)

		-- Finish send fade-in and stop animation
		else
			updateBindings.sendTransparency(0)
			stopCallback()
		end

		-- Fade in fail icon
		if isBetweenFrames(timeElapsed, 0, 4) then
			local scaledElapse = linearTween(timeElapsed, 0, 4)
			updateBindings.failTransparency(1-scaledElapse)

		-- Shake fail icon
		elseif isBetweenFrames(timeElapsed, 4, 42) then
			updateBindings.failTransparency(0)

			local e = 2.71828182846
			-- Shake amplitude
			local a = -0.4
			-- Shake frequency
			local f = 40
			-- Shake damping
			local k = 8

			-- Damped oscillation https://www.desmos.com/calculator/ajx32emroq
			local et = timeElapsed - 4/FPS
			local pos = a * e^(-et * k) * math.sin(et * f)
			updateBindings.failPos(pos)

		-- Fadeout fail icon
		elseif isBetweenFrames(timeElapsed, 42, 47) then
			updateBindings.failPos(0)

			local scaledElapse = linearTween(timeElapsed, 42, 47)
			updateBindings.failTransparency(scaledElapse)

		-- Complete fadeout
		else
			updateBindings.failTransparency(1)
		end
	end,
}

function SendInviteButton:init(initialProps)
	local sendTransparency, updateSendTransparency = Roact.createBinding(0)
	local successTransparency, updateSuccessTransparency = Roact.createBinding(1)
	local failTransparency, updateFailTransparency = Roact.createBinding(1)

	local successSize, updateSuccessSize = Roact.createBinding(1)
	local failPos, updateFailPos = Roact.createBinding(0)

	self.bindings = {
		sendTransparency = sendTransparency,
		successTransparency = successTransparency,
		failTransparency = failTransparency,
		successSize = successSize:map(function(size)
			return UDim2.new(size, 0, size, 0)
		end),
		failPos = failPos:map(function(pos)
			return UDim2.new(pos, 0, 0, 0)
		end),
	}

	self.updateBindings = {
		sendTransparency = updateSendTransparency,
		successTransparency = updateSuccessTransparency,
		failTransparency = updateFailTransparency,
		successSize = updateSuccessSize,
		failPos = updateFailPos,
	}

	if initialProps.userInviteStatus == InviteStatus.Success then
		updateSuccessTransparency(0)
		updateSendTransparency(1)
	end
end

function SendInviteButton:render()
	local props = self.props

	return withStyle(function(style)
		return Roact.createElement("TextButton", {
			Size = UDim2.new(0, 36, 0, 36),
			BackgroundTransparency = 1,
			Text = "",

			[Roact.Event.Activated] = function()
				local isPending = props.userInviteStatus == InviteStatus.Pending
				local isSuccess = props.userInviteStatus == InviteStatus.Success
				if not self.renderSteppedConnection and not (isPending or isSuccess) then
					props.onActivated()
				end
			end
		}, {
			SendLabel = Roact.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,
				Image = FFlagFixMenuIcons and Images["icons/actions/friends/friendInvite"] or Assets.Images.SendInvite,
				Size = UDim2.new(1, 0, 1, 0),
				ImageColor3 = style.Theme.IconEmphasis.Color,

				ImageTransparency = self.bindings.sendTransparency,
			}),
			SuccessLabel = Roact.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,
				Image = FFlagFixMenuIcons and Images["icons/status/success"] or Assets.Images.InviteSuccess,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				ImageColor3 = style.Theme.IconEmphasis.Color,

				ImageTransparency = self.bindings.successTransparency,
				Size = self.bindings.successSize
			}),
			FailLabel = Roact.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,
				Image = FFlagFixMenuIcons and Images["icons/status/alert"] or Assets.Images.InviteFail,
				Size = UDim2.new(1, 0, 1, 0),
				ImageColor3 = style.Theme.IconEmphasis.Color,

				ImageTransparency = self.bindings.failTransparency,
				Position = self.bindings.failPos
			})
		})
	end)
end

function SendInviteButton:didUpdate(previousProps)
	if self.props.userInviteStatus and self.props.userInviteStatus ~= previousProps.userInviteStatus then
		self:playAnimation(STATUS_TO_ANIMATION_MAP[self.props.userInviteStatus])
	end
end

function SendInviteButton:didMount()
	if self.props.userInviteStatus then
		self:playAnimation(STATUS_TO_ANIMATION_MAP[self.props.userInviteStatus])
	end
end

function SendInviteButton:playAnimation(animFunc)
	self.animationStartTime = tick()
	self.animationFunction = animFunc

	if not self.renderSteppedConnection then
		self.renderSteppedConnection = RunService.RenderStepped:Connect(function()
			self.animationFunction(tick() - self.animationStartTime, self.updateBindings, function()
				self:stopAnimation()
			end)
		end)
		self.props.animationBegun()
	end
end

function SendInviteButton:stopAnimation()
	if self.renderSteppedConnection then
		self.renderSteppedConnection:Disconnect()
		self.renderSteppedConnection = nil
		self.props.animationEnded()
	end
end

function SendInviteButton:willUnmount()
	self:stopAnimation()
end

return SendInviteButton