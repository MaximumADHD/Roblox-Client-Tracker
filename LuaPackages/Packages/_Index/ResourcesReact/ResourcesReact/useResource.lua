local Packages = script.Parent.Parent
local React = require(Packages.React)
local Resources = require(Packages.Resources)
type resource<A..., R...> = Resources.resource<A..., R...>

local function useResource<T>(resource: resource<(), (T)>): T?
	local value, setValue = React.useState(function(): T?
		return nil
	end)

	React.useLayoutEffect(function()
		local dispose, result = resource()
		setValue(result)
		return function()
			setValue(nil)
			dispose()
		end
	end, { resource })

	return value
end

return useResource
