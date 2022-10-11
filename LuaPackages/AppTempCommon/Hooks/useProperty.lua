local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local dependencyArray = require(script.Parent.dependencyArray)

--[[
	A hook that returns the latest value of a property and subscribes to changes in its value.

	@param instanceRef a ref to the instance we want to read the property from
	@param propertyName the name of the property to watch

	The component using this hook will rerender whenever the property value changes.

	Unlike a binding (which can update property values without rerendering), this hook
	can be used only to read property values and automatically re-render when they change.

	Example usage:

	local function TestComponent(props)
		local frameRef = React.useRef(nil)
		local frameSize = useProperty(frameRef, "AbsoluteSize")

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			ref = frameRef,
		}, {
			Widget = Roact.createElement(MyWidget, {
				width = frameSize and frameSize.X or 0,
				...
			}),
		})
	end
]]
local function useProperty(instanceRef: any, propertyName)
	local instance = instanceRef.current

	local value, setValue = React.useState(function()
		-- Only calculate initial value on first call
		return if instance then instance[propertyName] else nil
	end)

	local onPropertyChanged = React.useCallback(function()
		local instance = instanceRef.current
		if instance then
			local newValue = instance[propertyName]
			setValue(newValue)
		end
	end, dependencyArray(instanceRef, propertyName))

	-- Effect that subscribes to property changes and updates state with the
	-- initial property value when the ref is populated
	React.useEffect(function()
		local connection
		local instance = instanceRef.current
		if instance then
			connection = instance:GetPropertyChangedSignal(propertyName):Connect(onPropertyChanged)
			-- Call directly to update state with initial property value
			onPropertyChanged()
		end

		return function()
			if connection then
				connection:Disconnect()
			end
		end
	end, dependencyArray(instance, propertyName, onPropertyChanged))

	return value
end

return useProperty
