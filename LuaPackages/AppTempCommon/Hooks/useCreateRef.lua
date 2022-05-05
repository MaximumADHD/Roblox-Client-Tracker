--[[
	A hook that can be used as a blanket replacement for React.useRef()

	There is currently a bug in React.useRef() that prevents the returned
	ref from being passed to other component fields like NextSelectionDown.
	Using this hook instead is the recommended workaround.

	TODO(LUAFDN-988): Remove this hook once useRef returns a binding object.
]]

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

type MutableRef<T> = { current: T }

local function createInitializedRef<T>(initialValue: T): MutableRef<T>
	local bindingRef = React.createRef() :: any
	bindingRef.current = initialValue
	return bindingRef
end

local function useCreateRef<T>(initialValue: T): MutableRef<T>
	local ref = React.useRef(nil :: MutableRef<T>?)
	if ref.current == nil then
		ref.current = createInitializedRef(initialValue)
	end
	return ref.current :: MutableRef<T>
end

return useCreateRef
