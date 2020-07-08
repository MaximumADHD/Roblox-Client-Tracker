--[[
	Shows or hides the active instance highlight. Highlight is shown when
	alignment is relative to the active object, and hidden when relative
	to the selection.

	The highlight is only shown while the tool is enabled.
]]

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent

local RelativeTo = require(Plugin.Src.Utility.RelativeTo)

return function()
	return function(store)
		local state = store:getState()

		local enabled
		if state.toolEnabled then
			local relativeTo = state.relativeTo
			enabled = relativeTo == RelativeTo.Active
		else
			enabled = false
		end

		StudioService.ShowActiveInstanceHighlight = enabled
	end
end
