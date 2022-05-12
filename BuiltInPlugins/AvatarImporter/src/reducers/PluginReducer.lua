local root = script.Parent.Parent.Parent
local FFlagAvatarImporterDeduplicatePackages = game:GetFastFlag("AvatarImporterDeduplicatePackages")
-- imports
local Rodux = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.Rodux) else require(root.Packages._Old.lib.Rodux)
local Cryo = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.Cryo) else require(root.Packages._Old.lib.Cryo)

local Constants = require(root.src.Constants)

local actions = root.src.actions
local ClosePlugin = require(actions.ClosePlugin)
local TogglePlugin = require(actions.TogglePlugin)
local SetScreen = require(actions.SetScreen)
local SetOriginalAvatarType = require(actions.SetOriginalAvatarType)

return Rodux.createReducer({
	enabled = false,
	screen = Constants.SCREENS.AVATAR,
	avatarType = nil,
}, {

	[ClosePlugin.name] = function(state, action)
		if state.screen ~= Constants.SCREENS.LOADING or action.force then
			return Cryo.Dictionary.join(state, {
				enabled = false,
			})
		else
			return state
		end
	end,

	[TogglePlugin.name] = function(state)
		return Cryo.Dictionary.join(state, {
			enabled = not state.enabled,
			screen = Constants.SCREENS.AVATAR,
		})
	end,

	[SetScreen.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			screen = action.screen,
		})
	end,

	[SetOriginalAvatarType.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			avatarType = action.avatarType,
		})
	end,

})