local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(script.Parent.Types)
local WidgetsContext = require(script.Parent.WidgetsContext)

type WidgetsContext = Types.WidgetsContext

local function useWidgetsContext(): WidgetsContext
	local context = React.useContext(WidgetsContext)
	if context == nil then
		error("useWidgetsContext must be used within a WidgetsProvider")
	end
	return context
end

return useWidgetsContext
