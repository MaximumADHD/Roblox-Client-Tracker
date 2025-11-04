local Packages = script.Parent.Parent
local React = require(Packages.React)
type Binding<T> = React.Binding<T>

local Signals = require(Packages.Signals)
local createEffect = Signals.createEffect
type getter<T> = Signals.getter<T>

local function useSignalBinding<T>(getter: getter<T>): Binding<T>
	local binding, setBinding = React.useBinding(getter(false))

	React.useLayoutEffect(function()
		setBinding(getter(false))
		return createEffect(function(scope)
			setBinding(getter(scope))
		end)
	end, { getter })

	return binding
end

return useSignalBinding
