local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Packages.Cryo)
local VerifiedBadges = require(CorePackages.Workspace.Packages.VerifiedBadges)
local UserLib = require(CorePackages.Workspace.Packages.UserLib)
local Types = require(root.Components.Types)
local Constants = require(root.Components.Constants)
local InExperienceCapabilities =
	require(CorePackages.Workspace.Packages.InExperienceCapabilities).InExperienceCapabilities
local GetFFlagAbuseReportShouldUseCanDisplayPeoplesUsernamesAppPolicy =
	require(root.Flags.GetFFlagAbuseReportShouldUseCanDisplayPeoplesUsernamesAppPolicy)
local FFlagInGameMenuAddChatLineReporting =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagInGameMenuAddChatLineReporting

local PlayerModalSelectorMenuConfig: Types.ModalSelectorMenuItemType = {
	componentType = "modalSelector",
	getIsVisible = function(menuUIState)
		return true
	end,
	getMenuItems = function(menuUIState)
		local list = Cryo.List.map(menuUIState.playerObjects, function(playerObject)
			local verifiedEmoji = if UserLib.Utils.isPlayerVerified(playerObject)
				then VerifiedBadges.emoji.verified
				else ""
			if GetFFlagAbuseReportShouldUseCanDisplayPeoplesUsernamesAppPolicy() then
				return {
					label = playerObject.DisplayName .. verifiedEmoji,
					subLabel = if InExperienceCapabilities.canDisplayPeoplesUsernames
						then "[@" .. playerObject.Name .. "]"
						else nil,
					identifier = playerObject.Name,
				}
			else
				return {
					label = playerObject.DisplayName .. verifiedEmoji,
					subLabel = "[@" .. playerObject.Name .. "]",
					identifier = playerObject.Name,
				}
			end
		end)
		return list
	end,
	getSelectedValue = function(menuUIState: any)
		local abuser = menuUIState.allegedAbuser
		if abuser then
			local displayName = abuser.DisplayName
			local userName = abuser.Name
			local displayLabel = displayName .. "[@" .. userName .. "]"
			if GetFFlagAbuseReportShouldUseCanDisplayPeoplesUsernamesAppPolicy() then
				displayLabel = displayName
					.. (if InExperienceCapabilities.canDisplayPeoplesUsernames then "[@" .. userName .. "]" else "")
			end
			return displayLabel
		end
		return nil
	end,
	onUpdateSelectedOption = function(
		selectedItem: Types.ModalSelectorMenuItemCellDataType,
		menuUIState: Types.ReportPersonState,
		dispatchUIStates: any,
		utilityProps: Types.MenuUtilityProps
	)
		if selectedItem.identifier then
			local userName = selectedItem.identifier
			for _, playerObject in menuUIState.playerObjects do
				if userName == playerObject.Name then
					local id: number = playerObject.UserId
					utilityProps.analyticsDispatch({ type = Constants.AnalyticsActions.IncrementPersonChanged })
					dispatchUIStates({
						type = Constants.PlayerMenuActions.UpdateAbuser,
						abuseId = id,
						abuser = playerObject,
					})
					-- Clear selected chat line if the abuser is changed
					if FFlagInGameMenuAddChatLineReporting then
						dispatchUIStates({
							type = Constants.PlayerMenuActions.UpdatedSelectedChatAndOrderedMessages,
							orderedMessages = {},
							selectedMessage = nil,
						})
					end
				end
			end
		end
	end,
	fieldLabel = "WhichPerson",
	componentName = "PlayerSelector",
}

return PlayerModalSelectorMenuConfig
