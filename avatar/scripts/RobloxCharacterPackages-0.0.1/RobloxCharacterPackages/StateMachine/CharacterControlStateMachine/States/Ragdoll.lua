--[[ Ragdoll State ]]
--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Ragdoll = baseState:inherit()
Ragdoll.name = script.Name
Ragdoll.humanoidState = Enum.HumanoidStateType.Ragdoll
Ragdoll.activeController = ""
Ragdoll.isEnabled = true

function Ragdoll:OnCreate(...)
    baseState.OnCreate(self, ...)

    self.armsShouldCollide = true
    self.legsShouldCollide = true
end

return Ragdoll
