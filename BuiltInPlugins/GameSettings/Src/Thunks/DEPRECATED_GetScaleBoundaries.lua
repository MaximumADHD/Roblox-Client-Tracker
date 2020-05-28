local Plugin = script.Parent.Parent.Parent

local AvatarWebAPI = require(Plugin.Src.Networking.AvatarWebAPI)
local SettingsSaveScaleBoundaries = require(Plugin.Src.Actions.SettingsSaveScaleBoundaries)
local SettingsSetFetchingScaleBoundaries = require(Plugin.Src.Actions.DEPRECATED_SettingsSetFetchingScaleBoundaries)

return function()
	return function(store)
		spawn(function()
			local state = store:getState()
			if state.MorpherEditorRoot.StateMorpher.StateSettings.scaleBoundaries.isFetching then
				return
			end

			store:dispatch(SettingsSetFetchingScaleBoundaries(true))

			local status, result = AvatarWebAPI.GetAvatarRulesData()

			if status ~= AvatarWebAPI.Status.OK then
				warn("GetScaleBoundaries failure in AvatarWebAPI.GetAvatarRulesData()")
				store:dispatch(SettingsSetFetchingScaleBoundaries(false))
				return
			end

			local avatarRulesData = result
			if avatarRulesData then
				store:dispatch(SettingsSaveScaleBoundaries(avatarRulesData))
			else
				warn("GetScaleBoundaries failure in AvatarWebAPI.GetAvatarRulesData() as result avatar rules data is nil")
			end
			store:dispatch(SettingsSetFetchingScaleBoundaries(false))
		end)
	end
end