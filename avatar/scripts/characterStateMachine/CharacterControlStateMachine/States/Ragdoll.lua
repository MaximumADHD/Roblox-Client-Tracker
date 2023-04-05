--[[ Ragdoll State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Ragdoll = baseState:inherit()
Ragdoll.name = script.Name
Ragdoll.humanoidState = Enum.HumanoidStateType.Ragdoll 
Ragdoll.activeController = ""

return Ragdoll
