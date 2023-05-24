local HapticService = game:GetService("HapticService")
local EventType = require(script.Parent.Parent.EventType)

type Event = EventType.Event

local HapticFeedbackEvent = {
	Name = "HapticFeedbackEvent",
}

function HapticFeedbackEvent.StartEvent()
	local leftController = Enum.UserInputType.Gamepad1
	local rightController = Enum.UserInputType.Gamepad2
	local hapticStrength = 10
	local hapticDuration = 1

	HapticService:SetMotor(leftController, Enum.VibrationMotor.Large, hapticStrength)
	HapticService:SetMotor(rightController, Enum.VibrationMotor.Large, hapticStrength)
	task.wait(hapticDuration)
	HapticService:SetMotor(leftController, Enum.VibrationMotor.Large, 0)
	HapticService:SetMotor(rightController, Enum.VibrationMotor.Large, 0)
end

return HapticFeedbackEvent :: Event
