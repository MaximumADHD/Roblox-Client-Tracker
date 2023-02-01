--[[
	A hook that will fires a callback on rerender, except on first mount (aka it mimics the didUpdate lifecycle event).
]]

local RoactUtils = script:FindFirstAncestor("RoactUtils")
local Packages = RoactUtils.Parent

local React = require(Packages.React)

return function(onDidUpdate: () -> ()?)
	local didMountRef = React.useRef(false)
	local didUpdateRef = React.useRef(false)

	React.useEffect(function()
		if not didMountRef.current then
			didMountRef.current = true
			return
		end

		if not didUpdateRef.current then
			didUpdateRef.current = true
		end

		if onDidUpdate then
			onDidUpdate()
		end
	end)

	return didUpdateRef
end
