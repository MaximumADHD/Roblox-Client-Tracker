local FFlagManageCollaboratorsTelemetryEnabled = game:GetFastFlag("ManageCollaboratorsTelemetryEnabled")
local FFlagManageCollaboratorsDebugLogging = game:GetFastFlag("ManageCollaboratorsDebugLogging")

local Plugin = script.Parent.Parent.Parent

local SetSaveState = require(Plugin.Src.Actions.SetSaveState)
local SaveState = require(Plugin.Src.Util.SaveState)

local Analytics = if FFlagManageCollaboratorsTelemetryEnabled then require(Plugin.Src.Util.Analytics) else nil

local function GetPermissionsSaveJobs(store, contextItems, isGroupGame)
	local state = store:getState()
	local gameId = game.GameId
	local gamePermissionsController = contextItems.gamePermissionsController

	return {
		function()
			local currentPermissions = state.Permissions.CurrentPermissions
			local newPermissions = state.Permissions.NewPermissions

			if newPermissions ~= nil then
				if FFlagManageCollaboratorsTelemetryEnabled then
					local adds, deletes = gamePermissionsController:setPermissions(gameId, currentPermissions, newPermissions)
					Analytics.reportSaveCollaboratorsPressed(isGroupGame, adds, deletes)
				else
					gamePermissionsController:setPermissions(gameId, currentPermissions, newPermissions)
				end
			end
		end,
	}
end

return function(isGroupGame)
	return function(store, contextItems)
		if FFlagManageCollaboratorsDebugLogging then
			Analytics.reportDebuggingCheckpoint("B")
		end

		local permissionsJobs
		
		if FFlagManageCollaboratorsTelemetryEnabled then
			permissionsJobs = GetPermissionsSaveJobs(store, contextItems, isGroupGame)
		else
			permissionsJobs = GetPermissionsSaveJobs(store, contextItems)
		end
		
			
		store:dispatch(SetSaveState(SaveState.Saving))

		local numSaved = 0
		local saveFailed = false

		if FFlagManageCollaboratorsDebugLogging then
			Analytics.reportDebuggingCheckpoint("C")
		end

		for _, callback in ipairs(permissionsJobs) do
			-- Use coroutine here so we can run the api calls in parallel
			local job = coroutine.wrap(function()
				if FFlagManageCollaboratorsDebugLogging then
					Analytics.reportDebuggingCheckpoint("D")
				end

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

			if FFlagManageCollaboratorsDebugLogging then
				Analytics.reportDebuggingCheckpoint("E")
			end
		end
	end
end
