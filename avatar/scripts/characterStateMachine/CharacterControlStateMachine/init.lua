--[[ CharacterControlStateMachine ]]--

local baseStateMachineClass = require(script.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseStateMachineModule"))
local characterBaseStateClass = require(script:WaitForChild("CharacterControlBaseStateModule"))

local CharacterControlStateMachine = baseStateMachineClass:inherit()
CharacterControlStateMachine.name = script.Name
CharacterControlStateMachine.definition.name = script.Name
CharacterControlStateMachine.definition.startingStateName = "FreeFall"

local debug_string = false
local debug_visual = false

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
	if debug_visual then
		debugSphere = Instance.new("Part")
		debugSphere.Shape = Enum.PartType.Ball
		debugSphere.Material = Enum.Material.SmoothPlastic
		debugSphere.Parent = workspace
		debugSphere.CanCollide = false
		debugSphere.Anchored = true
		debugSphere.Size = Vector3.new(1, 1, 1)
	end
end

function CharacterControlStateMachine:OnStepped(dt)
	self:UpdateFloorDistance()
	baseStateMachineClass.OnStepped(self, dt)
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
	local stringo = ""
	if not self.context.controllerManager or not self.context.controllerManager.GroundSensor then
		print("X")
		return
	end
	local groundOffset = self.context.controllerManager.RunningController.GroundOffset
	local groundSensor = self.context.controllerManager.GroundSensor
	local humanoid = self.context.humanoid
	local humanoidRootPartSize = Vector3.new(2, 2, 1)
	local character = humanoid.Parent
	local torso = nil
	-- TODO: not sure about these
	if humanoid.RigType == Enum.HumanoidRigType.R6 then
		if debug_string then
			stringo = stringo .. "a"
		end
		torso = character:WaitForChild("Torso")
	else
		if debug_string then
			stringo = stringo .. "b"
		end
		torso = character:WaitForChild("HumanoidRootPart")
	end
	local torsoSize = torso.Size
	local halfSize = torsoSize * 0.4

	-- these reinitialized depending on rig type below
	local characterScale = 1
	local maxDistance = torsoSize.y * 0.5

	if humanoid.RigType == Enum.HumanoidRigType.R15 then
		-- If AutomaticScaling is enabled then the HumanoidRootPart will be moved to align with the leg length of the character.
		if humanoid.AutomaticScalingEnabled then
			-- Half size is 40% of the size, this is the remaining 10%
			if debug_string then
				stringo = stringo .. "c"
			end
			maxDistance = 0.1 * torsoSize.y
		else
			-- This compensates for the lower HumanoidRootPart height
			if debug_string then
				stringo = stringo .. "d"
			end
			local rigSet = -0.25 * torsoSize.y
			halfSize.y = rigSet
			maxDistance -= rigSet
		end

		local currentHipHeight = groundOffset - torsoSize.y * 0.5
		characterScale = currentHipHeight / 2 -- 2 is the R15 hipHeight
	else
		-- For R6 the scale of the HumanoidRootPart should not be added to the max size
		-- The floor raycast is offset by the halfSize distance
		-- This distance is 10% less than half the size of the root part so we add in that difference here
		if debug_string then
			stringo = stringo .. "e"
		end
		maxDistance = torsoSize.y * 0.1
		characterScale = torsoSize.y / humanoidRootPartSize.y
	end

	local oldFloor = groundSensor.SensedPart
	local hysteresis = oldFloor and 1.5 or 1.1
	if debug_string then
		if oldFloor then
			stringo = stringo .. "f"
		else
			stringo = stringo .. "g"
		end
	end
	-- TODO: haha this better be right
	local verticalVelocity = math.abs(torso.AssemblyLinearVelocity.y)
	verticalVelocity /= characterScale
	-- NOTE: the 100 comes from DFInt::FreeFallFloorSearchDistanceIncreaseVelocity
	if verticalVelocity > 100 then
		if debug_string then
			stringo = stringo .. "h"
		end
		hysteresis += verticalVelocity / 100
	end

	if humanoid.RigType == Enum.HumanoidRigType.R6 then
		if debug_string then
			stringo = stringo .. "i"
		end
		local leftLegHeight = 0
		local rightLegHeight = 0

		local leftLeg = character:WaitForChild("LeftLeg")
		if leftLeg ~= nil then
			if debug_string then
				stringo = stringo .. "j"
			end
			leftLegHeight = leftLeg.Size.y
		end

		local rightLeg = character:WaitForChild("RightLeg")
		if rightLeg ~= nil then
			if debug_string then
				stringo = stringo .. "k"
			end
			rightLegHeight = rightLeg.Size.y
		end

		maxDistance += hysteresis * math.max(leftLegHeight, rightLegHeight);
	else
		if debug_string then
			stringo = stringo .. "l"
		end
		maxDistance += hysteresis * groundOffset
	end
	if debug_string then
		print(stringo .. " " .. maxDistance)
	end
	if debug_visual then
		debugSphere.CFrame = torso.CFrame + Vector3.yAxis * -1 * maxDistance
	end
	groundSensor.SearchDistance = maxDistance
end

----------------------------------------------------------------------------------------------------------------------
-- Initialization of Definition
----------------------------------------------------------------------------------------------------------------------

local States = { "Climbing", "FreeFall", "Dead", "FallingDown", "GettingUp", "Landed", "Physics", "Ragdoll",
	"Running", "Jumping", "Seated", "Swimming", "PlatformStanding"}

local Transitions = { "AwayLdr", "OffFloorJumping", "JumpRagdollCmd", "SitCmd", "NoHealth", "NoSitCmd", 
	"NoPlatformStandCmd", "OffFloorGrace", "OnFloor", "OnFloorClimbing", "Finished", "HasBuoyancy",  
	"TimerUpGettingUp", "TimerUpRunning", "NoBuoyancy", "TouchedHard", "Tipped", "PlatformStandCmd",  
	"Upright", "JumpCmd", "NoNeck", "FaceLdr" }

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
