--[[ GettingUp State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local GettingUp = baseState:extend()
GettingUp.humanoidState = Enum.HumanoidStateType.GettingUp 
GettingUp.name = script.Name

return GettingUp
