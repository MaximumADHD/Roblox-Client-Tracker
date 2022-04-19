--[[
	A hook that returns the value from the previous render (for comparison).
]]

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local function usePrevious<T>(value: T): T?
	local ref = React.useRef(nil :: T?)
	React.useEffect(function()
		ref.current = value
	end)
	return ref.current
end

return usePrevious
