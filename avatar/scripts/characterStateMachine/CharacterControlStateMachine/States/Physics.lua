--[[ Physics State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Physics = baseState:inherit()
Physics.name = script.Name
Physics.humanoidState = Enum.HumanoidStateType.Physics 
Physics.activeController = ""

return Physics
