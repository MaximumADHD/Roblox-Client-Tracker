local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local mockTranslator = require(script.Parent.mockTranslator)

return function()
	local coreScriptLocalization = CoreGui:FindFirstChild("CoreScriptLocalization")
	if coreScriptLocalization then
		return RobloxTranslator
	else
		return mockTranslator
	end
end