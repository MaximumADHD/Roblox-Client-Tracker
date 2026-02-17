--!strict

-- Utils
local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local ConnectionUtil = CommonUtils.get("ConnectionUtil")
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserPlayerModuleHiddenAPI = FlagUtil.getUserFlag("UserPlayerModuleHiddenAPI")

-- Action Instances
local inputContexts = script.Parent.Parent:WaitForChild("InputContexts")
local character = inputContexts:WaitForChild("Character")
local moveAction = character:WaitForChild("Move")
local jumpAction = character:WaitForChild("Jump")

-- The Module
export type ActionControllerType = {
	new: () -> ActionControllerType,
	GetMoveVector: (ActionControllerType) -> Vector3,
	GetIsJumping: (ActionControllerType) -> boolean,
	Update: (ActionControllerType, data: any) -> (),
	Enable: (ActionControllerType, enable: boolean) -> boolean,
	
	enabled: boolean,
	moveVector: Vector3, -- remove with FFlagUserPlayerModuleHiddenAPI
	isJumping: boolean, -- remove with FFlagUserPlayerModuleHiddenAPI
	_connectionUtil: any -- ConnectionUtil.ConnectionUtilType -- remove with FFlagUserPlayerModuleHiddenAPI
}

local ActionController = {} :: ActionControllerType
(ActionController :: any).__index = ActionController

local CONNECTIONS = { -- remove with FFlagUserPlayerModuleHiddenAPI
	MOVE_ACTION = "MOVE_ACTION",
	JUMP_ACTION = "JUMP_ACTION",
}

local ZERO_VECTOR3: Vector3 = Vector3.new()

function ActionController.new()
	local self = setmetatable({}, ActionController)

	self.enabled = false
	if not FFlagUserPlayerModuleHiddenAPI then
		self.moveVector = ZERO_VECTOR3
		self.isJumping = false
		self._connectionUtil = ConnectionUtil.new()
	end

	return self
end

function ActionController:Enable(enable: boolean)
	if enable == self.enabled then
		-- Module is already in the state being requested. True is returned here since the module will be in the state
		-- expected by the code that follows the Enable() call. This makes more sense than returning false to indicate
		-- no action was necessary. False indicates failure to be in requested/expected state.
		return true
	end

	if not FFlagUserPlayerModuleHiddenAPI then
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
	end

	self.enabled = enable
	return true
end

if FFlagUserPlayerModuleHiddenAPI then
	function ActionController:Update(data: any)
		data.moveVector = moveAction:GetState()
		data.isJumping = jumpAction:GetState()
	end

	function ActionController:GetMoveVector(): Vector3
		if not self.enabled then
			return ZERO_VECTOR3
		end

		local moveVector: Vector3 = moveAction:GetState()
		return Vector3.new(moveVector.X, 0, -moveVector.Y)
	end

	function ActionController:GetIsJumping(): boolean
		if not self.enabled then
			return false
		end
		return jumpAction:GetState()
	end
else
	function ActionController:Update(data: any)
		assert(false, "ActionController:Update should not be called when FFlagUserPlayerModuleHiddenAPI is false")
	end

	function ActionController:GetMoveVector(): Vector3
		return self.moveVector
	end

	function ActionController:GetIsJumping(): boolean
		return self.isJumping
	end
end



return ActionController
