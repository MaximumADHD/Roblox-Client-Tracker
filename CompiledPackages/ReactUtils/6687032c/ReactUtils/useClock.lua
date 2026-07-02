--!strict
local ReactUtils = script:FindFirstAncestor("ReactUtils")

local Packages = ReactUtils.Parent
local React = require(Packages.React)

local function useClock(): React.Binding<number>
	local clockBinding, updateClockBinding = React.useBinding(0)

	React.useEffect(function()
		local thread = task.spawn(function()
			while true do
				local delta = task.wait()
				updateClockBinding(clockBinding:getValue() + delta)
			end
		end)

		return function()
			task.cancel(thread)
		end
	end, {})

	return clockBinding
end

return useClock
