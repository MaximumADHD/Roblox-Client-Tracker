local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

return Rodux.createReducer({
	AllLanguages = {},
	LocalesToLanguages = {},
	CanManageTranslation = nil,
	CloudTableId = "",
}, {
	LoadLanguagesAndLocalesInfo = function(state, action)
		return Cryo.Dictionary.join(state, {
			AllLanguages = action.allLanguages,
			LocalesToLanguages = action.localesToLanguages,
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
