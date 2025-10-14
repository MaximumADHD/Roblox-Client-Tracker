local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local ResponsiveContext = require(script.Parent.ResponsiveContext)

return function()
	return React.useContext(ResponsiveContext)
end
