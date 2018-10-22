local paths = require(script.Parent.Parent.Paths)

return function()
	return function(store)
		spawn(function()
			local state = store:getState()
			if state.StateMorpher.StateSettings.scaleBoundaries.isFetching then
				return
			end

			store:dispatch(paths.ActionSettingsSetFetchingScaleBoundaries(true))

			local status, result = paths.AvatarWebAPI.GetAvatarRulesData()

			if status ~= paths.AvatarWebAPI.Status.OK then
				warn("ThunkGetScaleBoundaries failure in AvatarWebAPI.GetAvatarRulesData()")
				store:dispatch(paths.ActionSettingsSetFetchingScaleBoundaries(false))
				return
			end

			local avatarRulesData = result
			if avatarRulesData then
				store:dispatch(paths.ActionSettingsSaveScaleBoundaries(avatarRulesData))
			else
				warn("ThunkGetScaleBoundaries failure in AvatarWebAPI.GetAvatarRulesData() as result avatar rules data is nil")
			end
			store:dispatch(paths.ActionSettingsSetFetchingScaleBoundaries(false))
		end)
	end
end