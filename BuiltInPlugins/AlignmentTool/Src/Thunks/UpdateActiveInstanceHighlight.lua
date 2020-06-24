--[[
	Shows the active instance highlight when the alignment is relative to the
	active object. The highlight is hidden when relative to the selection.
]]

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent

local RelativeTo = require(Plugin.Src.Utility.RelativeTo)

return function()
	return function(store)
		local state = store:getState()

		local relativeTo = state.relativeTo
		local enabled = relativeTo == RelativeTo.Active

		StudioService.ShowActiveInstanceHighlight = enabled
	end
end
