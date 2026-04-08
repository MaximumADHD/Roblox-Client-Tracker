local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local React = require(Packages.React)

return function(callback: () -> (), when: any)
	local hasRunEver = React.useRef(false)

	React.useEffect(function()
		if when and not hasRunEver.current then
			callback()
			hasRunEver.current = true
		end
	end, { when })
end
