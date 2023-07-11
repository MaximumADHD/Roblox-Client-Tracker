--[[ CharacterControlStateMachine ]]--

local baseStateMachineClass = require(script.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseStateMachineModule"))
local characterBaseStateClass = require(script:WaitForChild("CharacterControlBaseStateModule"))

local CharacterControlStateMachine = baseStateMachineClass:inherit()
CharacterControlStateMachine.name = script.Name
CharacterControlStateMachine.definition.name = script.Name
CharacterControlStateMachine.definition.startingStateName = "Freefall"

local debugSphere

----------------------------------------------------------------------------------------------------------------------
-- Extension of baseStateMachineClass
----------------------------------------------------------------------------------------------------------------------
function CharacterControlStateMachine:OnCreate(parentCharacter, ...)
	self.context.character = parentCharacter
	local humanoid = parentCharacter:FindFirstChildOfClass("Humanoid")
	self.context.humanoid = humanoid
	self.context.controllerManager = humanoid:WaitForChild("ControllerManager")
	self.context.noFloorTimer = 0
	self.context.hadHealth = false
	self.context.hadNeck = false
	self.context.requiresNeck = humanoid.RequiresNeck
end

function CharacterControlStateMachine:OnStepped(dt)
	self:UpdateFloorDistance()
	baseStateMachineClass.OnStepped(self, dt)
	if self.context.requiresNeck ~= self.context.humanoid.RequiresNeck then
		self.context.requiresNeck = self.context.humanoid.RequiresNeck
		if not self.context.requiresNeck then
			self.context.hadNeck = false
		end
	end
	self.context.hadHealth = self.context.hadHealth or self.context.humanoid.Health > 0
end

function CharacterControlStateMachine:CreateState()
	return characterBaseStateClass:inherit()
	-- may need to add this transition to the state machine transition definition list
end

----------------------------------------------------------------------------------------------------------------------
-- New methods for state machine
----------------------------------------------------------------------------------------------------------------------
function CharacterControlStateMachine:OnStartup()
end

function CharacterControlStateMachine:OnShutdown()
end


function CharacterControlStateMachine:UpdateFloorDistance()
	if not self.context.controllerManager or not self.context.controllerManager.GroundSensor then
		return
	end
	local groundOffset = self.context.controllerManager.RunningController.GroundOffset
	local groundSensor = self.context.controllerManager.GroundSensor
	local humanoid = self.context.humanoid
	local humanoidRootPartSize = Vector3.new(2, 2, 1)
	local character = humanoid.Parent
	local torso = nil

	torso = character:WaitForChild("HumanoidRootPart", 0.1)
	
	if not torso then
		return
	end
	local torsoSize = torso.Size

	-- these reinitialized depending on rig type below
	local characterScale = 1
	local maxDistance = torsoSize.y * 0.5

	-- If AutomaticScaling is enabled then the HumanoidRootPart will be moved to align with the leg length of the character.
	if humanoid.AutomaticScalingEnabled then
		-- Half size is 40% of the size, this is the remaining 10%
		maxDistance = 0.1 * torsoSize.y
	else
		-- This compensates for the lower HumanoidRootPart height
		local rigSet = -0.25 * torsoSize.y
		maxDistance -= rigSet
	end

	local currentHipHeight = groundOffset - torsoSize.y * 0.5
	characterScale = currentHipHeight / 2 -- 2 is the R15 hipHeight

	local oldFloor = groundSensor.SensedPart
	local hysteresis = oldFloor and 1.5 or 1.1
	-- TODO: haha this better be right
	local verticalVelocity = math.abs(torso.AssemblyLinearVelocity.y)
	verticalVelocity /= characterScale
	-- NOTE: the 100 comes from DFInt::FreeFallFloorSearchDistanceIncreaseVelocity
	if verticalVelocity > 100 then
		hysteresis += verticalVelocity / 100
	end

	maxDistance += hysteresis * groundOffset

	groundSensor.SearchDistance = maxDistance
end

----------------------------------------------------------------------------------------------------------------------
-- Initialization of Definition
----------------------------------------------------------------------------------------------------------------------

local States = { "Climbing", "Freefall", "Dead", "FallingDown", "GettingUp", "Landed", "Physics", "Ragdoll",
	"Running", "Jumping", "Seated", "Swimming", "PlatformStanding"}

local Transitions = { "AwayLdr", "OffFloorJumping", "JumpRagdollCmd", "SitCmd", "NoHealth", "NoSitCmd", 
	"NoPlatformStandCmd", "OffFloorGrace", "OnFloor", "OnFloorClimbing", "Finished", "HasBuoyancy",  
	"TimerUpGettingUp", "TimerUpRunning", "NoBuoyancy", "TouchedHard", "Tipped", "PlatformStandCmd",  
	"Upright", "JumpCmd", "NoNeck", "FaceLdr", "AutoJump" }

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
