local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Services = require(Foundation.Utility.Wrappers.Services)

local SliderStepDirection = require(Foundation.Components.Slider.SliderStepDirection)
type SliderStepDirection = SliderStepDirection.SliderStepDirection

local calculateAdjacentStepValue = require(Foundation.Components.Slider.calculateAdjacentStepValue)
local constants = require(Foundation.Components.Slider.constants)

local REVERSAL_SETTLE_REPORTS = 3
-- Hold-to-repeat starts near the platform typematic convention, then continuous
-- sliders accelerate through discrete cadence tiers. Stepped sliders retain one
-- predictable logical step per 100ms interval.
local INITIAL_REPEAT_DELAY = 0.4
local REPEAT_INTERVAL = 0.1
local MEDIUM_REPEAT_INTERVAL = 0.06
local FAST_REPEAT_INTERVAL = 0.03
local MEDIUM_REPEAT_START = 5
local FAST_REPEAT_START = 15

local function getStepSignForKeyCode(keyCode: Enum.KeyCode, isVertical: boolean): number?
	local axis = if isVertical then "vertical" else "horizontal"
	if table.find(constants.stepIncrement[axis], keyCode) then
		return 1
	elseif table.find(constants.stepDecrement[axis], keyCode) then
		return -1
	end
	return nil
end

local function isExitKey(keyCode: Enum.KeyCode): boolean
	return table.find(constants.exit, keyCode) ~= nil
end

local function getRepeatInterval(repeatCount: number, step: number?): number
	if step ~= nil and step > 0 then
		return REPEAT_INTERVAL
	end

	if repeatCount >= FAST_REPEAT_START then
		return FAST_REPEAT_INTERVAL
	elseif repeatCount >= MEDIUM_REPEAT_START then
		return MEDIUM_REPEAT_INTERVAL
	end
	return REPEAT_INTERVAL
end

export type Handlers = {
	getValue: () -> number,
	onStep: (newValue: number) -> (),
	onExit: () -> (),
}

local function useSliderDirectionalInput(
	isActive: boolean,
	step: number?,
	range: NumberRange,
	isVertical: boolean,
	handlers: Handlers
)
	-- The listeners persist across value changes, so this ref prevents repeat callbacks from reading stale inputs.
	local latestRef = React.useRef({
		step = step,
		range = range,
		handlers = handlers,
	})
	latestRef.current = {
		step = step,
		range = range,
		handlers = handlers,
	}

	React.useEffect(function()
		if not isActive then
			return
		end

		local currentInput: InputObject? = nil
		local currentSign = 0
		local repeatThread: thread? = nil
		local thumbstickSign = 0
		local reversalReports = 0

		local function performStep(sign: number)
			local latest = latestRef.current
			local direction: SliderStepDirection = if sign > 0
				then SliderStepDirection.Increment
				else SliderStepDirection.Decrement
			latest.handlers.onStep(
				calculateAdjacentStepValue(latest.handlers.getValue(), direction, latest.range, latest.step)
			)
		end

		local function stopStepping(input: InputObject?)
			if input ~= nil and input ~= currentInput then
				return
			end
			currentInput = nil
			currentSign = 0
			if repeatThread then
				task.cancel(repeatThread)
				repeatThread = nil
			end
		end

		local function startStepping(input: InputObject, sign: number)
			if input == currentInput and sign == currentSign then
				return
			end

			stopStepping(nil)
			currentInput = input
			currentSign = sign

			performStep(sign)

			repeatThread = task.spawn(function()
				task.wait(INITIAL_REPEAT_DELAY)
				local repeatCount = 0
				while currentInput == input and currentSign == sign do
					performStep(sign)
					repeatCount += 1
					task.wait(getRepeatInterval(repeatCount, latestRef.current.step))
				end
			end)
		end

		-- Every directional input flows through here. Arrow keys and the D-pad
		-- arrive via InputBegan; the analog thumbstick only ever reports through
		-- InputChanged, so both signals share this handler.
		local function evaluateInput(input: InputObject)
			if isExitKey(input.KeyCode) then
				latestRef.current.handlers.onExit()
				return
			end

			local stepSign = getStepSignForKeyCode(input.KeyCode, isVertical)
			if stepSign then
				startStepping(input, stepSign)
				return
			end

			if table.find(constants.analogStep, input.KeyCode) then
				local stepAxis = if isVertical then input.Position.Y else input.Position.X
				if math.abs(stepAxis) >= constants.thumbstickDeadzone then
					local sign = if stepAxis > 0 then 1 else -1
					local isReversal = thumbstickSign ~= 0 and sign ~= thumbstickSign
					reversalReports = if isReversal then reversalReports + 1 else 0

					if isReversal and reversalReports < REVERSAL_SETTLE_REPORTS then
						stopStepping(input)
					else
						thumbstickSign = sign
						startStepping(input, sign)
					end
				else
					thumbstickSign = 0
					reversalReports = 0
					stopStepping(input)
				end
			end
		end

		local function handleInputEnded(input: InputObject)
			if table.find(constants.analogStep, input.KeyCode) then
				thumbstickSign = 0
				reversalReports = 0
			end
			stopStepping(input)
		end

		local connections: { RBXScriptConnection } = {
			Services.UserInputService.InputBegan:Connect(evaluateInput),
			Services.UserInputService.InputChanged:Connect(evaluateInput),
			Services.UserInputService.InputEnded:Connect(handleInputEnded),
		}

		return function()
			stopStepping(nil)
			for _, connection in connections do
				connection:Disconnect()
			end
		end
	end, { isActive, isVertical } :: { unknown })
end

return useSliderDirectionalInput
