--!strict

--[[
	A set of convenience wrappers for hooks that take a
	dependency array.

	Rather than passing dependencies in as an array, these
	wrapper accept dependencies as variable args. This has
	a couple advantages:
	- It is safe to pass in `nil` dependencies
	- There is no need to cast dependencies to `any` to avoid
	  Luau type errors when the types differ

	NOTE: When no dependencies are passed into the useEffect
	or useLayoutEffect wrappers, they will behave as if an
	empty dependency array was passed into the wrapped hooks.
	To achieve the run-after-every-render behavior, the React
	useEffect or useLayoutEffect hooks must be used directly.
]]

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local Symbol = require(CorePackages.Symbol)

local NilDependency = Symbol.named("NilDependency")

local VarargHooks = {}

local function createDependencyArray(...)
	local depsArray = {}
	local numDeps = select("#", ...)
	for i = 1, numDeps do
		local dep = select(i, ...)
		if dep == nil then
			dep = NilDependency
		end
		depsArray[i] = dep
	end
	return depsArray
end

type Effect = (() -> ()) | (() -> (() -> ()))

function VarargHooks.useEffect(effect: Effect, ...)
	React.useEffect(effect, createDependencyArray(...))
end

function VarargHooks.useLayoutEffect(effect: Effect, ...)
	React.useLayoutEffect(effect, createDependencyArray(...))
end

function VarargHooks.useCallback<T>(callback: T, ...): T
	return React.useCallback(callback, createDependencyArray(...))
end

function VarargHooks.useMemo<T...>(create: () -> T..., ...): T...
	return React.useMemo(create, createDependencyArray(...))
end

return VarargHooks
