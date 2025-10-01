local root = script:FindFirstAncestor("AbuseReportMenu")

local Constants = require(root.Components.Constants)
local Types = require(root.Components.Types)

local ChatModalSelectorMenuConfig: Types.ChatModalSelectorMenuItemType = {
	componentType = "chatModalSelector",
	getIsVisible = function(menuUIState)
		return menuUIState.methodOfAbuse == Constants.AbuseMethods.TextChat
	end,
	getSelectedValue = function(menuUIState: any)
		return nil -- TODO
	end,
	onUpdateSelectedOption = function(
		selectedItem: any,
		menuUIState: Types.ReportPersonState,
		dispatchUIStates: any,
		utilityProps: Types.MenuUtilityProps
	)
		dispatchUIStates({
			type = "SetChatType",
			chatType = selectedItem.identifier,
		})
	end,
	fieldLabel = "WhichChat",
	componentName = "ChatSelector",
}

return ChatModalSelectorMenuConfig
