local ContextActionService = game:GetService("ContextActionService")
local RunService = game:GetService("RunService")
local EventType = require(script.Parent.Parent.EventType)

type Event = EventType.Event

local FirstPersonToggleEvent = {
	Name = "FirstPersonToggleEvent",
}

local firstPersonToggleFlag = false
local connection: RBXScriptConnection?

local FIRST_PERSON_TOGGLE_ACTION_NAME = "FirstPersonToggleAction"

local function onFirstPersonToggleInput(actionName, inputState, inputObject)
	if actionName == FIRST_PERSON_TOGGLE_ACTION_NAME then
		if inputState == Enum.UserInputState.Begin then
			firstPersonToggleFlag = true
		end
	end

	return Enum.ContextActionResult.Pass
end

function startFirstPersonToggleListener()
	ContextActionService:BindCoreAction(
		FIRST_PERSON_TOGGLE_ACTION_NAME,
		onFirstPersonToggleInput,
		false,
		Enum.KeyCode.ButtonR3
	)
end

function stopFirstPersonToggleListener()
	ContextActionService:UnbindAction(FIRST_PERSON_TOGGLE_ACTION_NAME)
end

function FirstPersonToggleEvent.StartEvent(increaseCurrentIndex)
	-- Start the event listeners
	startFirstPersonToggleListener()

	--Wait for the relevant flags to be true.
	local function onRenderStepped(deltaTime)
		if firstPersonToggleFlag then
			--Stop event listener
			stopFirstPersonToggleListener()

			--Advance to next slide
			task.wait(0.2)
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

function FirstPersonToggleEvent.StopEvent()
	if connection then
		connection:Disconnect()
	end
	stopFirstPersonToggleListener()
end

return FirstPersonToggleEvent :: Event
