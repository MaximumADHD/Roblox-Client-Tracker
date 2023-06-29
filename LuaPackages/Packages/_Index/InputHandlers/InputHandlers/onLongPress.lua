--!strict
local Packages = script.Parent.Parent
local FocusNavigation = require(Packages.FocusNavigation)

local handleInput = require(script.Parent.handleInput)

local function onLongPress(
	durationSeconds: number,
	onHoldForDuration: handleInput.Callback,
	onHoldStep: handleInput.StepCallback?
): FocusNavigation.EventHandler
	return handleInput({
		hold = {
			durationSeconds = durationSeconds,
			onComplete = onHoldForDuration,
			onStep = onHoldStep,
		},
	})
end

return onLongPress
