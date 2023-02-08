--[[
	A hook that returns the value from the previous render (for comparison).
]]

local UIBlox = script:FindFirstAncestor("UIBlox")

local React = require(UIBlox.Parent.React)

local function usePrevious<T>(value: T): T?
	local ref = React.useRef(nil :: T?)
	React.useEffect(function()
		ref.current = value
	end)
	return ref.current
end

return usePrevious
