--[[ JumpCmd Transition ]]--
local baseTransition = require(script.Parent.Parent.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseTransitionModule"))

local JumpCmd = baseTransition:inherit()
JumpCmd.name = script.Name
JumpCmd.destinationName = "Jumping"
JumpCmd.sourceName = "Swimming, Running, Climbing, Seated, PlatformStanding"
JumpCmd.priority = 3

function JumpCmd:Test(stateMachine)
	local humanoid = stateMachine.context.humanoid
	local jumped = humanoid.Jump
	local currentState = stateMachine:GetCurrentStateName()
	
	-- need to check for too steep floor
	-- need to check if they are off floor for too long
	-- no jump if underwater
	
	if humanoid.Parent.PrimaryPart.Anchored == true then
		return false
	end	
	
	-- TODO - put this back once climbing sensor is working
	--if currentState == "Climbing" and not humanoid.FacingLadder then
	if currentState == "Climbing" then
		return false
	elseif currentState == "Seated" and humanoid.SeatPart == nil then
		humanoid.Sit = false
		return false
	end
	
	return jumped
end

return JumpCmd