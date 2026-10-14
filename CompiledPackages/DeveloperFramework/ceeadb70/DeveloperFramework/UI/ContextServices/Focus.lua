--[[
	A utility for elements that need to display on top of all other elements,
	and elements that need to capture focus and block input to all other elements.
	Uses Portals to place elements in the main PluginGui.
	The Focus constructor expects a LayerCollector (PluginGui, ScreenGui, etc).

	NOTE: If you use DockWidget/Dialog from the DeveloperFramework, you do not
	have to manually create or provide a Focus.

	Functions:
		getTarget():
			Returns the top-level LayerCollector above the current component.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local ContextItem = require(Framework.UI.ContextServices.ContextItem)
local verifyNewItem = function(target)
	assert(target and target:IsA("LayerCollector"), "Focus.new: Expected a LayerCollector as the target.")
end
return ContextItem:createSimple("Focus", { verifyNewItem = verifyNewItem })
