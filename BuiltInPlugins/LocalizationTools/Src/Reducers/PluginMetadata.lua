local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

return Rodux.createReducer({
	AllLanguageCodes = {},
	CanManageTranslation = nil,
	CloudTableId = "",
}, {
	LoadAllLocales = function(state, action)
		return Cryo.Dictionary.join(state, {
			AllLanguageCodes = action.allLanguageCodes,
		})
	end,

	LoadManageTranslationPermission = function(state, action)
		return Cryo.Dictionary.join(state, {
			CanManageTranslation = action.canManageTranslation,
		})
	end,

	SetCloudTableId = function(state, action)
		return Cryo.Dictionary.join(state, {
			CloudTableId = action.cloudTableId,
		})
	end
})