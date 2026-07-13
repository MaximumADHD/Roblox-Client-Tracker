local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local HeaderBarContext = require(Foundation.Components.HeaderBar.HeaderBarContext)

local function useHeaderBarContext()
	return React.useContext(HeaderBarContext.Context)
end

return useHeaderBarContext
