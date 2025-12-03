local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ChromeService = require(Chrome.Service)
local ConnectIcon = require(script.Parent.ConnectIcon)
local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChatModal = AppChat.App.InExperienceAppChatModal
local ChromeIntegrationUtils = require(Chrome.Integrations.ChromeIntegrationUtils)
local LocalStore = require(Chrome.ChromeShared.Service.LocalStore)

local GetFFlagAppChatInExpConnectIconEnableSquadIndicator =
	require(Chrome.Flags.GetFFlagAppChatInExpConnectIconEnableSquadIndicator)
local GetFStringConnectTooltipLocalStorageKey = require(Chrome.Flags.GetFStringConnectTooltipLocalStorageKey)
local FFlagEnableUnibarFtuxTooltips = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableUnibarFtuxTooltips

local MouseIconOverrideService = require(CorePackages.Workspace.Packages.CoreScriptsCommon).MouseIconOverrideService
local Symbol = require(CorePackages.Workspace.Packages.AppCommonLib).Symbol

local ChromeFocusUtils = require(CorePackages.Workspace.Packages.Chrome).FocusUtils

local FFlagAppChatInExpUseUnibarNotification = game:DefineFastFlag("AppChatInExpUseUnibarNotification", false)

local FFlagEnableAppChatFocusableFixes =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableAppChatFocusableFixes
local GetFFlagIsSquadEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIsSquadEnabled
local GetFFlagAppChatRebrandStringUpdates =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAppChatRebrandStringUpdates

return function(id: string, initialAvailability: number)
	-- only enable squad (a.k.a. party) indicator for the unibar icon, other variants, like dropdown icon, won't need it
	local isSquadIndicatorEnabled = id == "connect_unibar"
		and GetFFlagAppChatInExpConnectIconEnableSquadIndicator()
		and GetFFlagIsSquadEnabled()
	local integration = ChromeService:register({
		id = id,
		label = if GetFFlagAppChatRebrandStringUpdates() and GetFFlagIsSquadEnabled()
			then "Feature.Squads.Label.Party" -- translated in some languages
			else "Feature.Chat.Label.RobloxChat", -- intentionally not translated, temp string before Party launch
		activated = function()
			if FFlagEnableAppChatFocusableFixes then
				if InExperienceAppChatModal:getVisible() then
					InExperienceAppChatModal.default:setVisible(false)
				else
					ChromeIntegrationUtils.dismissRobloxMenuAndRun(function()
						ChromeFocusUtils.FocusOffChrome(function()
							InExperienceAppChatModal.default:setVisible(true)
						end)
					end)
				end
			else
				InExperienceAppChatModal:toggleVisibility()
			end

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
					integrationId = id,
					isIconVisible = props.visible,
					shouldShowCustomBadge = not FFlagAppChatInExpUseUnibarNotification,
					isSquadIndicatorEnabled = isSquadIndicatorEnabled,
				})
			end,
		},
		initialAvailability = initialAvailability,
	})

	-- Note: this logic won't be used until AppChat unread count is accurate enough
	if FFlagAppChatInExpUseUnibarNotification then
		if isSquadIndicatorEnabled then
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

	-- Force the cursor to show when the AppChat modal is visible
	local MOUSE_OVERRIDE_KEY = Symbol.named("InExperienceRobloxConnect")
	InExperienceAppChatModal.default.visibilitySignal.Event:Connect(function(visible)
		if visible then
			MouseIconOverrideService.push(MOUSE_OVERRIDE_KEY, Enum.OverrideMouseIconBehavior.ForceShow)
		else
			MouseIconOverrideService.pop(MOUSE_OVERRIDE_KEY)
		end
	end)

	return integration
end
