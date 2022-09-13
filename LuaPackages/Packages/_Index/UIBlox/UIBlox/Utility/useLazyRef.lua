--[[
	An alternative to useRef that avoids creating the initial value when it is not needed.

	It takes an initialization function instead, and only invokes it on the first call.

	The value returned is a ref with its current value set to what the init function returned.
]]

local UtilityRoot = script.Parent
local UIBloxRoot = UtilityRoot.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)

local function useLazyRef(initFunction)
	local ref = React.useRef(nil)
	if ref.current == nil then
		ref.current = initFunction()
	end
	return ref
end

return useLazyRef
