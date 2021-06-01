--[[
	BaseCharacterController - Abstract base class for character controllers, not intended to be
	directly instantiated.

	2018 PlayerScripts Update - AllYourBlox
--]]

local ZERO_VECTOR3 = Vector3.new(0,0,0)

--[[ The Module ]]--
local BaseCharacterController = {}
BaseCharacterController.__index = BaseCharacterController

function BaseCharacterController.new()
	local self = setmetatable({}, BaseCharacterController)
	self.enabled = false
	self.moveVector = ZERO_VECTOR3
	self.moveVectorIsCameraRelative = true
	self.isJumping = false
	return self
end

function BaseCharacterController:OnRenderStepped(dt)
	-- By default, nothing to do
end

function BaseCharacterController:GetMoveVector()
	return self.moveVector
end

function BaseCharacterController:IsMoveVectorCameraRelative()
	return self.moveVectorIsCameraRelative
end

function BaseCharacterController:GetIsJumping()
	return self.isJumping
end

-- Override in derived classes to set self.enabled and return boolean indicating
-- whether Enable/Disable was successful. Return true if controller is already in the requested state.
function BaseCharacterController:Enable(enable)
	error("BaseCharacterController:Enable must be overridden in derived classes and should not be called.")
	return false
end

return BaseCharacterController