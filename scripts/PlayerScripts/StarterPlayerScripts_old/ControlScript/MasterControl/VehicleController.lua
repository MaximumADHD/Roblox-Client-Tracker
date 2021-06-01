--[[
	// FileName: VehicleControl
	// Version 1.0
	// Written by: jmargh
	// Description: Implements in-game vehicle controls for all input devices
	
	// NOTE: This works for basic vehicles (single vehicle seat). If you use custom VehicleSeat code,
	// multiple VehicleSeats or your own implementation of a VehicleSeat this will not work.
--]]

local VehicleController = {}

local ContextActionService = game:GetService('ContextActionService')
local Players = game:GetService('Players')
local RunService = game:GetService('RunService')

local MasterControl = require(script.Parent)

while not Players.LocalPlayer do
	wait()
end
local LocalPlayer = Players.LocalPlayer
local CurrentVehicleSeat = nil
local CurrentThrottle = 0
local CurrentSteer = 0
local HumanoidSeatedCn = nil
local RenderSteppedCn = nil
local Accelerating = false
local Deccelerating = false
local TurningRight = false
local TurningLeft = false
-- Set this to true if you want to instead use the triggers for the throttle
local useTriggersForThrottle = true
-- Also set this to true if you want the thumbstick to not affect throttle, only triggers when a gamepad is conected
local onlyTriggersForThrottle = false

local function onThrottleAccel(actionName, inputState, inputObject)
	MasterControl:AddToPlayerMovement(Vector3.new(0, 0, -CurrentThrottle))
	CurrentThrottle = (inputState == Enum.UserInputState.End or Deccelerating) and 0 or -1
	MasterControl:AddToPlayerMovement(Vector3.new(0, 0, CurrentThrottle))
	Accelerating = not (inputState == Enum.UserInputState.End)
	if (inputState == Enum.UserInputState.End) and Deccelerating then
		CurrentThrottle = 1
		MasterControl:AddToPlayerMovement(Vector3.new(0, 0, CurrentThrottle))
	end
end

local function onThrottleDeccel(actionName, inputState, inputObject)
	MasterControl:AddToPlayerMovement(Vector3.new(0, 0, -CurrentThrottle))
	CurrentThrottle = (inputState == Enum.UserInputState.End or Accelerating) and 0 or 1
	MasterControl:AddToPlayerMovement(Vector3.new(0, 0, CurrentThrottle))
	Deccelerating = not (inputState == Enum.UserInputState.End)
	if (inputState == Enum.UserInputState.End) and Accelerating then
		CurrentThrottle = -1
		MasterControl:AddToPlayerMovement(Vector3.new(0, 0, CurrentThrottle))
	end
end

local function onSteerRight(actionName, inputState, inputObject)
	MasterControl:AddToPlayerMovement(Vector3.new(-CurrentSteer, 0, 0))
	CurrentSteer = (inputState == Enum.UserInputState.End or TurningLeft) and 0 or 1
	MasterControl:AddToPlayerMovement(Vector3.new(CurrentSteer, 0, 0))
	TurningRight = not (inputState == Enum.UserInputState.End)
	if (inputState == Enum.UserInputState.End) and TurningLeft then
		CurrentSteer = -1
		MasterControl:AddToPlayerMovement(Vector3.new(CurrentSteer, 0, 0))
	end
end

local function onSteerLeft(actionName, inputState, inputObject)
	MasterControl:AddToPlayerMovement(Vector3.new(-CurrentSteer, 0, 0))
	CurrentSteer = (inputState == Enum.UserInputState.End or TurningRight) and 0 or -1
	MasterControl:AddToPlayerMovement(Vector3.new(CurrentSteer, 0, 0))
	TurningLeft = not (inputState == Enum.UserInputState.End)
	if (inputState == Enum.UserInputState.End) and TurningRight then
		CurrentSteer = 1
		MasterControl:AddToPlayerMovement(Vector3.new(CurrentSteer, 0, 0))
	end
end

local function getHumanoid()
	local character = LocalPlayer and LocalPlayer.Character
	if character then
		for _,child in pairs(character:GetChildren()) do
			if child:IsA('Humanoid') then
				return child
			end
		end
	end
end

local function getClosestFittingValue(value)
	if value > 0.5 then
		return 1
	elseif value < -0.5 then
		return -1
	end
	return 0 
end

local function onRenderStepped()
	if CurrentVehicleSeat then
		local moveValue = MasterControl:GetMoveVector()
		local didSetThrottleSteerFloat = false
		didSetThrottleSteerFloat = pcall(function()
			if game:GetService("UserInputService"):GetGamepadConnected(Enum.UserInputType.Gamepad1) and onlyTriggersForThrottle and useTriggersForThrottle then
				CurrentVehicleSeat.ThrottleFloat = -CurrentThrottle
			else
				CurrentVehicleSeat.ThrottleFloat = -moveValue.z
			end
			CurrentVehicleSeat.SteerFloat = moveValue.x
		end)	
		
		if didSetThrottleSteerFloat == false then
			if game:GetService("UserInputService"):GetGamepadConnected(Enum.UserInputType.Gamepad1) and onlyTriggersForThrottle and useTriggersForThrottle then
				CurrentVehicleSeat.Throttle = -CurrentThrottle
			else
				CurrentVehicleSeat.Throttle = getClosestFittingValue(-moveValue.z)
			end
			CurrentVehicleSeat.Steer = getClosestFittingValue(moveValue.x)
		end
	end
end

local function onSeated(active, currentSeatPart)
	if active then
		if currentSeatPart and currentSeatPart:IsA('VehicleSeat') then
			CurrentVehicleSeat = currentSeatPart
			if useTriggersForThrottle then
				ContextActionService:BindAction("throttleAccel", onThrottleAccel, false, Enum.KeyCode.ButtonR2)
				ContextActionService:BindAction("throttleDeccel", onThrottleDeccel, false, Enum.KeyCode.ButtonL2)
			end
			ContextActionService:BindAction("arrowSteerRight", onSteerRight, false, Enum.KeyCode.Right)
			ContextActionService:BindAction("arrowSteerLeft", onSteerLeft, false, Enum.KeyCode.Left)
			local success = pcall(function() RunService:BindToRenderStep("VehicleControlStep", Enum.RenderPriority.Input.Value, onRenderStepped) end)

			if not success then
				if RenderSteppedCn then return end
				RenderSteppedCn = RunService.RenderStepped:connect(onRenderStepped)
			end
		end
	else
		CurrentVehicleSeat = nil
		if useTriggersForThrottle then
			ContextActionService:UnbindAction("throttleAccel")
			ContextActionService:UnbindAction("throttleDeccel")
		end
		ContextActionService:UnbindAction("arrowSteerRight")
		ContextActionService:UnbindAction("arrowSteerLeft")
		MasterControl:AddToPlayerMovement(Vector3.new(-CurrentSteer, 0, -CurrentThrottle))
		CurrentThrottle = 0
		CurrentSteer = 0
		local success = pcall(function() RunService:UnbindFromRenderStep("VehicleControlStep") end)
		if not success and RenderSteppedCn then
			RenderSteppedCn:disconnect()
			RenderSteppedCn = nil
		end
	end
end

local function CharacterAdded(character)
	local humanoid = getHumanoid()
	while not humanoid do
		wait()
		humanoid = getHumanoid()
	end
	--
	if HumanoidSeatedCn then
		HumanoidSeatedCn:disconnect()
		HumanoidSeatedCn = nil
	end
	HumanoidSeatedCn = humanoid.Seated:connect(onSeated)
end

if LocalPlayer.Character then
	CharacterAdded(LocalPlayer.Character)
end
LocalPlayer.CharacterAdded:connect(CharacterAdded)

return VehicleController
