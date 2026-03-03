local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Orientation = require(Foundation.Enums.Orientation)
type Orientation = Orientation.Orientation

local OptionSelectorGroupContext = require(script.Parent.OptionSelectorGroupContext)

local useOptionSelectorGroup = function()
	return React.useContext(OptionSelectorGroupContext)
end

return useOptionSelectorGroup
