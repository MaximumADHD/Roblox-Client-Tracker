local RunService = game:FindService("RunService")
local humanoid = script.Parent:FindFirstChildOfClass("Humanoid")
local debugPrint = false

local CCSMDef = require(game:FindService("ReplicatedStorage"):WaitForChild("CharacterStateMachine"):WaitForChild("CharacterControlStateMachine"))
local CCSM = CCSMDef.new(humanoid)
local currentState = ""

if debugPrint then
	print("CCSM Created", CCSM, CCSM.definition)
end

-- We want this to be before animation to set controls before the animation is updated.  Currently this signal is
-- disabled by FFlag (see Parker Stebbins as current (6/28/22) owner of this FFlag)
--RunService.PreAnimation:Connect(function(dt) 
RunService.Stepped:Connect(function(dt)
	CCSM:OnStepped(dt)
	
	if debugPrint then
		local newCurrentState = CCSM:GetCurrentStateName() 
		if (newCurrentState ~= currentState) then
			currentState = newCurrentState
			print(currentState)
		end
	end
end)
