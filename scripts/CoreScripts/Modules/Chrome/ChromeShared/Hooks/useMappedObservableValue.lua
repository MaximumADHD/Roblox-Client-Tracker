local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ChromeUtils = require(Root.Service.ChromeUtils)

-- An optimized version of useObservableValue. Allowing the user to narrow the return data to reduce re-renders.

-- note: changing mapFunc will not re-run the effect - this is intended

return function<T>(observableValue: ChromeUtils.ObservableValue<T>, mapFunc: (T) -> any)
	if not observableValue then
		warn("observableValue undefined")
		return nil
	end

	local value, setValue = React.useState(mapFunc(observableValue:get()))
	React.useEffect(function()
		local conn = observableValue:connect(function()
			setValue(mapFunc(observableValue:get()))
		end)

		local v = mapFunc(observableValue:get())
		if value ~= v then
			setValue(v)
		end

		return function()
			conn:disconnect()
		end
	end, { observableValue })

	return value
end
