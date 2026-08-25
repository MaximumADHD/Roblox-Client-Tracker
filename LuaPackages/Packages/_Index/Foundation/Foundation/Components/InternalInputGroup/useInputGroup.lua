local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local InputGroupContext = require(script.Parent.InputGroupContext)
type InputGroupConfiguration = InputGroupContext.InputGroupConfiguration

local function useInputGroup(): InputGroupConfiguration
	return React.useContext(InputGroupContext)
end

return useInputGroup
