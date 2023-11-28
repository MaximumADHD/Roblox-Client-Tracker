--[[ Physics State ]]
--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Physics = baseState:inherit()
Physics.name = script.Name
Physics.humanoidState = Enum.HumanoidStateType.Physics
Physics.activeController = ""
Physics.isEnabled = true

function Physics:OnCreate(...)
    baseState.OnCreate(self, ...)

    self.armsShouldCollide = true
    self.legsShouldCollide = true
end

return Physics
