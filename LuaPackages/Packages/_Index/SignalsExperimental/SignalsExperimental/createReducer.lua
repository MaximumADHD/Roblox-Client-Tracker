local Packages = script.Parent.Parent
local Signals = require(Packages.Signals)
local createComputed = Signals.createComputed

type getter<T> = Signals.getter<T>
type scope = Signals.scope

local function createReducer<T>(reducer: (scope, previous: T) -> T, initial: (() -> T) | T): getter<T>
	local isInitialized = false
	local state: T

	local function ensureInitialized()
		if not isInitialized then
			isInitialized = true
			state = if typeof(initial) == "function" then initial() else initial
		end
	end

	return createComputed(function(scope)
		ensureInitialized()
		state = reducer(scope, state)
		return state
	end)
end

return createReducer
