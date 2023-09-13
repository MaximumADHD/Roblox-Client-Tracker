local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ChromeUtils = require(script.Parent.Parent.Service.ChromeUtils)

return function<T, V>(observableValue: ChromeUtils.ObservableValue<T>, mapFunc: ((T) -> V?)?): React.Binding<V?>
	if not observableValue then
		warn("observableValue undefined")
		return React.useBinding(nil)
	end

	local map: (T) -> V?
	if mapFunc then
		map = mapFunc
	else
		map = function(v: T)
			return v :: any
		end
	end

	local bindingValue, setBindingValue = React.useBinding(map(observableValue:get()))

	React.useEffect(function()
		local conn = observableValue:connect(function()
			setBindingValue(map(observableValue:get()))
		end)

		setBindingValue(map(observableValue:get()))

		return function()
			conn:disconnect()
		end
	end, { observableValue })

	return bindingValue
end
