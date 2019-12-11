local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Otter = InGameMenuDependencies.Otter
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent

local divideTransparency = require(InGameMenu.Utility.divideTransparency)

local AssetImage = require(script.Parent.AssetImage)

local KNOB_SIZE = 42
local KNOB_POSITION_OFF = UDim2.new(0, -3, 0.5, 0)
local KNOB_POSITION_ON = UDim2.new(1, -39, 0.5, 0)
local SPRING_PARAMETERS = {
	frequency = 4,
}

local ToggleSwitch = Roact.PureComponent:extend("ToggleSwitch")
ToggleSwitch.validateProps = t.strictInterface({
	checked = t.boolean,
	onToggled = t.callback,
	disabled = t.optional(t.boolean),

	AnchorPoint = t.optional(t.Vector2),
	LayoutOrder = t.optional(t.integer),
	Position = t.optional(t.UDim2),
})

function ToggleSwitch:init()
	local initialProgress = self.props.checked and 1 or 0
	self.progress, self.setProgress = Roact.createBinding(initialProgress)

	self.fillTransparency = self.progress:map(function(value)
		return 1 - value
	end)

	self.knobPosition = self.progress:map(function(value)
		return KNOB_POSITION_OFF:lerp(KNOB_POSITION_ON, value)
	end)

	self.motor = Otter.createSingleMotor(initialProgress)
	self.motor:onStep(self.setProgress)
end

function ToggleSwitch:render()
	return withStyle(function(style)
		return Roact.createElement(AssetImage.Button, {
			Size = UDim2.new(0, 60, 0, 36),
			BackgroundTransparency = 1,
			Position = self.props.Position,
			LayoutOrder = self.props.LayoutOrder,
			imageKey = "ToggleOutline",
			AnchorPoint = self.props.AnchorPoint,
			ImageColor3 = style.Theme.SecondaryDefault.Color,
			ImageTransparency = divideTransparency(style.Theme.SecondaryDefault.Transparency, self.props.disabled and 4 or 1),
			[Roact.Event.Activated] = self.props.onToggled,
		}, {
			Fill = Roact.createElement(AssetImage.Label, {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				imageKey = "ToggleFill",
				ImageColor3 = style.Theme.Success.Color,
				ImageTransparency = self.fillTransparency,
			}),
			Knob = Roact.createElement(AssetImage.Label, {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, KNOB_SIZE, 0, KNOB_SIZE),
				AnchorPoint = Vector2.new(0, 0.5),
				Position = self.knobPosition,
				imageKey = "ToggleKnob",
				ImageTransparency = divideTransparency(0, self.props.disabled and 4 or 1),
				ZIndex = 2,
			})
		})
	end)
end

function ToggleSwitch:didUpdate()
	local desiredProgress = self.props.checked and 1 or 0
	self.motor:setGoal(Otter.spring(desiredProgress, SPRING_PARAMETERS))
end

function ToggleSwitch:willUnmount()
	self.motor:destroy()
end

return ToggleSwitch