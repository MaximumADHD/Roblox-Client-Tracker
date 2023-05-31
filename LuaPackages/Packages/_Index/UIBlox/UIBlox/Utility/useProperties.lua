--[[
	Allows safely using a property value from a ref
	the update function will be called every time one of the watched properties change
	it will also be called every time the ref instance changes, including on mount
	update will be called with the values of the properties in the names list, in order
	providing a different list of prop names will call update and watch the new properties

	usage example:
	local MyComponent = React.forwardRef(function(props, ref)
		local absolutePosition, setAbsolutePosition = React.useState(nil)
		-- ref can be nil, but if provided will be forwarded as frameRef
		local frameRef = useProperties(ref, setAbsolutePosition, "AbsolutePosition")
		if absolutePosition then
			-- use absolute position here
		end
		return React.createElement("Frame", {
			ref = frameRef,
			-- other props
		})
	end)
]]

local UtilityRoot = script.Parent
local UIBloxRoot = UtilityRoot.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array

local useForwardRef = require(UtilityRoot.useForwardRef)

type ChangeFunc = (...any) -> ()
type PropNames = string | { string }

return function<T>(forwardRef: React.Ref<T>, update: ChangeFunc, ...: PropNames): React.Ref<T>
	-- flatten and join all prop name arguments into a single string list
	local nameList = Array.concat({}, ...)
	local onRefChange = React.useCallback(function(instance: T)
		local function onPropChange()
			update(table.unpack(Array.map(nameList, function(name)
				-- suppress type warning, runtime fail expected on invalid prop
				return (instance :: any)[name]
			end)))
		end
		local connections = Array.map(nameList, function(name)
			return (instance :: T & Instance):GetPropertyChangedSignal(name):Connect(onPropChange)
		end)
		onPropChange()
		return function()
			for _, connection in connections do
				connection:Disconnect()
			end
		end
	end, { update, table.concat(nameList, ",") } :: { any })
	return useForwardRef(forwardRef, onRefChange)
end
