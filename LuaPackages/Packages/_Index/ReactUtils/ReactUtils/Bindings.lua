-- Luau limitations prevent React's native binding methods from being useful or type-safe.
-- This is in large part due to Luau's recursive generic restriction, which makes it impossible
-- to have a method on `T<A>` return `T<B>`.
-- Thus, instead of methods, all of these are static functions.
-- Note that this module **intentionally excludes "Bindable" types**.
-- This is because when trying to write something like `mapBindable`, in practice
-- Luau will start producing error types instead.
-- The only code in here is stuff that is proven to be type-safe in practice.

-- Replacement guide:
-- `React.useBinding` -> `ReactUtils.Bindings.useBinding`
-- `binding:map(fn)` -> `ReactUtils.Bindings.map(binding, fn)`
-- `React.joinBindings({ a, b }):map(fn)` -> `ReactUtils.Bindings.mapBindings2(a, b, fn)

--!strict
local ReactUtils = script:FindFirstAncestor("ReactUtils")

local React = require(ReactUtils.Parent.React)

local Bindings = {}

-- `:getValue` always produces the same `T`, so we don't need a fancy wrapper around it.
export type Binding<T> = {
	getValue: (self: Binding<T>) -> T,
}

function Bindings.map<T, U>(binding: React.Binding<T> | Binding<T>, callback: (T) -> U): Binding<U>
	return (binding :: any):map(callback)
end

-- Convert bad binding type to good binding type
function Bindings.binding<T>(binding: React.Binding<T>): Binding<T>
	return binding :: any
end

function Bindings.useBinding<T>(value: T): (Binding<T>, (T) -> ())
	local binding, setBinding = React.useBinding(value)
	return Bindings.binding(binding), setBinding
end

function Bindings.createBinding<T>(value: T): (Binding<T>, (T) -> ())
	local binding, setBinding = React.createBinding(value)
	return Bindings.binding(binding), setBinding
end

function Bindings.joinBindings2<T1, T2>(first: Binding<T1>, second: Binding<T2>): Binding<{ first: T1, second: T2 }>
	return Bindings.binding(React.joinBindings({
		first = first,
		second = second,
	} :: any))
end

function Bindings.mapBindings2<T1, T2, U>(first: Binding<T1>, second: Binding<T2>, callback: (T1, T2) -> U): Binding<U>
	return Bindings.map(
		Bindings.binding(React.joinBindings({
			first = first,
			second = second,
		} :: any)),
		function(pair)
			return callback(pair.first, pair.second)
		end
	)
end

function Bindings.joinBindings3<T1, T2, T3>(
	first: Binding<T1>,
	second: Binding<T2>,
	third: Binding<T3>
): Binding<{ first: T1, second: T2, third: T3 }>
	return Bindings.binding(React.joinBindings({
		first = first,
		second = second,
		third = third,
	} :: any))
end

function Bindings.mapBindings3<T1, T2, T3, U>(
	first: Binding<T1>,
	second: Binding<T2>,
	third: Binding<T3>,
	callback: (T1, T2, T3) -> U
): Binding<U>
	return Bindings.map(
		Bindings.binding(React.joinBindings({
			first = first,
			second = second,
			third = third,
		} :: any)),
		function(triple)
			return callback(triple.first, triple.second, triple.third)
		end
	)
end

function Bindings.mapBindings4<T1, T2, T3, T4, U>(
	first: Binding<T1>,
	second: Binding<T2>,
	third: Binding<T3>,
	fourth: Binding<T4>,
	callback: (T1, T2, T3, T4) -> U
): Binding<U>
	return Bindings.map(
		Bindings.binding(React.joinBindings({
			first = first,
			second = second,
			third = third,
			fourth = fourth,
		} :: any)),
		function(quadruple)
			return callback(quadruple.first, quadruple.second, quadruple.third, quadruple.fourth)
		end
	)
end

return Bindings
