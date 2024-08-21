local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>

local function indexBindable<T>(bindable: Bindable<T & {}>, index: string)
	if ReactIs.isBinding(bindable) then
		local binding = bindable :: React.Binding<T & {}>
		return binding:map(function(value: any)
			return value[index]
		end)
	else
		local notBinding = bindable :: any
		return notBinding[index]
	end
end

return indexBindable
