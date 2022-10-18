--[[ Dead State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Dead = baseState:extend()
Dead.humanoidState = Enum.HumanoidStateType.Dead 
Dead.name = script.Name

function Dead:OnCreate(...)
	baseState.OnCreate(self, ...)

	self.armsShouldCollide = true
	self.legsShouldCollide = true
	self.headShouldCollide = true
	self.torsoShouldCollide = true
end

return Dead