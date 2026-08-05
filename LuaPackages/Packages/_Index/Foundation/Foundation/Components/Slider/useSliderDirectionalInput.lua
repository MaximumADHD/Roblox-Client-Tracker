local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Services = require(Foundation.Utility.Wrappers.Services)

local SliderStepDirection = require(script.Parent.SliderStepDirection)
local SliderStepSize = require(script.Parent.SliderStepSize)
type SliderStepSize = SliderStepSize.SliderStepSize

local calculateDirectionalStepValue = require(script.Parent.calculateDirectionalStepValue)

-- Pushing the thumbstick this far past center starts stepping; matches the
-- CoreScripts Settings Slider deadzone.
local THUMBSTICK_DEADZONE = 0.8
-- Hold-to-repeat follows the platform convention for held navigation input: an
-- initial delay near the OS typematic delay (macOS 375ms, Linux 250ms,
-- Windows/Unity ~500ms) followed by a steady ~100ms interval (macOS 90ms, Linux
-- 91ms, Unity 100ms). L1/R1 page steps cover fast traversal, so the fine step
-- stays a predictable fixed rate rather than accelerating.
local INITIAL_REPEAT_DELAY = 0.4
local REPEAT_INTERVAL = 0.1

-- Page steps stay on the bumpers only. Page Up/Down are claimed by the engine to
-- scroll an ancestor ScrollingFrame while the slider is the SelectedObject, and
-- that core keybind can't be sunk, so binding them here would double-fire.
local function getStepForKeyCode(keyCode: Enum.KeyCode): { sign: number, size: SliderStepSize }?
	if keyCode == Enum.KeyCode.Right or keyCode == Enum.KeyCode.DPadRight then
		return { sign = 1, size = SliderStepSize.Step }
	elseif keyCode == Enum.KeyCode.Left or keyCode == Enum.KeyCode.DPadLeft then
		return { sign = -1, size = SliderStepSize.Step }
	elseif keyCode == Enum.KeyCode.ButtonR1 then
		return { sign = 1, size = SliderStepSize.Page }
	elseif keyCode == Enum.KeyCode.ButtonL1 then
		return { sign = -1, size = SliderStepSize.Page }
	end
	return nil
end

type Handlers = {
	getValue: () -> number,
	onStep: (newValue: number) -> (),
}

-- Input is observed without sinking it so Up and Down remain available for focus navigation.
local function useSliderDirectionalInput(isActive: boolean, step: number?, range: NumberRange, handlers: Handlers)
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
		local currentSize: SliderStepSize = SliderStepSize.Step
		local repeatThread: thread? = nil

		local function performStep(sign: number, size: SliderStepSize)
			local latest = latestRef.current
			latest.handlers.onStep(
				calculateDirectionalStepValue(
					latest.handlers.getValue(),
					if sign > 0 then SliderStepDirection.Increment else SliderStepDirection.Decrement,
					latest.range,
					latest.step,
					size
				)
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

		local function startStepping(input: InputObject, sign: number, size: SliderStepSize)
			if input == currentInput and sign == currentSign and size == currentSize then
				return
			end

			stopStepping(nil)
			currentInput = input
			currentSign = sign
			currentSize = size

			performStep(sign, size)

			repeatThread = task.spawn(function()
				task.wait(INITIAL_REPEAT_DELAY)
				while currentInput == input and currentSign == sign and currentSize == size do
					performStep(sign, size)
					task.wait(REPEAT_INTERVAL)
				end
			end)
		end

		-- Every directional input flows through here. Arrow keys, the D-pad, and the
		-- L1/R1 bumpers arrive via InputBegan; the analog thumbstick only ever reports
		-- through InputChanged, so both signals share this handler.
		local function evaluateInput(input: InputObject)
			local stepConfig = getStepForKeyCode(input.KeyCode)
			if stepConfig then
				startStepping(input, stepConfig.sign, stepConfig.size)
				return
			end

			if input.KeyCode == Enum.KeyCode.Thumbstick1 then
				if math.abs(input.Position.X) >= THUMBSTICK_DEADZONE then
					startStepping(input, if input.Position.X > 0 then 1 else -1, SliderStepSize.Step)
				else
					stopStepping(input)
				end
			end
		end

		local connections: { RBXScriptConnection } = {
			Services.UserInputService.InputBegan:Connect(evaluateInput),
			Services.UserInputService.InputChanged:Connect(evaluateInput),
			Services.UserInputService.InputEnded:Connect(stopStepping),
		}

		return function()
			stopStepping(nil)
			for _, connection in connections do
				connection:Disconnect()
			end
		end
	end, { isActive })
end

return useSliderDirectionalInput
