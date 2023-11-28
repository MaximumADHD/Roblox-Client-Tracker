--[[ Dead State ]]
--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Dead = baseState:inherit()
Dead.name = script.Name
Dead.humanoidState = Enum.HumanoidStateType.Dead
Dead.activeController = ""
Dead.isEnabled = true

function Dead:OnCreate(...)
    baseState.OnCreate(self, ...)

    self.armsShouldCollide = true
    self.legsShouldCollide = true
    self.headShouldCollide = true
    self.torsoShouldCollide = true
end

function Dead:OnEnter(stateMachine)
    baseState.OnEnter(self, stateMachine)

    local humanoid = stateMachine.context.humanoid

    if not humanoid then
        return
    end

    humanoid.Health = 0

    if
        humanoid.BreakJointsOnDeath
        and stateMachine.context.hadNeck
        and stateMachine.context.hadHealth
    then
        humanoid.Parent:BreakJoints()
    end
end

return Dead
