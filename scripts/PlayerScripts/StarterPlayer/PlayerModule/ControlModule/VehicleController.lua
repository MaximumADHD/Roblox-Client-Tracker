--!strict
--[[
	// FileName: VehicleControl
	// Version 1.0
	// Written by: jmargh
	// Description: Implements in-game vehicle controls for all input devices

	// NOTE: This works for basic vehicles (single vehicle seat). If you use custom VehicleSeat code,
	// multiple VehicleSeats or your own implementation of a VehicleSeat this will not work.
--]]

local inputContexts = script.Parent.Parent:WaitForChild("InputContexts")
local vehicleContext = inputContexts:WaitForChild("VehicleContext")
local throttleAction = vehicleContext:WaitForChild("Throttle") :: InputAction
local steerAction = vehicleContext:WaitForChild("Steer") :: InputAction

local VehicleController = {}
VehicleController.__index = VehicleController

function VehicleController.new()
	local self = setmetatable({}, VehicleController)

	self.enabled = false
	self.vehicleSeat = nil

	return self
end

function VehicleController:Enable(enable: boolean, vehicleSeat: VehicleSeat)
	if enable == self.enabled and vehicleSeat == self.vehicleSeat then
		return
	end

	self.enabled = enable

	if enable then
		if not vehicleSeat then
			return
		end
		
		self.vehicleSeat = vehicleSeat
		vehicleContext.Enabled = true
	else
		vehicleContext.Enabled = false
		self.vehicleSeat = nil
	end
end

-- Call this from a function bound to Renderstep with Input Priority
function VehicleController:Update(moveVector: Vector3, cameraRelative: boolean)
	if not self.vehicleSeat then
		return moveVector, false
	end

	if cameraRelative then
		-- This is the default steering mode
		local throttle = throttleAction:GetState()
		local steer = steerAction:GetState()
		moveVector = moveVector + Vector3.new(steer, 0, throttle)
		self.vehicleSeat.ThrottleFloat = -moveVector.Z
		self.vehicleSeat.SteerFloat = moveVector.X

		return moveVector, true
	else
		-- This is the path following mode
		local localMoveVector = self.vehicleSeat.Occupant.RootPart.CFrame:VectorToObjectSpace(moveVector)

		self.vehicleSeat.ThrottleFloat = self:ComputeThrottle(localMoveVector)
		self.vehicleSeat.SteerFloat = self:ComputeSteer(localMoveVector)

		return Vector3.zero, true
	end
end

function VehicleController:ComputeThrottle(localMoveVector)
	if localMoveVector ~= Vector3.zero then
		return -localMoveVector.Z
	else
		return 0.0
	end
end

function VehicleController:ComputeSteer(localMoveVector)
	if localMoveVector ~= Vector3.zero then
		return -math.atan2(-localMoveVector.x, -localMoveVector.z) * (180 / math.pi)
	else
		return 0.0
	end
end

return VehicleController
