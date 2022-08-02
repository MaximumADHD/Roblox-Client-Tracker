local GuiService = game:GetService("GuiService")

local module = {}

-- Determine the currently selected instance using GuiService
-- @return {GuiObject | nil} the currently selected object
module.getSelection = function()
	return GuiService.SelectedCoreObject or GuiService.SelectedObject
end

return module
