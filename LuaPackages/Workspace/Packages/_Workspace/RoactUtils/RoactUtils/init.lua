local ExternalEventConnection = require(script.ExternalEventConnection)
local validatePropsWithForwardRef = require(script.validatePropsWithForwardRef)
local isGamepadInput = require(script.isGamepadInput)
local wasLastInputGamepad = require(script.wasLastInputGamepad)
local withIsGamepadInput = require(script.withIsGamepadInput)
local Hooks = require(script.Hooks)

return {
	Hooks = Hooks,
	ExternalEventConnection = ExternalEventConnection,
	validatePropsWithForwardRef = validatePropsWithForwardRef,
	isGamepadInput = isGamepadInput,
	wasLastInputGamepad = wasLastInputGamepad,
	withIsGamepadInput = withIsGamepadInput,
}
