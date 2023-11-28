--[[ CharacterControlStateMachine ]]
--

local baseStateMachineClass =
    require(script.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseStateMachineModule"))
local characterBaseStateClass = require(script:WaitForChild("CharacterControlBaseStateModule"))
local locomotion = require(script.Parent:WaitForChild("Locomotion"))

local CharacterControlStateMachine = baseStateMachineClass:inherit()
CharacterControlStateMachine.name = script.Name
CharacterControlStateMachine.definition.name = script.Name
CharacterControlStateMachine.definition.startingStateName = "Freefall"

----------------------------------------------------------------------------------------------------------------------
-- Extension of baseStateMachineClass
----------------------------------------------------------------------------------------------------------------------
function CharacterControlStateMachine:OnCreate(parentCharacter, ...)
    self.context.character = parentCharacter
    local humanoid = parentCharacter:FindFirstChildOfClass("Humanoid")
    self.context.humanoid = humanoid
    self.context.rootPart = parentCharacter:WaitForChild("HumanoidRootPart")
    self.context.controllerManager = parentCharacter:WaitForChild("ControllerManager")
    self.context.noFloorTimer = 0
    self.context.hadHealth = false
    self.context.hadNeck = false
    self.context.requiresNeck = humanoid.RequiresNeck
    self.context.rootMotion = false
end

function CharacterControlStateMachine:OnStepped(dt)
    baseStateMachineClass.OnStepped(self, dt)
    locomotion:OnStepped(self)
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
function CharacterControlStateMachine:OnStartup() end

function CharacterControlStateMachine:OnShutdown() end

----------------------------------------------------------------------------------------------------------------------
-- Initialization of Definition
----------------------------------------------------------------------------------------------------------------------

local States = {
    "Climbing",
    "Freefall",
    "Dead",
    "FallingDown",
    "GettingUp",
    "Landed",
    "Physics",
    "Ragdoll",
    "Running",
    "Jumping",
    "Seated",
    "Swimming",
    "PlatformStanding",
}

local Transitions = {
    "AwayLdr",
    "OffFloorJumping",
    "JumpRagdollCmd",
    "SitCmd",
    "NoHealth",
    "NoSitCmd",
    "NoPlatformStandCmd",
    "OffFloorGrace",
    "OnFloor",
    "OnFloorClimbing",
    "JumpFailed",
    "HasBuoyancy",
    "TimerUpGettingUp",
    "TimerUpRunning",
    "NoBuoyancy",
    "TouchedHard",
    "Tipped",
    "PlatformStandCmd",
    "Upright",
    "JumpCmd",
    "NoNeck",
    "FaceLdr",
    "AutoJump",
}

local Definition = CharacterControlStateMachine.definition
local StateFolder = script:WaitForChild("States")
if StateFolder ~= nil then
    for _, stateName in pairs(States) do
        stateModule = StateFolder:WaitForChild(stateName)
        if stateModule:IsA("ModuleScript") then
            Definition.stateDefs[stateModule.name] = require(stateModule)
        end
    end
end

local TransitionFolder = script:WaitForChild("Transitions")
if TransitionFolder ~= nil then
    for _, transitionName in pairs(Transitions) do
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
