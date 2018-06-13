--[[
	// FileName: VehicleControl
	// Version 1.0
	// Written by: jmargh
	// Description: Implements in-game vehicle controls for all input devices
	
	// NOTE: This works for basic vehicles (single vehicle seat). If you use custom VehicleSeat code,
	// multiple VehicleSeats or your own implementation of a VehicleSeat this will not work.
--]]
local ContextActionService = game:GetService("ContextActionService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

--[[ Constants ]]--
-- Set this to true if you want to instead use the triggers for the throttle
local useTriggersForThrottle = true
-- Also set this to true if you want the thumbstick to not affect throttle, only triggers when a gamepad is conected
local onlyTriggersForThrottle = false
local ZERO_VECTOR3 = Vector3.new(0,0,0)

-- Note that VehicleController does not derive from BaseCharacterController, it is a special case
local VehicleController = {}
VehicleController.__index = VehicleController

function VehicleController.new()
	local self = setmetatable({}, VehicleController)
	self.enabled = false
	self.vehicleSeat = nil
	self.throttle = 0
	self.steer = 0
	
	self.acceleration = 0
	self.decceleration = 0
	self.turningRight = 0
	self.turningLeft = 0
	
	self.vehicleMoveVector = ZERO_VECTOR3

	return self
end

function VehicleController:Enable(enable, vehicleSeat)
	if enable == self.enabled and vehicleSeat == self.vehicleSeat then
		return
	end
	
	if enable then
		if vehicleSeat then
			self.vehicleSeat = vehicleSeat
			if useTriggersForThrottle then
				ContextActionService:BindAction("throttleAccel", (function() self:OnThrottleAccel() end), false, Enum.KeyCode.ButtonR2)
				ContextActionService:BindAction("throttleDeccel", (function() self:OnThrottleDeccel() end), false, Enum.KeyCode.ButtonL2)
			end
			ContextActionService:BindAction("arrowSteerRight", (function() self:OnSteerRight() end), false, Enum.KeyCode.Right)
			ContextActionService:BindAction("arrowSteerLeft", (function() self:OnSteerLeft() end), false, Enum.KeyCode.Left)
		end
	else
		if useTriggersForThrottle then
			ContextActionService:UnbindAction("throttleAccel")
			ContextActionService:UnbindAction("throttleDeccel")
		end
		ContextActionService:UnbindAction("arrowSteerRight")
		ContextActionService:UnbindAction("arrowSteerLeft")
		self.vehicleSeat = nil
	end
end

function VehicleController:OnThrottleAccel(actionName, inputState, inputObject)	
	self.acceleration = (inputState ~= Enum.UserInputState.End) and -1 or 0
	self.throttle = self.acceleration + self.decceleration
end

function VehicleController:OnThrottleDeccel(actionName, inputState, inputObject)
	self.decceleration = (inputState ~= Enum.UserInputState.End) and 1 or 0
	self.throttle = self.acceleration + self.decceleration
end

function VehicleController:OnSteerRight(actionName, inputState, inputObject)
	self.turningRight = (inputState ~= Enum.UserInputState.End) and 1 or 0
	self.steer = self.turningRight + self.turningLeft
end

function VehicleController:OnSteerLeft(actionName, inputState, inputObject)
	self.turningLeft = (inputState ~= Enum.UserInputState.End) and -1 or 0
	self.steer = self.turningRight + self.turningLeft
end

-- Call this from a function bound to Renderstep with Input Priority
function VehicleController:Update(moveVector, usingGamepad)
	if self.vehicleSeat then
		moveVector = moveVector + Vector3.new(self.steer, 0, self.throttle)
		if usingGamepad and onlyTriggersForThrottle and useTriggersForThrottle then 
			self.vehicleSeat.ThrottleFloat = -self.throttle
		else
			self.vehicleSeat.ThrottleFloat = -moveVector.Z
		end
		self.vehicleSeat.SteerFloat = moveVector.X
		
		return moveVector, true
	end
	return moveVector, false
end

return VehicleController