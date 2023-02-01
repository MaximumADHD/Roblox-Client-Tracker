--[[
	A hook that will fire a callback only on mount.
]]

local RoactUtils = script:FindFirstAncestor("RoactUtils")
local Packages = RoactUtils.Parent

local React = require(Packages.React)

return function(callback: () -> ())
	React.useEffect(function()
		callback()
	end, {})
end
