--[[
	Holds onto all drafts in the sandbox in a dictionary using the form of
	[script] = true, as opposed to a list in which we'd need to handle duplicates
	and iterate over all items to remove one
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local SandboxDraftsReducer = Rodux.createReducer({},
{
	DraftAddedAction = function(state, action)
		local draft = action.Draft

		return Cryo.Dictionary.join(state, {
			[draft] = true,
		})
	end,

	DraftRemovedAction = function(state, action)
		local draft = action.Draft

		return Cryo.Dictionary.join(state, {
			[draft] = Cryo.None,
		})
	end,

	DraftsLoadedAction = function(state, action)
		local drafts = action.Drafts

		local new = {}
		for _,draft in ipairs(drafts) do
			new[draft] = true
		end

		return Cryo.Dictionary.join(state, new)
	end,
})

return SandboxDraftsReducer