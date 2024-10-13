local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ChromeService = require(script.Parent.Parent.Service)
local ConnectIcon = require(script.ConnectIcon)
local GetFFlagEnableAppChatInExperience =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableAppChatInExperience
local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChatExperimentation = AppChat.App.InExperienceAppChatExperimentation
local InExperienceAppChatModal = AppChat.App.InExperienceAppChatModal
local LocalStore = require(script.Parent.Parent.Service.LocalStore)

local GetFFlagAppChatInExpConnectIconEnableSquadIndicator =
	require(script.Parent.Parent.Flags.GetFFlagAppChatInExpConnectIconEnableSquadIndicator)
local GetFStringConnectTooltipLocalStorageKey =
	require(script.Parent.Parent.Flags.GetFStringConnectTooltipLocalStorageKey)
local FFlagEnableUnibarFtuxTooltips = require(script.Parent.Parent.Parent.Flags.FFlagEnableUnibarFtuxTooltips)

local FFlagAppChatInExpUseUnibarNotification = game:DefineFastFlag("AppChatInExpUseUnibarNotification", false)
-- "Connect" icon and option are used to open AppChat (InExperienceAppChat)
-- It will also serve as an entry point for Party
local integration = nil
if GetFFlagEnableAppChatInExperience() and InExperienceAppChatExperimentation.getShowPlatformChatInChrome() then
	integration = ChromeService:register({
		id = "connect",
		label = "Feature.Chat.Label.Connect", -- intentially not translated
		activated = function()
			InExperienceAppChatModal:toggleVisibility()
			if FFlagEnableUnibarFtuxTooltips then
				LocalStore.storeForLocalPlayer(GetFStringConnectTooltipLocalStorageKey(), true)
			end
		end,
		isActivated = function()
			return InExperienceAppChatModal:getVisible()
		end,
		components = {
			Icon = function(props)
				return React.createElement(ConnectIcon, {
					isIconVisible = props.visible,
					shouldShowCustomBadge = not FFlagAppChatInExpUseUnibarNotification,
				})
			end,
		},
		initialAvailability = if InExperienceAppChatExperimentation.default.variant.ShowPlatformChatChromeUnibarEntryPoint
			then ChromeService.AvailabilitySignal.Pinned
			elseif
				InExperienceAppChatExperimentation.default.variant.ShowPlatformChatChromeDropdownEntryPoint
			then ChromeService.AvailabilitySignal.Available
			else ChromeService.AvailabilitySignal.Unavailable,
	})

	if FFlagAppChatInExpUseUnibarNotification then
		if GetFFlagAppChatInExpConnectIconEnableSquadIndicator() then
			local function updateNotificationBadge(newCount: number, hasCurrentSquad: boolean)
				-- The squad presence dot is prioritized over the unread count.
				if newCount == 0 or hasCurrentSquad then
					integration.notification:clear()
				else
					integration.notification:fireCount(newCount)
				end
			end

			InExperienceAppChatModal.default.currentSquadIdSignal.Event:Connect(function(currentSquadId)
				updateNotificationBadge(InExperienceAppChatModal.default.unreadCount, currentSquadId ~= "")
			end)

			InExperienceAppChatModal.default.unreadCountSignal.Event:Connect(function(newUnreadCount)
				updateNotificationBadge(newUnreadCount, InExperienceAppChatModal.default.currentSquadId ~= "")
			end)

			updateNotificationBadge(
				InExperienceAppChatModal.default.unreadCount,
				InExperienceAppChatModal.default.currentSquadId ~= ""
			)
		else
			local function updateUnreadMessageCount(newCount)
				if newCount == 0 then
					integration.notification:clear()
				else
					integration.notification:fireCount(newCount)
				end
			end

			InExperienceAppChatModal.default.unreadCountSignal.Event:Connect(function(newUnreadCount)
				updateUnreadMessageCount(newUnreadCount)
			end)

			updateUnreadMessageCount(InExperienceAppChatModal.default.unreadCount)
		end
	end
end

return integration
