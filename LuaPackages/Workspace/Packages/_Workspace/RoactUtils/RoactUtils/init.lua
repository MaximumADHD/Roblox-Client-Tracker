local ExternalEventConnection = require(script.ExternalEventConnection)
local validatePropsWithForwardRef = require(script.validatePropsWithForwardRef)
local isGamepadInput = require(script.isGamepadInput)
local wasLastInputGamepad = require(script.wasLastInputGamepad)
local withIsGamepadInput = require(script.withIsGamepadInput)
local Components = require(script.Components)
local Hooks = require(script.Hooks)

export type ProviderSpec = Components.ProviderSpec
export type ProviderSpecs = Components.ProviderSpecs

return {
	Components = Components,
	Hooks = Hooks,
	ExternalEventConnection = ExternalEventConnection,
	validatePropsWithForwardRef = validatePropsWithForwardRef,
	isGamepadInput = isGamepadInput,
	wasLastInputGamepad = wasLastInputGamepad,
	withIsGamepadInput = withIsGamepadInput,
}
