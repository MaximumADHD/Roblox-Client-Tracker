local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local ResponsiveContext = require(script.Parent.ResponsiveContext)
type ResponsiveContext = ResponsiveContext.ResponsiveContext

local function useResponsive(): ResponsiveContext
	return React.useContext(ResponsiveContext)
end

return useResponsive
