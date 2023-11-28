--[[ GettingUp State ]]
--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local GettingUp = baseState:inherit()
GettingUp.name = script.Name
GettingUp.humanoidState = Enum.HumanoidStateType.GettingUp
GettingUp.activeController = "GettingUpController"
GettingUp.isEnabled = true

return GettingUp
