--!strict
local Packages = script.Parent.Parent
local FocusNavigation = require(Packages.FocusNavigation)

local Heartbeat = require(script.Parent.Heartbeat)

export type Callback = () -> ()
export type StepCallback = (number) -> ()

type Config = {
	onPress: FocusNavigation.EventHandler?,
	onRelease: FocusNavigation.EventHandler?,

	hold: {
		durationSeconds: number,
		onComplete: Callback,
		onStep: StepCallback?,
		allowReleaseAfterHold: boolean?,
	}?,
}

-- TODO: Replace this with standard task.cancel when fake timers support it
type CancellableDelay = {
	cancel: () -> (),
}
local function cancellableDelay(duration, callback)
	local isCancelled = false
	task.delay(duration, function()
		if not isCancelled then
			callback()
		end
	end)
	return {
		cancel = function()
			isCancelled = true
		end,
	}
end

local function handleInput(config: Config): FocusNavigation.EventHandler
	local hold = config.hold
	local holdCompleteTask: CancellableDelay? = nil
	local holdStepConnection: RBXScriptConnection? = nil

	local receivedPress = false

	local function clearHeldState()
		if holdCompleteTask then
			holdCompleteTask.cancel()
			holdCompleteTask = nil
		end
		if holdStepConnection then
			holdStepConnection:Disconnect()
			holdStepConnection = nil
		end
		receivedPress = false
	end

	return function(event)
		local inputState = if event.eventData then event.eventData.UserInputState else nil

		if inputState == Enum.UserInputState.Begin then
			-- press
			if config.onPress then
				config.onPress(event)
			end

			-- hold
			clearHeldState()

			if hold then
				holdCompleteTask = cancellableDelay(hold.durationSeconds, function()
					-- if the hold was completed, we can flip `receivedPress` to
					-- false to effectively cancel the onRelease
					if not hold.allowReleaseAfterHold then
						receivedPress = false
					end
					hold.onComplete()
					if holdStepConnection then
						holdStepConnection:Disconnect()
						holdStepConnection = nil
					end
				end)
				holdStepConnection = if hold.onStep then Heartbeat:Connect(hold.onStep) else nil
			end

			-- release
			receivedPress = true
		end

		if inputState == Enum.UserInputState.End then
			-- release
			if config.onRelease and receivedPress then
				config.onRelease(event)
			end

			-- hold + release
			clearHeldState()
		end

		if inputState == Enum.UserInputState.Cancel then
			-- hold + release
			clearHeldState()
		end
	end
end

return handleInput
