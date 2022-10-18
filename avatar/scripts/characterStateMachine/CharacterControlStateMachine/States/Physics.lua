--[[ PlatformStanding State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local PlatformStanding = baseState:extend()
PlatformStanding.humanoidState = Enum.HumanoidStateType.PlatformStanding 
PlatformStanding.name = script.Name

return PlatformStanding
