local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local PanelsContext = require(script.Parent.PanelsContext)
local Types = require(script.Parent.Types)

type PanelsContext = Types.PanelsContext

local function usePanelsContext(): PanelsContext
	local context = React.useContext(PanelsContext)
	if context == nil then
		error("usePanelsContext must be used within a PanelsContext")
	end
	return context
end

return usePanelsContext
