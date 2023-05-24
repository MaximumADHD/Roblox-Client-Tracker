local ContextActionService = game:GetService("ContextActionService")
local RunService = game:GetService("RunService")
local EventType = require(script.Parent.Parent.EventType)

type Event = EventType.Event

local JumpEvent = {
	Name = "FirstPersonToggleEvent",
}

local jumpFlag = false
local connection: RBXScriptConnection?

local JUMP_ACTION_NAME = "JumpAction"

local function onJumpInput(actionName, inputState, inputObject)
	if actionName == JUMP_ACTION_NAME then
		if inputState == Enum.UserInputState.Begin then
			jumpFlag = true
		end
	end

	return Enum.ContextActionResult.Pass
end

function startJumpEventListener()
	ContextActionService:BindCoreAction(JUMP_ACTION_NAME, onJumpInput, false, Enum.KeyCode.Space)
end

function stopJumpEventListener()
	ContextActionService:UnbindAction(JUMP_ACTION_NAME)
end

function JumpEvent.StartEvent(increaseCurrentIndex)
	-- Start the event listeners
	startJumpEventListener()

	--Wait for the relevant flags to be true.
	local function onRenderStepped(deltaTime)
		if jumpFlag then
			--Stop event listener
			stopJumpEventListener()

			--Advance to next slide
			increaseCurrentIndex()

			--Disconnect Event
			if connection then
				connection:Disconnect()
				connection = nil
			end
		end
	end

	connection = RunService.RenderStepped:Connect(onRenderStepped)
end

function JumpEvent.StopEvent()
	if connection then
		connection:Disconnect()
		connection = nil
	end
	stopJumpEventListener()
end

return JumpEvent :: Event
