--[[ PlatformStanding State ]]
--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local PlatformStanding = baseState:inherit()
PlatformStanding.name = script.Name
PlatformStanding.humanoidState = Enum.HumanoidStateType.PlatformStanding
PlatformStanding.activeController = ""
PlatformStanding.isEnabled = true

return PlatformStanding
