--[[ CharacterControlStateMachine ]]--
local baseStateMachine = require(script.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseStateMachineModule"))

local CharacterControlStateMachine = baseStateMachine:extend()
CharacterControlStateMachine.definition.name = script.Name
CharacterControlStateMachine.definition.startingStateName = "FreeFall"

function CharacterControlStateMachine:OnCreate(parentHumanoid, ...)
	self.context.humanoid = parentHumanoid
	self.context.controllerManager = parentHumanoid:WaitForChild("ControllerManager")
end

----------------------------------------------------------------------------------------------------------------------
-- Initialization of Definition
----------------------------------------------------------------------------------------------------------------------

local States = { "Climbing", "FreeFall", "Dead", "FallingDown", "GettingUp", "Landed", "Physics", "Ragdoll",
	"Running", "Jumping", "Seated", "Swimming", "PlatformStanding"}

local Transitions = { "AwayLdr", "OffFloorJumping", "JumpRagdollCmd", "SitCmd", "NoHealth", "NoSitCmd", 
	"NoPlatformStandCmd", "OffFloorGrace", "OnFloor", "Finished", "HasBuoyancy", "TimerUpGettingUp", 
	"TimerUpRunning", "NoBuoyancy", "TouchedHard", "Tipped", "PlatformStandCmd", "Upright", "JumpCmd", 
	"NoNeck", "FaceLdr" }

local Definition = CharacterControlStateMachine.definition
local StateFolder = script:WaitForChild("States")
if StateFolder ~= nil then
	for _, stateName in pairs (States) do
		stateModule = StateFolder:WaitForChild(stateName)
		if stateModule:IsA("ModuleScript") then
			Definition.stateDefs[stateModule.name] = require(stateModule)
		end
	end
end

local TransitionFolder = script:WaitForChild("Transitions")
if TransitionFolder ~= nil then
	for _, transitionName in pairs (Transitions) do
		local transitionModule = TransitionFolder:WaitForChild(transitionName)
		if transitionModule:IsA("ModuleScript") then
			Definition.transitionDefs[transitionModule.name] = require(transitionModule)
		end
	end
end

local startState = Definition.startingStateName
if startState ~= nil then
	Definition.startingStateName = startState
end

return CharacterControlStateMachine
