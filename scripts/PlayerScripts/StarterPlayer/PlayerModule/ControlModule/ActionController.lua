--!strict

local StarterPlayer = game:GetService("StarterPlayer")

-- Utils
local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local ConnectionUtil = CommonUtils.get("ConnectionUtil")
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserPlayerModuleHiddenAPI = FlagUtil.getUserFlag("UserPlayerModuleHiddenAPI")
local FFlagUserPSActionsPathAware = FlagUtil.getUserFlag("UserPSActionsPathAware")

-- Action Instances
local inputContexts = script.Parent.Parent:WaitForChild("InputContexts")
local character = inputContexts:WaitForChild("Character")
local moveAction = character:WaitForChild("Move")
local jumpAction = character:WaitForChild("Jump")

local CONNECTIONS = {
	SERVER_AUTHORITY_CHANGED = "SERVER_AUTHORITY_CHANGED",
	ACTIONS_RELOADED = "ACTIONS_RELOADED",

	MOVE_ACTION = "MOVE_ACTION", -- remove with FFlagUserPlayerModuleHiddenAPI
	JUMP_ACTION = "JUMP_ACTION", -- remove with FFlagUserPlayerModuleHiddenAPI
}

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

local ZERO_VECTOR3: Vector3 = Vector3.new()

function ActionController.new()
	local self = setmetatable({}, ActionController)

	if FFlagUserPSActionsPathAware then 
		self.enabled = true
	else
		self.enabled = false
	end
	
	if not FFlagUserPlayerModuleHiddenAPI then
		self.moveVector = ZERO_VECTOR3
		self.isJumping = false
		self._connectionUtil = ConnectionUtil.new()
	end

	return self
end

if FFlagUserPSActionsPathAware then

	function ActionController.initializeActions(data, playerData)
		data.connectionUtil:trackConnection(CONNECTIONS.SERVER_AUTHORITY_CHANGED,
			data.eventBus:subscribe(CONNECTIONS.SERVER_AUTHORITY_CHANGED):Connect(function()
				playerData.actions = {}
			end)
		)

		if playerData.actions.Move and playerData.actions.Jump then return end
		if not playerData.player then return end

		-- may fail because the player's InputContexts may not be immediately available when the player is added
		pcall(function()
			local contextFolder = script.parent.parent.InputContexts
			if data.isServerAuthority then
				contextFolder = playerData.player.InputContexts
			end
			local characterContext = contextFolder.Character

			playerData.actions = {
				Move = characterContext.Move,
				Jump = characterContext.Jump,
			}

			data.eventBus:publish(CONNECTIONS.ACTIONS_RELOADED)
		end)
	end

	function ActionController.update(playerData)
		playerData.moveVector = playerData.actions.Move:GetState()
		playerData.isJumping = playerData.actions.Jump:GetState()
	end
end

function ActionController:Enable(enable: boolean)
	-- empty function to be removed when ControlModule no longer manages active controller
	if not FFlagUserPSActionsPathAware then
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
end


if FFlagUserPlayerModuleHiddenAPI then
	if not FFlagUserPSActionsPathAware then
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
