local StarterGui = game:GetService("StarterGui")

local CommandTypes = require(script.Parent.types)
local command: CommandTypes.Command = {
	name = script.Name,
	alias = { "/console" },
	clientRun = function()
		local success, developerConsoleVisible = pcall(function()
			return StarterGui:GetCore("DevConsoleVisible")
		end)
		if success then
			pcall(function()
				StarterGui:SetCore("DevConsoleVisible", not developerConsoleVisible)
			end)
		end

		return nil
	end,
}

return command
