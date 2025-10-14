local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")

local Constants = require(root.Components.Constants)
local Types = require(root.Components.Types)
local PlayerMenuActions = Constants.PlayerMenuActions

local FFlagInGameMenuAddChatLineReporting =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagInGameMenuAddChatLineReporting

local function reportPersonUIStateReducer(state: Types.ReportPersonState, action: any)
	local newState = table.clone(state)
	local type = action.type
	if type == PlayerMenuActions.UpdateAbuseReason then
		newState.abuseReason = action.abuseReason
	elseif type == PlayerMenuActions.UpdateComment then
		newState.comment = action.comment
	elseif type == PlayerMenuActions.UpdateMethodOfAbuse then
		newState.playerObjects = {}
		newState.abuseReason = nil
		newState.methodOfAbuse = action.methodOfAbuse
	elseif type == PlayerMenuActions.UpdateAbuser then
		newState.allegedAbuserId = action.abuseId
		newState.allegedAbuser = action.abuser
	elseif type == PlayerMenuActions.UpdatePlayerNameMap then
		newState.playerObjects = action.playerObjects
	elseif type == PlayerMenuActions.SetVoiceEnabled then
		newState.isVoiceEnabled = action.enabled
	elseif type == PlayerMenuActions.SetMenuOpenTimestamp then
		newState.menuOpenedUnixTimestampMilliseconds = action.timestamp
	elseif type == PlayerMenuActions.ClearState then
		newState = table.clone(Constants.InitPersonUIState)
	elseif type == PlayerMenuActions.SetShowModalSelector then
		newState.isModalSelectorShown = action.isShown
		newState.modalSelectorCellData = action.cellData
	elseif type == PlayerMenuActions.SetPreselectedPlayer then
		newState.preselectedPlayer = action.player
	elseif FFlagInGameMenuAddChatLineReporting and type == PlayerMenuActions.UpdatedSelectedChatAndOrderedMessages then
		newState.selectedMessage = action.selectedMessage
		newState.orderedMessages = action.orderedMessages
	end
	return newState
end

return reportPersonUIStateReducer
