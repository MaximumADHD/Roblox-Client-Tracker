local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ChromeUtils = require(script.Parent.Parent.Service.ChromeUtils)

-- A Hook to wrap a MappedSignal object

-- MappedSignals provide a common abstraction for a value and a the signal notifying that the value changed

return function<T>(mappedSignal: ChromeUtils.MappedSignal<T>): T
	local value, setValue = React.useState(mappedSignal:get())
	React.useEffect(function()
		local conn = mappedSignal:connect(function(updatedValue)
			setValue(updatedValue)
		end)

		-- There is a delay between useState and the useEffect mount running.
		-- To avoid a race, we need to double check the value.
		if value ~= mappedSignal:get() then
			setValue(mappedSignal:get())
		end

		return function()
			conn:disconnect()
		end
	end, { mappedSignal })

	return value
end
