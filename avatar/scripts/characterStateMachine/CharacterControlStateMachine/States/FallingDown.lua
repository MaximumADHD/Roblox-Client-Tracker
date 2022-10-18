--[[ FallingDown State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local FallingDown = baseState:extend()
FallingDown.humanoidState = Enum.HumanoidStateType.FallingDown 
FallingDown.name = script.Name

return FallingDown
