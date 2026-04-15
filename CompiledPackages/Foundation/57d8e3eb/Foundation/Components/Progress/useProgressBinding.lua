local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>

local function useProgressBinding(value: Bindable<number>?): (Bindable<number>?, boolean)
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
end

return useProgressBinding
