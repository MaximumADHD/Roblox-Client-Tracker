--[[ CCSM Base State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseStateModule"))

local CCSMBaseState = baseState:extend()
CCSMBaseState.name = script.Name 
	
----------------------------------------------------------------------------------

function CCSMBaseState.WindingPart(rad)
	return math.floor((rad + math.pi) / (2 * math.pi))
end

function CCSMBaseState.RadWrap(rad)
	if rad >= -math.pi and rad < math.pi then
		return rad;
	end

	local answer = rad - ((2 * math.pi) * CCSMBaseState.WindingPart(rad))
	return answer
end

function CCSMBaseState.GetHeading(direction : Vector3)
	return 	math.atan2(-direction.x, direction.z) -- might need to wrap this to -pi to pi
end

------------------------------------------------------------------------------------
function CCSMBaseState:SetPartsCollide(humanoid : Humanoid, collide : boolean, parts)
	local character = humanoid.Parent
	for _, partName in pairs(parts) do
		local part = character:FindFirstChild(partName)
		if part then
			part.CanCollide = collide
		end
	end
end

function CCSMBaseState:SetArmsCollide(humanoid : Humanoid, collide : boolean)
	local parts
	if humanoid.RigType == Enum.HumanoidRigType.R15 then
		parts = { "LeftUpperArm", "RightUpperArm", "LeftLowerArm", "RightLowerArm", "LeftHand", "RightHand" }
	else
		parts = { "LeftArm", "RightArm" }
	end
	self:SetPartsCollide(humanoid, collide, parts)
end

function CCSMBaseState:SetLegsCollide(humanoid : Humanoid, collide : boolean)
	local parts
	if humanoid.RigType == Enum.HumanoidRigType.R15 then
		parts = { "LeftUpperLeg", "RightUpperLeg", "LeftLowerLeg", "RightLowerLeg", "LeftFoot", "RightFoot" }
	else
		parts = { "LeftLeg", "RightLeg" }
	end
	self:SetPartsCollide(humanoid, collide, parts)
end

function CCSMBaseState:SetTorsoCollide(humanoid : Humanoid, collide : boolean)
	local parts
	if humanoid.RigType == Enum.HumanoidRigType.R15 then
		parts = { "UpperTorso", "LowerTorso" }
	else
		parts = { "Torso" }
	end
	self:SetPartsCollide(humanoid, collide, parts)
end

function CCSMBaseState:SetHeadCollide(humanoid : Humanoid, collide : boolean)
	local parts = { "Head" }
	self:SetPartsCollide(humanoid, collide, parts)
end

------------------------------------------------------------------------------------

function CCSMBaseState:OnCreate()
	self.timer = 0
	self.armsShouldCollide = false
	self.legsShouldCollide = false
	self.headShouldCollide = true
	self.torsoShouldCollide = true
end

function CCSMBaseState:OnEnter(stateMachine)
	baseState.OnEnter(self, stateMachine)
	
	local humanoid = stateMachine.context.humanoid
	if humanoid ~= nil then
		humanoid:ChangeState(self.humanoidState)
		self:SetArmsCollide(humanoid, self.armsShouldCollide)
		self:SetLegsCollide(humanoid, self.legsShouldCollide)
		self:SetTorsoCollide(humanoid, self.torsoShouldCollide)
		self:SetHeadCollide(humanoid, self.headShouldCollide)
	end
	self.timer = 0
end

function CCSMBaseState:OnStepped(stateMachine, dt)
	baseState.OnStepped(self, stateMachine, dt)
	self.timer = self.timer + dt
	stateMachine.context.noFloorTimer = stateMachine.context.noFloorTimer + dt
end

return CCSMBaseState