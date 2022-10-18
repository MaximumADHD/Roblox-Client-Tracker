local RunService = game:FindService("RunService")
local humanoid = script.Parent:FindFirstChildOfClass("Humanoid")

local JumpPowerInstantControllerMultiplierPercent = 106 -- taken from C++ DFFlag::JumpPowerInstantControllerMultiplierPercent

--- Taken from Humanoid::clampJumpPower()
local function clampJumpPower(jumpPower)
	local MinJumpPower = 0.0
	local MaxJumpPower = 1000.0
	return math.clamp(jumpPower, MinJumpPower, MaxJumpPower);
end

local function oldCalculateJumpPower(gravity, jumpHeight)
	return math.sqrt(2.0 * gravity * jumpHeight) / (JumpPowerInstantControllerMultiplierPercent * 0.01)
end


local function calculateJumpPower(h)
	if h.UseJumpPower then
		return h.JumpPower
	else
		if h:IsDescendantOf(game.Workspace) then
			return clampJumpPower(oldCalculateJumpPower(workspace.Gravity, h.JumpHeight))
		end
	end
	return 0.0
end

-- This logic is copied from the ControllerManager::findOrCreateControllerChildForState()
local controllerManager = humanoid:FindFirstChildOfClass("ControllerManager")
if controllerManager == nil then
	controllerManager = Instance.new("ControllerManager")
	
	local runningController = Instance.new("GroundController", controllerManager)
	runningController.Name = "RunningController"	
	
	local gettingUpController = Instance.new("GroundController", controllerManager)	
	gettingUpController.Name = "GettingUpController"	
	
	local gettingUpController = Instance.new("GroundController", controllerManager)	
	gettingUpController.Name = "GettingUpController"	
	gettingUpController.RigidityEnabled = true
	
	local freeFallController = Instance.new("AirController", controllerManager)	
	-- Uses default name? : freeFallController.Name = "FreeFallController"	
	
	local jumpController = Instance.new("AirController", controllerManager)	
	jumpController.Name = "JumpController"
	jumpController.VectorForce = Vector3.new(0, calculateJumpPower(humanoid), 0);
	
	local swimController = Instance.new("SwimController", controllerManager)	

	local climbController = Instance.new("ClimbController", controllerManager)	

	controllerManager.HipHeight = humanoid.HipHeight
	controllerManager.BaseMoveSpeed = humanoid.WalkSpeed
	
	controllerManager.Parent = humanoid
end

