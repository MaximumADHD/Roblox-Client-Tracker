local CorePackages = game:GetService("CorePackages")
local TextChatService = game:GetService("TextChatService")
local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local ExpChat = require(CorePackages.Workspace.Packages.ExpChat)
local getGlobalChatTooltipStore = ExpChat.Stores.GetGlobalChatTooltipStore
local getChatTooltipStore = ExpChat.Stores.GetChatTooltipStore
local getChatStatusStore = ExpChat.Stores.GetChatStatusStore
local isUserChatEnabled = ExpChat.isUserChatEnabled

local ExpChatShared = require(CorePackages.Workspace.Packages.ExpChatShared)
local GetFFlagTextChatEnableUniverseChatTabs = ExpChatShared.Flags.GetFFlagTextChatEnableUniverseChatTabs
local FFlagExpChatPresetChatEnabled = ExpChatShared.Flags.FFlagExpChatPresetChatEnabled
local FFlagExpChatUseUnifiedTooltipStore = ExpChatShared.Flags.FFlagExpChatUseUnifiedTooltipStore

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)

type IntegrationComponentProps = ChromePackage.IntegrationComponentProps

type IconHostProps = {
	integration: IntegrationComponentProps,
	toggleTransition: any?,
	position: React.Binding<UDim2> | UDim2 | nil,
	visible: React.Binding<boolean> | boolean | nil,
	disableButtonBehaviors: boolean?,
	disableBadgeNumber: boolean?,
	minBadgeCount: number?,
}

export type ChatNotificationBadgeProps = {
	iconHostProps: IconHostProps,
	NotificationBadge: any,
}

local function ChatNotificationBadge(props: ChatNotificationBadgeProps): any?
	local iconHostProps = props.iconHostProps
	local isChatIntegration = iconHostProps.integration.id == "chat"

	-- The tooltip's positioning assumes the chat window is in its default top-left location
	local chatWindowConfiguration = TextChatService:FindFirstChildOfClass("ChatWindowConfiguration")
	local isChatInDefaultPosition = chatWindowConfiguration == nil
		or (
			chatWindowConfiguration.HorizontalAlignment == Enum.HorizontalAlignment.Left
			and chatWindowConfiguration.VerticalAlignment == Enum.VerticalAlignment.Top
		)

	local tooltipEligible
	local tooltipStore
	local isChatWindowOpen
	if FFlagExpChatUseUnifiedTooltipStore then
		tooltipStore = getChatTooltipStore(false)
		isChatWindowOpen = SignalsReact.useSignalState(tooltipStore.getIsChatWindowOpen)
		local activeTooltipKey = SignalsReact.useSignalState(tooltipStore.getActiveTooltipKey)
		local isChatInputBarVisible = SignalsReact.useSignalState(tooltipStore.getIsChatInputBarVisible)
		local isScreenWideEnough = SignalsReact.useSignalState(tooltipStore.getIsScreenWideEnough)

		local commonEligible = isChatIntegration and isScreenWideEnough and isChatInDefaultPosition
		local globalShown = activeTooltipKey == "GlobalChatTooltip" and commonEligible
		local presetShown = FFlagExpChatPresetChatEnabled and activeTooltipKey == "PresetChatTooltip" and commonEligible

		React.useEffect(
			function()
				if not isChatIntegration then
					return
				end

				tooltipStore.setShouldShow("GlobalChatTooltip", globalShown and isChatWindowOpen)
				if FFlagExpChatPresetChatEnabled then
					tooltipStore.setShouldShow("PresetChatTooltip", presetShown and isChatInputBarVisible)
				end
			end,
			{
				isChatIntegration,
				globalShown,
				presetShown,
				isChatInputBarVisible,
				isChatWindowOpen,
				tooltipStore.setShouldShow,
			} :: { any }
		)

		tooltipEligible = globalShown or presetShown
	else
		tooltipStore = getGlobalChatTooltipStore(false)
		local chatStatusStore = getChatStatusStore(false)

		isChatWindowOpen = SignalsReact.useSignalState(tooltipStore.getIsChatWindowOpen)
		local chatStatus = SignalsReact.useSignalState(chatStatusStore.getChatStatus)
		local isChatEnabled = isUserChatEnabled(chatStatus)
		local isGlobalChatTooltipDismissed = SignalsReact.useSignalState(tooltipStore.getIsGlobalChatTooltipDismissed)
		local isGlobalChatTooltipEligible = SignalsReact.useSignalState(tooltipStore.getIsGlobalChatTooltipEligible)
		local isScreenWideEnough = SignalsReact.useSignalState(tooltipStore.getIsScreenWideEnough)

		-- RBXGlobal is allocated by the engine via TextChatService. Read it directly here rather than
		-- going through the ExpChat Rodux/Signals stores, which aren't accessible from Chrome's tree.
		local isGlobalChatAvailable, setIsGlobalChatAvailable = React.useState(false)
		React.useEffect(function()
			if not GetFFlagTextChatEnableUniverseChatTabs() then
				return
			end

			if TextChatService:HasAllocatedUniverseChatContext("global") then
				setIsGlobalChatAvailable(true)
			end

			local connection = TextChatService.UniverseChatChannelAllocated:Connect(function(chatContext: string)
				if chatContext == "global" then
					setIsGlobalChatAvailable(true)
				end
			end)

			return function()
				connection:Disconnect()
			end
		end, {})

		tooltipEligible = isChatIntegration
			and isChatEnabled
			and isGlobalChatTooltipEligible
			and isGlobalChatAvailable
			and isChatInDefaultPosition
			and isScreenWideEnough
			and not isGlobalChatTooltipDismissed

		local setShouldShowGlobalChatTooltip = tooltipStore.setShouldShowGlobalChatTooltip
		React.useEffect(function()
			if isChatIntegration then
				setShouldShowGlobalChatTooltip(tooltipEligible and isChatWindowOpen)
			end
		end, { isChatIntegration, tooltipEligible, isChatWindowOpen, setShouldShowGlobalChatTooltip } :: { any })
	end

	local hasOpenedChat, setHasOpenedChat = React.useState(false)
	React.useEffect(function()
		if tooltipEligible and isChatWindowOpen then
			setHasOpenedChat(true)
		end
	end, { tooltipEligible, isChatWindowOpen })

	local badgeProps = table.clone(iconHostProps) :: any
	if tooltipEligible and not hasOpenedChat then
		badgeProps.minBadgeCount = 1
	end
	return React.createElement(props.NotificationBadge, badgeProps)
end

return ChatNotificationBadge
