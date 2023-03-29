--!strict
local createSignal = require(script.createSignal)
local shallowEqual = require(script.shallowEqual)
local getAncestors = require(script.getAncestors)

export type Signal<T> = createSignal.Signal<T>
export type FireSignal<T> = createSignal.FireSignal<T>
export type Subscription = createSignal.Subscription

return {
	createSignal = createSignal,
	shallowEqual = shallowEqual,
	getAncestors = getAncestors,
}
