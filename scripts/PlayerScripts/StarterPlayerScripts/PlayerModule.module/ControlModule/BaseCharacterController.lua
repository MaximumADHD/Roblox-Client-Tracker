--!strict
--[[
	BaseCharacterController - Abstract base class for character controllers, not intended to be
	directly instantiated.
--]]


--[[ Utils ]]--
local CommonUtils = script.Parent.Parent:WaitForChild("CommonUtils")
local FlagUtil = require(CommonUtils:WaitForChild("FlagUtil"))
local ConnectionUtil = require(CommonUtils:WaitForChild("ConnectionUtil"))

local FFlagUserUpdateInputConnections = FlagUtil.getUserFlag("UserUpdateInputConnections")

--[[ The Module ]]--
export type BaseCharacterControllerType = {
	-------------------- Public -----------------------------
	new: () -> BaseCharacterControllerType,
	OnRenderStepped: (BaseCharacterControllerType, dt: number) -> (), -- remove with FFlagUserUpdateInputConnections
	GetMoveVector: (BaseCharacterControllerType) -> Vector3,
	IsMoveVectorCameraRelative: (BaseCharacterControllerType) -> boolean,
	GetIsJumping: (BaseCharacterControllerType) -> boolean,
	Enable: (BaseCharacterControllerType, enable: boolean) -> boolean,
	
	-------------------- Private ----------------------------
	enabled: boolean,
	moveVector: Vector3,
	moveVectorIsCameraRelative: boolean,
	isJumping: boolean,
	_connections: any -- ConnectionUtil.ConnectionUtilType
}

local ZERO_VECTOR3: Vector3 = Vector3.new()

local BaseCharacterController = {} :: BaseCharacterControllerType
(BaseCharacterController :: any).__index = BaseCharacterController

function BaseCharacterController.new()
	local self = setmetatable({}, BaseCharacterController)

	self.enabled = false
	self.moveVector = ZERO_VECTOR3
	self.moveVectorIsCameraRelative = true
	self.isJumping = false
	if FFlagUserUpdateInputConnections then
		self._connections = ConnectionUtil.new()
	end

	return self :: any
end

function BaseCharacterController:OnRenderStepped(dt: number) -- remove with FFlagUserUpdateInputConnections
	assert(not FFlagUserUpdateInputConnections)
	-- By default, nothing to do
end

function BaseCharacterController:GetMoveVector(): Vector3
	return self.moveVector
end

function BaseCharacterController:IsMoveVectorCameraRelative(): boolean
	return self.moveVectorIsCameraRelative
end

function BaseCharacterController:GetIsJumping(): boolean
	return self.isJumping
end

-- Override in derived classes to set self.enabled and return boolean indicating
-- whether Enable/Disable was successful. Return true if controller is already in the requested state.
function BaseCharacterController:Enable(enable: boolean): boolean
	error("BaseCharacterController:Enable must be overridden in derived classes and should not be called.")
	return false
end

return BaseCharacterController
