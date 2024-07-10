--!strict
local ReactUtils = script:FindFirstAncestor("ReactUtils")

local Packages = ReactUtils.Parent
local React = require(Packages.React)

local function useDebounce<T>(value: T, delay: number?): T
	local debouncedValue, setDebouncedValue = React.useState(value)

	React.useLayoutEffect(function()
		local function updateValue()
			setDebouncedValue(value)
		end

		if delay == nil or delay == 0 then
			updateValue()
			return
		end

		local handle = task.delay(delay, updateValue)

		return function()
			task.cancel(handle)
		end
	end, { value, delay } :: { any })

	return debouncedValue
end

return useDebounce
