local HapticService = game:GetService("HapticService")
local EventType = require(script.Parent.Parent.EventType)

type Event = EventType.Event

local HapticFeedbackEvent = {
	Name = "HapticFeedbackTwiceEvent",
}

function HapticFeedbackEvent.StartEvent()
	local leftController = Enum.UserInputType.Gamepad1
	local rightController = Enum.UserInputType.Gamepad2
	local hapticStrength = 5
	local hapticDuration = 0.5

	for i = 1, 2, 1 do
		HapticService:SetMotor(leftController, Enum.VibrationMotor.Large, hapticStrength)
		HapticService:SetMotor(rightController, Enum.VibrationMotor.Large, hapticStrength)
		task.wait(hapticDuration)
		HapticService:SetMotor(leftController, Enum.VibrationMotor.Large, 0)
		HapticService:SetMotor(rightController, Enum.VibrationMotor.Large, 0)
		task.wait(hapticDuration / 4)
	end
end

return HapticFeedbackEvent :: Event
