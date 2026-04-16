local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>

local function joinBindables<T>(
	bindables: { [string | number]: Bindable<any> },
	mapFunction: (values: any) -> T
): Bindable<T>
	local bindings: { [string | number]: React.Binding<any> } = {}
	local plainValues: { [string | number]: any } = {}
	local hasBinding = false

	for key, bindable in bindables :: { Bindable<any> } do
		if ReactIs.isBinding(bindable) then
			bindings[key] = bindable :: React.Binding<any>
			hasBinding = true
		else
			plainValues[key] = bindable :: any
		end
	end

	if not hasBinding then
		return mapFunction(plainValues)
	end

	return React.joinBindings(bindings):map(function(resolvedBindings)
		local result = table.clone(plainValues)
		for key, value in resolvedBindings do
			result[key] = value
		end
		return mapFunction(result)
	end)
end

return joinBindables
