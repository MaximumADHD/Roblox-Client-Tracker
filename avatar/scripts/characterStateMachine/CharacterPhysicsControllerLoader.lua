--! strict
local CharacterPhysicsControllerLoader = {}
CharacterPhysicsControllerLoader.__index = CharacterPhysicsControllerLoader
CharacterPhysicsControllerLoader.name = script.Name


function CharacterPhysicsControllerLoader:clampJumpPower(jumpPower)
	local MinJumpPower = 0.0
	local MaxJumpPower = 1000.0
	return math.clamp(jumpPower, MinJumpPower, MaxJumpPower);
end

function CharacterPhysicsControllerLoader:oldCalculateJumpPower(gravity, jumpHeight)
	return math.sqrt(2.0 * gravity * jumpHeight) / (self.JumpPowerInstantControllerMultiplierPercent * 0.01)
end


function CharacterPhysicsControllerLoader:calculateJumpPower()
	local humanoid = self.humanoid
	if humanoid.UseJumpPower then
		return humanoid.JumpPower
	else
		if humanoid:IsDescendantOf(game.Workspace) then
			return self:clampJumpPower(self:oldCalculateJumpPower(workspace.Gravity, humanoid.JumpHeight))
		end
	end
	return 0.0
end

function CharacterPhysicsControllerLoader:createGroundControllerController(name : string)
	local groundController = Instance.new("GroundController", self.controllerManager)
	groundController.Name = name	
	groundController.GroundOffset = self.humanoid.HipHeight
	return groundController
end

function CharacterPhysicsControllerLoader:createAirControllerController(name : string, jumpForce : Vector3)
	local airController = Instance.new("AirController", self.controllerManager)
	airController.Name = name
	if jumpForce ~= nil then 
		airController.VectorForce = jumpForce	
	end
	return airController
end

function CharacterPhysicsControllerLoader:createSwimControllerController(name : string)
	local swimController = Instance.new("SwimController", self.controllerManager)
	return swimController
end

function CharacterPhysicsControllerLoader:createClimbControllerController(name : string)
	local climbController = Instance.new("ClimbController", self.controllerManager)
	return climbController
end



function CharacterPhysicsControllerLoader:addDefaultControllers()
	local runningController = self.controllerManager:FindFirstChild("RunningController")
	if runningController == nil then
		self:createGroundControllerController("RunningController")	
	end

	local gettingUpController = self.controllerManager:FindFirstChild("GettingUpController")
	if gettingUpController == nil then
		self:createGroundControllerController("GettingUpController")
	end

	local airController = self.controllerManager:FindFirstChild("AirController")
	if airController == nil then
		airController = self:createAirControllerController("AirController", nil)	
	end

	local jumpController = self.controllerManager:FindFirstChild("JumpController")
	if jumpController == nil then
		local jumForce = Vector3.new(0, self:calculateJumpPower(), 0);
		jumpController = self:createAirControllerController("JumpController", jumForce)	
	end

	local swimController = self.controllerManager:FindFirstChild("SwimController")
	if swimController == nil then
		swimController = self:createSwimControllerController("SwimController")
	end

	local climbController = self.controllerManager:FindFirstChild("ClimbController")
	if climbController == nil then
		climbController = self:createClimbControllerController("ClimbController")
	end
end

function CharacterPhysicsControllerLoader:createAndAddGroundSensor()
	local groundSensor = Instance.new("ControllerPartSensor", self.humanoidRootPart)
	groundSensor.Name = "GroundSensor"
	groundSensor.SensorMode = Enum.SensorMode.Floor
	self.controllerManager.GroundSensor = groundSensor	

	return groundSensor

end

function CharacterPhysicsControllerLoader:createAndAddClimbSensor()
	local climbSensor = Instance.new("ControllerPartSensor", self.humanoidRootPart)
	climbSensor.Name = "ClimbSensor"
	climbSensor.SensorMode = Enum.SensorMode.Ladder
	climbSensor.SearchDistance = 2
	self.controllerManager.ClimbSensor = climbSensor

	return climbSensor
end

function CharacterPhysicsControllerLoader:createAndAddBuoyancySensor(torsoattach)
	local buoyancySensor = Instance.new("BuoyancySensor", torsoattach)
	return buoyancySensor
end

function CharacterPhysicsControllerLoader:addDefaultSensors()
	local groundSensor = self.humanoidRootPart:FindFirstChild("GroundSensor")
	if groundSensor == nil then
		groundSensor = self:createAndAddGroundSensor()
	end
	local climbSensor = self.humanoidRootPart:FindFirstChild("ClimbSensor")
	if climbSensor == nil then 
		climbSensor = self:createAndAddClimbSensor()	
	end

	local torsoattach
	if self.humanoid.RigType == Enum.HumanoidRigType.R6 then
		torsoattach = self.humanoid.Parent:WaitForChild("Torso")
	else
		torsoattach = self.humanoid.Parent:WaitForChild("UpperTorso")
	end

	local buoyancySensor = torsoattach:FindFirstChild("BuoyancySensor")
	if buoyancySensor == nil then
		buoyancySensor = self:createAndAddBuoyancySensor()	
	end

end

function CharacterPhysicsControllerLoader:loadSensorsAndPhysicsController()
	if self.humanoid.EvaluateStateMachine == true then
		error("Error !! Please set EvaluateStateMachine property on Humanoid to false")
		return
	end
	self:addDefaultControllers()
	self:addDefaultSensors()

end

function CharacterPhysicsControllerLoader.new(humanoidInstance : Instance, controllerManagerInstance:ControllerManager, humanoidRootPart : Instance)
	local self = {
		humanoid = humanoidInstance,
		controllerManager = if controllerManagerInstance then controllerManagerInstance else  Instance.new("ControllerManager"),
		JumpPowerInstantControllerMultiplierPercent = 106, -- taken from C++ DFFlag::JumpPowerInstantControllerMultiplierPercent
		humanoidRootPart = humanoidRootPart
	}

	self.controllerManager.BaseMoveSpeed = self.humanoid.WalkSpeed
	self.controllerManager.Parent = self.humanoid
	setmetatable(self, CharacterPhysicsControllerLoader)
	return self
end

return CharacterPhysicsControllerLoader