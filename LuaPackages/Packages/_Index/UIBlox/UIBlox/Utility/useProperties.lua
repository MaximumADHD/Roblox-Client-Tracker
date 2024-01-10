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
local usePropertiesBase = require(UtilityRoot.usePropertiesBase)

type ChangeFunc = usePropertiesBase.ChangeFunc
type PropNames = usePropertiesBase.PropNames

return function<T>(forwardRef: React.Ref<T>, update: ChangeFunc, ...: PropNames): React.Ref<T>
	return usePropertiesBase(forwardRef, update, false, ...)
end
