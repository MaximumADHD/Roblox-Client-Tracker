local Signals = require(script.Parent.Signals)
local SignalsExperimental = require(script.SignalsExperimental)

export type getter<T> = Signals.getter<T>
export type setter<T> = Signals.setter<T>
export type update<T> = Signals.update<T>
export type equals<T> = Signals.equals<T>
export type dispose = Signals.dispose

export type scope = Signals.scope

return {
	-- core:
	createSignal = Signals.createSignal,
	createComputed = Signals.createComputed,
	createEffect = SignalsExperimental.createEffect,
	-- hooks:
	onDisposed = SignalsExperimental.onDisposed,
	-- advanced:
	createRoot = SignalsExperimental.createRoot,
}
