--[[
	A hook that returns the value from the previous render (for comparison).

	Stolen from https://github.com/Roblox/lua-apps/blob/master/content/LuaPackages/AppTempCommon/Hooks/usePrevious.lua
]]

local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")
local React = require(VerifiedBadges.Parent.React)

local function usePrevious<T>(value: T): T?
	local ref = React.useRef(nil :: T?)
	React.useEffect(function()
		ref.current = value
	end)
	return ref.current
end

return usePrevious
