--[[ Ragdoll State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Ragdoll = baseState:extend()
Ragdoll.humanoidState = Enum.HumanoidStateType.Ragdoll 
Ragdoll.name = script.Name

return Ragdoll
