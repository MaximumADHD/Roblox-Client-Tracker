local FFlagManageCollaboratorsDebugLogging = game:GetFastFlag("ManageCollaboratorsDebugLogging")

local Plugin = script.Parent.Parent.Parent
local IsTeamCreateEnabled = require(Plugin.Src.Util.IsTeamCreateEnabled)

local RbxAnalyticsService = game:GetService("RbxAnalyticsService")


local TARGET_STUDIO = "studio"
local CONTEXT_MANAGECOLLABORATORS = "ManageCollaborators"

function getCommonArgs()
	local args = {
		studioSid = RbxAnalyticsService:GetSessionId(),
		placeId = game.PlaceId,
		machineTimeStamp = os.time()
	}
	
	return args
end

local Analytics = {}

function Analytics.reportDebuggingCheckpoint(checkpoint)
	assert(FFlagManageCollaboratorsDebugLogging)

	local eventName = "DebugCheckpoint"

	local args = getCommonArgs()
	args.checkpoint = checkpoint

	RbxAnalyticsService:SendEventDeferred(TARGET_STUDIO, CONTEXT_MANAGECOLLABORATORS, eventName, args)
end

function Analytics.reportCollaborateButtonPressed()
	local eventName = "CollaborateButtonPressed"
	
	local args = getCommonArgs()
	args.isTeamCreate = IsTeamCreateEnabled()
		
	RbxAnalyticsService:SendEventDeferred(TARGET_STUDIO, CONTEXT_MANAGECOLLABORATORS, eventName, args)
end

function Analytics.reportSaveToRobloxPressed()
	local eventName = "SaveToRobloxPressed"
	
	local args = getCommonArgs()
	RbxAnalyticsService:SendEventDeferred(TARGET_STUDIO, CONTEXT_MANAGECOLLABORATORS, eventName, args)
end

function Analytics.reportCancelPressed(isGroupGame)
	local eventName = "CancelButtonPressed"
	
	local args = getCommonArgs()
	args.isTeamCreate = IsTeamCreateEnabled()
	args.gameType = if isGroupGame then "group" else "user" 

	RbxAnalyticsService:SendEventDeferred(TARGET_STUDIO, CONTEXT_MANAGECOLLABORATORS, eventName, args)
end

function Analytics.reportSaveCollaboratorsPressed(isGroupGame, adds, deletes)	
	local eventName = "SaveCollaboratorsButtonPressed"
	local actions = ""
	local ids = ""
	local permissionLevels = ""
	local types = ""
	
	for _, addition in adds do 	
		if string.len(actions) > 0 then
			-- Add comma to previous element
			actions = actions .. ","
			ids = ids .. ","
			permissionLevels = permissionLevels .. ","
			types = types .. ","
		end
		
		actions = actions .. "add"
		ids = ids .. addition.subjectId
		permissionLevels = permissionLevels .. addition.action
		types = types .. addition.subjectType
	end	
	
	for _, deletion in deletes do
		if string.len(actions) > 0 then
			-- Add comma to previous element
			actions = actions .. ","
			ids = ids .. ","
			permissionLevels = permissionLevels .. ","
			types = types .. ","
		end
		
		actions = actions .. "delete"
		ids = ids .. deletion.subjectId
		permissionLevels = permissionLevels .. deletion.action
		types = types .. deletion.subjectType
	end	
	
	local args = getCommonArgs()
	args.isTeamCreate = IsTeamCreateEnabled()
	args.gameType = if isGroupGame then "group" else "user" 
	args.actions = actions
	args.ids = ids
	args.permissionLevels = permissionLevels
	args.types = types
			
	RbxAnalyticsService:SendEventDeferred(TARGET_STUDIO, CONTEXT_MANAGECOLLABORATORS, eventName, args)
end

return Analytics
