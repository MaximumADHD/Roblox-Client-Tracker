local Plugin = script.Parent.Parent.Parent

local SetSaveState = require(Plugin.Src.Actions.SetSaveState)
local SaveState = require(Plugin.Src.Util.SaveState)

local function GetPermissionsSaveJobs(store, contextItems)
	local state = store:getState()
	local gameId = game.GameId
	local gamePermissionsController = contextItems.gamePermissionsController

	return {
		function()
			local currentPermissions = state.Permissions.CurrentPermissions
			local newPermissions = state.Permissions.NewPermissions

			if newPermissions ~= nil then
				gamePermissionsController:setPermissions(gameId, currentPermissions, newPermissions)
			end
		end,
	}
end

return function()
	return function(store, contextItems)
		local permissionsJobs = GetPermissionsSaveJobs(store, contextItems)

		store:dispatch(SetSaveState(SaveState.Saving))

		local numSaved = 0
		local saveFailed = false

		for _, callback in ipairs(permissionsJobs) do
			-- Use coroutine here so we can run the api calls in parallel
			local job = coroutine.wrap(function()
				local success,result = pcall(callback)
				if (not success) and (not saveFailed) then
					warn("Failed", result)
					saveFailed = true
					store:dispatch(SetSaveState(SaveState.SaveFailed))
				end

				numSaved = numSaved + 1
				if numSaved == #permissionsJobs then
					if not saveFailed then
						store:dispatch(SetSaveState(SaveState.Saved))
					end
				end
			end)

			job()
		end
	end
end
