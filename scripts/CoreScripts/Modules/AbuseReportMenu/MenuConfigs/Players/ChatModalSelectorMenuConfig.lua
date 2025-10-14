local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local PlayersService = game:GetService("Players")
local UserService = game:GetService("UserService")

local ChatLineReporting = require(CorePackages.Workspace.Packages.ChatLineReporting)

local getMessageText = ChatLineReporting.Helpers.getMessageText

local Constants = require(root.Components.Constants)
local Types = require(root.Components.Types)

local ChatModalSelectorMenuConfig: Types.ChatModalSelectorMenuItemType = {
	componentType = "chatModalSelector",
	--[[
		getIsVisible determines if the menu dropdown button is visible.
		It should only be visible if the method of abuse is TextChat
	]]
	getIsVisible = function(menuUIState)
		return menuUIState.methodOfAbuse == Constants.AbuseMethods.TextChat
	end,
	--[[
		getSelectedValue is called when the menu dropdown button needs to know what text to display.
		It should return the text of the selected chat line, or nil if no chat line is selected.
		There's a handler that'll auto default to `Choose One` placeholder text if this returns nil.
	]]
	getSelectedValue = function(menuUIState: Types.ReportPersonState)
		return menuUIState.selectedMessage
				and getMessageText(
					menuUIState.selectedMessage.useTranslation,
					menuUIState.selectedMessage.translation,
					menuUIState.selectedMessage.text
				)
			or nil
	end,
	--[[
		onUpdateSelectedOption is called when the user selects a chat line from the selection modal.
		It should update the selectedMessage and orderedMessages in the menuUIState.
		It should also update the allegedAbuser and allegedAbuserId, if they are set, to be the user who sent the selected chat line.
		Otherwise, we leave the allegedAbuser and allegedAbuserId nil if they're already nil.
	]]
	onUpdateSelectedOption = function(
		selectedMessage: Types.Message,
		orderedMessages: { Types.Message },
		menuUIState: Types.ReportPersonState,
		dispatchUIStates: any,
		utilityProps: Types.MenuUtilityProps
	)
		utilityProps.analyticsDispatch({ type = Constants.AnalyticsActions.IncrementChatLineChanged })
		dispatchUIStates({
			type = Constants.PlayerMenuActions.UpdatedSelectedChatAndOrderedMessages,
			orderedMessages = orderedMessages,
			selectedMessage = selectedMessage,
		})
		--[[
			If the allegedAbuserId is set, we know that the user sees a name under the 'Which Player?' field.
			That means we need to update that field to reflect the user that was selected in the chat dropdown.
		]]
		if menuUIState.allegedAbuserId ~= nil then
			if selectedMessage == nil or selectedMessage.userId == nil then
				-- If the selected message or its userId is nil, we clear the alleged abuser fields
				dispatchUIStates({
					type = Constants.PlayerMenuActions.UpdateAbuser,
					abuseId = nil,
					abuser = nil,
				})
				return
			end

			-- If the selected message is not nil, we set the alleged abuser fields to the selectedMessage's user
			local abuserId = tonumber(selectedMessage.userId)
			if abuserId ~= nil then
				task.defer(function() -- Defer to avoid yielding in the middle of a state update
					local abuser = PlayersService:GetPlayerByUserId(abuserId) -- Try to pull player from current connected players first

					-- If the player isn't found (maybe they left), we try to fetch their info from UserService
					if abuser == nil then
						local success = false
						local abuserInfo
						success, abuserInfo = pcall(function()
							return UserService:GetUserInfosByUserIdsAsync({ abuserId })
						end)
						if success and abuserInfo and abuserInfo[1] then
							-- PlayerModalSelectorMenuConfig expects a player object with Name and DisplayName fields
							-- We'll construct a minimal object to fit those standards, but TODO: refactor to strongly type this and PlayerModalSelectorMenuConfig
							abuser = {
								Name = abuserInfo[1].Username,
								DisplayName = abuserInfo[1].DisplayName,
							} :: any
						end
					end

					-- Abuser could still be nil if we couldn't find them in PlayersService or UserService
					-- In that case, we just leave the allegedAbuser and allegedAbuserId as is
					if abuser ~= nil then
						dispatchUIStates({
							type = Constants.PlayerMenuActions.UpdateAbuser,
							abuseId = selectedMessage.userId,
							abuser = abuser,
						})
					end
				end)
			end
		end
	end,
	fieldLabel = "WhichChat",
	componentName = "ChatSelector",
}

return ChatModalSelectorMenuConfig
