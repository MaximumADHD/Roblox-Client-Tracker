local root = script.Parent.Parent.Parent
local FFlagAvatarImporterDeduplicatePackages = game:GetFastFlag("AvatarImporterDeduplicatePackages")
-- imports
local Rodux = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.Rodux) else require(root.Packages._Old.lib.Rodux)
local Cryo = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.Cryo) else require(root.Packages._Old.lib.Cryo)

local actions = root.src.actions
local SetError = require(actions.SetError)

return Rodux.createReducer({}, {
	[SetError.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			name = action.name,
			message = action.message,
		})
	end,
})