--!strict

--[[ Roblox Services ]]--
local inputContexts = script.Parent.Parent:WaitForChild("InputContexts")
local character = inputContexts:WaitForChild("Character")
local moveAction = character:WaitForChild("Move")
local jumpAction = character:WaitForChild("Jump")

--[[ The Module ]]--
local BaseCharacterController = require(script.Parent:WaitForChild("BaseCharacterController"))
local ActionController = setmetatable({}, BaseCharacterController)
ActionController.__index = ActionController

local CONNECTIONS = {
	MOVE_ACTION = "MOVE_ACTION",
	JUMP_ACTION = "JUMP_ACTION",
}

function ActionController.new()
	local self = setmetatable(BaseCharacterController.new() :: any, ActionController)
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

return ActionController
