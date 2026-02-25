local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local Flags = require(Foundation.Utility.Flags)

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>

local function useProgressBinding(value: Bindable<number>?): (Bindable<number>?, boolean)
	if Flags.FoundationProgressBindableValue then
		if ReactIs.isBinding(value) then
			local valueBinding = value :: React.Binding<number>

			-- Calculate progress value (0 to 1)
			local progress = valueBinding:map(function(bindingValue: number)
				return math.clamp(bindingValue / 100, 0, 1)
			end)

			return progress :: React.Binding<number>, value == nil
		else
			return if value ~= nil then math.clamp((value :: number) / 100, 0, 1) else nil, value == nil
		end
	else
		-- Calculate progress value (0 to 1)
		local progressValue: number? = nil
		if value ~= nil then
			progressValue = math.clamp((value :: number) / 100, 0, 1)
		end

		local progress, updateProgress = React.useBinding(progressValue)

		React.useEffect(function()
			if progressValue ~= nil then
				updateProgress(progressValue)
			end
		end, { progressValue })

		return progress :: React.Binding<number>, value == nil
	end
end

return useProgressBinding
