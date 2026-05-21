local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local LocalizationService = game:GetService("LocalizationService")

local RobloxGui = CoreGui.RobloxGui

local CoreScriptsRootProvider = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local React = require(CorePackages.Packages.React)
local requestInternalWrapper = require(CorePackages.Workspace.Packages.Http).NetworkLayers.requestInternalWrapper
local RoactNetworking = require(CorePackages.Workspace.Packages.RoactServiceTags).RoactNetworking
local RoactServices = require(CorePackages.Workspace.Packages.RoactServices).RoactServices

local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local FocusRoot = FocusNavigationUtils.FocusRoot

local GenericAbuseReporting = require(CorePackages.Workspace.Packages.GenericAbuseReporting)
local DynamicReportInExpContainer = GenericAbuseReporting.UXFlows.DynamicReportInExpContainer

local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local inExpChatMessagesLoader = require(script.Parent.inExpChatMessagesLoader)
local inExpVoiceUsersLoader = require(script.Parent.inExpVoiceUsersLoader)

-- if game:DefineFastFlag("DebugAbuseReportSeedFakeMessages", false) then
-- 	require(script.Parent.seedFakeChatMessages)()
-- end

export type Props = {
	-- TODO: investigate whether we really need hide and show report tab callbacks
	hideReportTab: () -> (),
	showReportTab: () -> (),
	-- TODO: this triggers the report submit modal, can probably remove since we're using a Dialog while the menu is still open
	showReportSentPage: (reportedPlayer: any) -> (),
	-- TODO: will need to keep these callbacks
	registerOnReportTabHidden: (() -> ()) -> (),
	registerOnReportTabDisplayed: (() -> ()) -> (),
	registerOnSettingsHidden: (() -> ()) -> (), -- IGM closed
	-- TODO: wire this up to support entering report menu from leaderboard
	registerSetNextPlayerToReport: ((player: Player) -> ()) -> (),
	-- TODO: probably can remove this since we know when the menu width is changing
	registerOnMenuWidthChange: ((width: number) -> ()) -> (),
	-- TODO: can probably remove this since we can trigger this from the menu itself
	onReportComplete: (text: string) -> (),
	-- TODO: remove this
	onDropdownMenuOpenChange: (isOpen: boolean) -> (),
}

local function AbuseReportMenuContent(props: Props)
	local isReportTabVisible, setIsReportTabVisible = React.useState(false)

	React.useEffect(function()
		props.registerOnReportTabHidden(function()
			setIsReportTabVisible(false)
		end)

		props.registerOnReportTabDisplayed(function()
			setIsReportTabVisible(true)
		end)
	end, { props.registerOnReportTabHidden, props.registerOnReportTabDisplayed })

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		FocusNavigationCoreScriptsWrapper = React.createElement(FocusRoot, {
			frameProps = {
				Size = UDim2.new(1, 0, 1, 0),
			},
			isAutoFocusRoot = true,
			isIsolated = true,
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.RouterView,
		}, {
			DynamicReportInExpContainer = React.createElement(DynamicReportInExpContainer, {
				onClose = props.hideReportTab,
				registerOnInGameMenuClosed = props.registerOnSettingsHidden,
				isReportTabVisible = isReportTabVisible,
				inExpChatMessagesLoader = inExpChatMessagesLoader,
				inExpVoiceUsersLoader = inExpVoiceUsersLoader,
				voiceChatServiceManager = VoiceChatServiceManager,
			}),
		}),
	})
end

local function AbuseReportMenu(props: Props)
	local localization = Localization.new(LocalizationService.RobloxLocaleId)

	return React.createElement(
		CoreScriptsRootProvider,
		nil,
		React.createElement(LocalizationProvider, {
			localization = localization,
		}, {
			ServicesProvider = React.createElement(RoactServices.ServiceProvider, {
				services = {
					[RoactNetworking] = requestInternalWrapper(HttpService),
				},
			}, {
				AbuseReportMenuContent = React.createElement(AbuseReportMenuContent, props),
			}),
		})
	)
end

return AbuseReportMenu
