local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local Otter = require(CorePackages.Otter)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local DropDownButton = require(script.Parent.DropDownButton)

local POSITION_MOTOR_OPTIONS = {
    dampingRatio = 1,
    frequency = 4,
}

local OVERLAY_MOTOR_OPTIONS = {
	dampingRatio = 1,
    frequency = 4,
}

local DropDownAnimator = Roact.PureComponent:extend("DropDownAnimator")

DropDownAnimator.validateProps = t.strictInterface({
	text = t.string,
	icon = t.union(t.string, t.table),
	lastButton = t.boolean,
	layoutOrder = t.integer,
	onActivated = t.callback,
	forceShowOptions = t.boolean,
	selectedPlayer = t.optional(t.instanceIsA("Player")),
	onDecline = t.optional(t.callback),
	onDismiss = t.optional(t.callback),
})

function DropDownAnimator:init()
	self.state = {
		lastButtonProps = nil,
		onDeclineCalled = nil,
		onActivatedCalled = nil,
		overlayPercentage = 0,
	}

	self.currentButtonPosition, self.updateCurrentButtonPosition = Roact.createBinding(UDim2.new(0, 0, 0, 0))
	self.lastButtonPosition, self.updateLastButtonPosition = Roact.createBinding(UDim2.new(0, 0, 0, 0))

	self.positionMotor = Otter.createSingleMotor(0)
	self.positionMotor:onStep(function(position)
		self.updateCurrentButtonPosition(UDim2.new(position, 0, 0, 0))
		if self.animatingRight then
			self.updateLastButtonPosition(UDim2.new(position + 1, 0, 0, 0))
		else
			self.updateLastButtonPosition(UDim2.new(position - 1, 0, 0, 0))
		end
	end)
	self.positionMotor:onComplete(function(position)
		if position == 0 then
			self:setState({
				lastButtonProps = Roact.None,
				onDeclineCalled = Roact.None,
				onActivatedCalled = Roact.None,
			})
		end
	end)

	self.overlayMotor = Otter.createSingleMotor(0)
	self.overlayMotor:onStep(function(percentage)
		self:setState({
			overlayPercentage = percentage,
		})
	end)
	self.overlayMotor:onComplete(function(percentage)
		if percentage == 1 then
			self.positionMotor:setGoal(Otter.spring(0, POSITION_MOTOR_OPTIONS))
		end
	end)
end

function DropDownAnimator:getButtonProps(animatorProps, isPreviousButton)
	local buttonProps = {}
	buttonProps.text = animatorProps.text
	buttonProps.icon = animatorProps.icon
	buttonProps.lastButton = animatorProps.lastButton
	buttonProps.forceShowOptions = animatorProps.forceShowOptions
	buttonProps.onDismiss = animatorProps.onDismiss

	local isAnimating = self.state.lastButtonProps ~= nil
	if isAnimating then
		if isPreviousButton then
			buttonProps.animatingAccept = self.state.onActivatedCalled
			buttonProps.animatingDecline = self.state.onDeclineCalled
			buttonProps.animatingPercentage = self.state.overlayPercentage
		end
	else
		if animatorProps.onActivated and (animatorProps.onDecline or self.props.forceShowOptions) then
			buttonProps.onActivated = function()
				self:setState({
					onActivatedCalled = true,
					onDeclineCalled = false,
				})
				animatorProps.onActivated()
			end
		elseif animatorProps.onActivated then
			buttonProps.onActivated = animatorProps.onActivated
		end
		if animatorProps.onDecline then
			buttonProps.onDecline = function()
				self:setState({
					onActivatedCalled = false,
					onDeclineCalled = true,
				})
				animatorProps.onDecline()
			end
		end
	end

	return buttonProps
end

function DropDownAnimator:render()
	return WithLayoutValues(function(layoutValues)
		local children = {}

		children.CurrentButtonContainer = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = self.currentButtonPosition,
			BackgroundTransparency = 1,
		}, {
			DropDownButton = Roact.createElement(DropDownButton, self:getButtonProps(self.props))
		})

		if self.state.lastButtonProps then
			children.LastButtonContainer = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = self.lastButtonPosition,
				BackgroundTransparency = 1,
			}, {
				DropDownButton = Roact.createElement(DropDownButton, self:getButtonProps(self.state.lastButtonProps, true))
			})
		end

		return Roact.createElement("Frame", {
			ZIndex = 2,
			Size = UDim2.new(1, 0, 0, layoutValues.DropDownButtonSizeY),
			BackgroundTransparency = 1,
			LayoutOrder = self.props.layoutOrder,
		}, children)
	end)
end

function DropDownAnimator:didUpdate(previousProps, previousState)
	local updatedText = self.props.text ~= previousProps.text
	local animatableLastProps = previousProps.onDecline ~= nil or self.props.forceShowOptions
	local pressedAnOption = self.state.onDeclineCalled or self.state.onActivatedCalled

	if updatedText and animatableLastProps and pressedAnOption then
		if self.state.onActivatedCalled and not self.props.forceShowOptions then
			self.animatingRight = true
			self.positionMotor:setGoal(Otter.instant(-1))
		else
			self.animatingRight = false
			self.positionMotor:setGoal(Otter.instant(1))
		end
		self.overlayMotor:setGoal(Otter.instant(0))
		self.positionMotor:step(0)
		self.overlayMotor:step(0)

		self:setState({
			lastButtonProps = previousProps,
		})
		self.overlayMotor:setGoal(Otter.spring(1, OVERLAY_MOTOR_OPTIONS))
	end

	if self.props.selectedPlayer ~= previousProps.selectedPlayer then
		self.positionMotor:setGoal(Otter.instant(0))
		self.overlayMotor:setGoal(Otter.instant(0))
		self.positionMotor:step(0)
		self.overlayMotor:step(0)

		self:setState({
			lastButtonProps = Roact.None,
		})
	end
end

function DropDownAnimator:willUnmount()
	self.positionMotor:destroy()
	self.positionMotor = nil
	self.overlayMotor:destroy()
	self.overlayMotor = nil
end

return DropDownAnimator