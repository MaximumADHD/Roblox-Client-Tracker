--[[ Physics State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Physics = baseState:extend()
Physics.humanoidState = Enum.HumanoidStateType.Physics 
Physics.name = script.Name

return Physics
