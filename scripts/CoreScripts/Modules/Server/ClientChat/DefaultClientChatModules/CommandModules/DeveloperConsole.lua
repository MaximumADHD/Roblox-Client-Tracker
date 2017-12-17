--	// FileName: DeveloperConsole.lua
--	// Written by: TheGamer101
--	// Description: Command to open or close the developer console.

local StarterGui = game:GetService("StarterGui")
local util = require(script.Parent:WaitForChild("Util"))

function ProcessMessage(message, ChatWindow, ChatSettings)
	if string.sub(message, 1, 8):lower() == "/console" then
		local success, developerConsoleVisible = pcall(function() return StarterGui:GetCore("DeveloperConsoleVisible") end)
		if success then
			local success, err = pcall(function() StarterGui:SetCore("DeveloperConsoleVisible", not developerConsoleVisible) end)
			if not success and err then
				print("Error making developer console visible: " ..err)
			end
		end
		return true
	end
	return false
end

return {
	[util.KEY_COMMAND_PROCESSOR_TYPE] = util.COMPLETED_MESSAGE_PROCESSOR,
	[util.KEY_PROCESSOR_FUNCTION] = ProcessMessage
}
