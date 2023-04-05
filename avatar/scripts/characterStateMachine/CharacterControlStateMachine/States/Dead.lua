--[[ Dead State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Dead = baseState:inherit()
Dead.name = script.Name
Dead.humanoidState = Enum.HumanoidStateType.Dead 
Dead.activeController = ""

function Dead:OnCreate(...)
	baseState.OnCreate(self, ...)

	self.armsShouldCollide = true
	self.legsShouldCollide = true
	self.headShouldCollide = true
	self.torsoShouldCollide = true
end

function Dead:OnEnter(stateMachine)
	baseState.OnEnter(self, stateMachine)

	local humanoid = stateMachine.context.humanoid
	if humanoid and humanoid.BreakJointsOnDeath then
		humanoid.Parent:BreakJoints()
	end	
end


return Dead