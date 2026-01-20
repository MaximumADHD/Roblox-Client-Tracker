--!strict

--[[ Utils ]]--
local CommonUtils = script.Parent.Parent:WaitForChild("CommonUtils")
local ConnectionUtil = require(CommonUtils:WaitForChild("ConnectionUtil"))

--[[ Roblox Services ]]--
local inputContexts = script.Parent.Parent:WaitForChild("InputContexts")
local character = inputContexts:WaitForChild("Character")
local moveAction = character:WaitForChild("Move")
local jumpAction = character:WaitForChild("Jump")

--[[ The Module ]]--
export type ActionControllerType = {
	new: () -> ActionControllerType,
	GetMoveVector: (ActionControllerType) -> Vector3,
	GetIsJumping: (ActionControllerType) -> boolean,
	Enable: (ActionControllerType, enable: boolean) -> boolean,
	
	-------------------- Private ----------------------------
	enabled: boolean,
	moveVector: Vector3,
	isJumping: boolean,
	_connectionUtil: any -- ConnectionUtil.ConnectionUtilType
}

local ActionController = {} :: ActionControllerType
(ActionController :: any).__index = ActionController

local CONNECTIONS = {
	MOVE_ACTION = "MOVE_ACTION",
	JUMP_ACTION = "JUMP_ACTION",
}

local ZERO_VECTOR3: Vector3 = Vector3.new()

function ActionController.new()
	local self = setmetatable({}, ActionController)

	self.enabled = false
	self.moveVector = ZERO_VECTOR3
	self.isJumping = false
	self._connectionUtil = ConnectionUtil.new()

	return self
end

function ActionController:Enable(enable: boolean)
	if enable == self.enabled then
		-- Module is already in the state being requested. True is returned here since the module will be in the state
		-- expected by the code that follows the Enable() call. This makes more sense than returning false to indicate
		-- no action was necessary. False indicates failure to be in requested/expected state.
		return true
	end

	if enable then
		self._connectionUtil:trackConnection(CONNECTIONS.MOVE_ACTION, moveAction.StateChanged:Connect(function(moveVector)
			self.moveVector = Vector3.new(moveVector.X, 0, -moveVector.Y)
		end))
		self._connectionUtil:trackConnection(CONNECTIONS.JUMP_ACTION, jumpAction.StateChanged:Connect(function(jump)
			self.isJumping = jump 
		end))
	else
		self._connectionUtil:disconnectAll()
	end

	self.enabled = enable
	return true
end

function ActionController:GetMoveVector(): Vector3
	return self.moveVector
end

function ActionController:GetIsJumping(): boolean
	return self.isJumping
end

return ActionController
