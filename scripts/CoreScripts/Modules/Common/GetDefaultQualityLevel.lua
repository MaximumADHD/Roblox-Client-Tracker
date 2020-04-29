--!nocheck

local UserInputService = game:GetService("UserInputService")

return function()
	return Enum.Platform.XBoxOne == UserInputService:GetPlatform() and Enum.QualityLevel.Level21 or Enum.QualityLevel.Automatic
end