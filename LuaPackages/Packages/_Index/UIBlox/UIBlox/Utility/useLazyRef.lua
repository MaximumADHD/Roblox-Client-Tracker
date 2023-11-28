--!strict
--[[
	An alternative to useRef that avoids creating the initial value when it is not needed.

	It takes an initialization function instead, and only invokes it on the first call.

	The value returned is a ref with its current value set to what the init function returned.
]]

local UtilityRoot = script.Parent
local UIBloxRoot = UtilityRoot.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)

-- Normally, a ref can always have a nil value; for our purposes, we ensure that
-- it's always created and should guarantee that in the return value
type ObjectRef<T> = {
	current: T,
}

local function useLazyRef<T>(initFunction: () -> T): ObjectRef<T>
	local ref = React.useRef(nil :: T?)
	if ref.current == nil then
		ref.current = initFunction()
	end
	return (ref :: any) :: ObjectRef<T>
end

return useLazyRef
