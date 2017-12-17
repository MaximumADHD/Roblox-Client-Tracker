local rbxGui = game:GetService("CoreGui"):FindFirstChild("RobloxGui")

-- Main entry into AppShell
require(rbxGui.Modules.Shell.AppHome)

-- TODO: Clean this up so it doesn't get created anymore, but for now we should remove it
spawn(function()
	local controlFrame = rbxGui:WaitForChild('ControlFrame')
	controlFrame:Destroy()
end)
