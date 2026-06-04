local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ChromeService = require(Chrome.Service)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local ConnectIcon = require(script.Parent.ConnectIcon)
local Responsive = require(CorePackages.Workspace.Packages.Responsive)
local InExperienceAppChatModal = require(CorePackages.Workspace.Packages.AppChat.InExperienceAppChatModal)
local ChromeIntegrationUtils = require(Chrome.Integrations.ChromeIntegrationUtils)
local LocalStore = require(Chrome.ChromeShared.Service.LocalStore)

local MappedSignal = ChromeUtils.MappedSignal

local GetFStringConnectTooltipLocalStorageKey = require(Chrome.Flags.GetFStringConnectTooltipLocalStorageKey)

local MouseIconOverrideService = require(CorePackages.Workspace.Packages.CoreScriptsCommon).MouseIconOverrideService
local Symbol = require(CorePackages.Workspace.Packages.AppCommonLib).Symbol

local ChromeFocusUtils = require(CorePackages.Workspace.Packages.Chrome).FocusUtils

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement

local FFlagAppChatInExpUseUnibarNotification = game:DefineFastFlag("AppChatInExpUseUnibarNotification", false)
local FFlagConnectIntegrationCheckForDirectionalInput =
	game:DefineFastFlag("ConnectIntegrationCheckForDirectionalInput", false)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagChromeActivatedMappedSignal = SharedFlags.FFlagChromeActivatedMappedSignal
local GetFFlagIsSquadEnabled = SharedFlags.GetFFlagIsSquadEnabled

local connectVisibilitySignal = if FFlagChromeActivatedMappedSignal
	then MappedSignal.new(InExperienceAppChatModal.default.visibilitySignal.Event, function()
		return InExperienceAppChatModal:getVisible()
	end)
	else nil :: any

return function(id: string, initialAvailability: number)
	-- only enable squad (a.k.a. party) indicator for the unibar icon, other variants, like dropdown icon, won't need it
	local isSquadIndicatorEnabled = id == "connect_unibar" and GetFFlagIsSquadEnabled()
	local integration = ChromeService:register({
		id = id,
		sideSheetPlacement = if id == "connect_unibar" then SideSheetPlacement.Unibar else SideSheetPlacement.Vertical,
		label = if GetFFlagIsSquadEnabled()
			then "Feature.Squads.Label.Party" -- translated in some languages
			else "Feature.Chat.Label.RobloxChat", -- intentionally not translated, temp string before Party launch
		activated = function()
			if InExperienceAppChatModal:getVisible() then
				InExperienceAppChatModal.default:setVisible(false)
			else
				ChromeIntegrationUtils.dismissRobloxMenuAndRun(function()
					if FFlagConnectIntegrationCheckForDirectionalInput then
						local inputModeStore = Responsive.GetInputModeStore(false)
						if inputModeStore.getLastInputType(false) == Responsive.Input.Directional then
							ChromeFocusUtils.FocusOffChrome()
						end
						InExperienceAppChatModal.default:setVisible(true)
					else
						ChromeFocusUtils.FocusOffChrome(function()
							InExperienceAppChatModal.default:setVisible(true)
						end)
					end
				end)
			end
			LocalStore.storeForLocalPlayer(GetFStringConnectTooltipLocalStorageKey(), true)
		end,
		isActivated = if FFlagChromeActivatedMappedSignal
			then connectVisibilitySignal
			else function()
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
