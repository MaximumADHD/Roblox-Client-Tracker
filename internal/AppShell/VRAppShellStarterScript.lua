-- Start up the VR Engines
local RobloxGui = Game:GetService("CoreGui"):FindFirstChild("RobloxGui")

-- Boot up the VR App Shell
local UserInputService = game:GetService('UserInputService')
local function onVREnabled(prop)
	if prop == "VREnabled" then
		if UserInputService.VREnabled then

			local shellInVRSuccess, shellInVRFlagValue = pcall(function() return settings():GetFFlag("EnabledAppShell3D") end)
			local shellInVR = (shellInVRSuccess and shellInVRFlagValue == true)

			if shellInVR then
				local modulesFolder = RobloxGui.Modules
				local appHomeModule = modulesFolder:FindFirstChild('Shell') and modulesFolder:FindFirstChild('Shell'):FindFirstChild('AppHome')
				if appHomeModule then
					require(appHomeModule)
				end
			end
		end
	end
end

spawn(function()
	if UserInputService.VREnabled then
		onVREnabled("VREnabled")
	end
	UserInputService.Changed:connect(onVREnabled)
end)
