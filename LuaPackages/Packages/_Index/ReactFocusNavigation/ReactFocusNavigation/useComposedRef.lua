--!strict
local Packages = script.Parent.Parent
local React = require(Packages.React)

type Ref = React.Ref<Instance>

local function forwardRefValue(ref: Ref?, value: Instance?)
	if type(ref) == "function" then
		ref(value)
	elseif type(ref) == "table" then
		ref.current = value
	end
end

--[[
	Composes a ref with an optional additional ref, allowing both refs to be
	assigned according to either object or callback ref semantics. Returns a
	callback ref that forwards values.
]]
local function useComposedRef(baseRef: Ref, innerRef: Ref?): Ref
	local composedRef = React.useCallback(function(value)
		forwardRefValue(baseRef, value)
		forwardRefValue(innerRef, value)
	end, { baseRef, innerRef } :: { any })

	return composedRef
end

return useComposedRef
