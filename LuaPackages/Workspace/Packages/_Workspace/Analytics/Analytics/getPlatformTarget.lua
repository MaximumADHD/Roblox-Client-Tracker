local UserInputService = game:GetService("UserInputService")

local getPlatformTargetImpl = require(script.Parent["getPlatformTarget.impl"])

return getPlatformTargetImpl(UserInputService)
