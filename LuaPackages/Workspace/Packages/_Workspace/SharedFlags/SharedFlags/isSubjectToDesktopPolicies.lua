local UserInputService = game:GetService("UserInputService")
local platform = UserInputService:GetPlatform()

return function()
	local isDesktopClient = (platform == Enum.Platform.Windows)
		or (platform == Enum.Platform.OSX)
		or (platform == Enum.Platform.UWP)
	return isDesktopClient
end
