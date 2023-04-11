local ContactImporter = script.Parent.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local TextKeys = require(ContactImporter.Common.TextKeys)
local contactImporterModalInfoUpdater = require(ContactImporter.Utils.contactImporterModalInfoUpdater)
local updateOptedInUsers = dependencies.SocialModalsCommon.Utils.updateOptedInUsers

local EnumScreens = dependencies.SocialModalsCommon.EnumScreens
local Constants = require(ContactImporter.Common.Constants)
local Analytics = require(ContactImporter.Analytics)

local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local PermissionsProtocol = dependencies.PermissionsProtocol
local Promise = dependencies.Promise
local getFFlagContactImporterWithPhoneVerification = dependencies.getFFlagContactImporterWithPhoneVerification
local getFFlagEnableContactInvitesForNonPhoneVerified = dependencies.getFFlagEnableContactInvitesForNonPhoneVerified
local SelfViewProfileDiscoverabilityUpsellIXP = dependencies.SelfViewProfileDiscoverabilityUpsellIXP

local getFFlagCheckDiscoverabilityUsesRoactNavParam =
	require(ContactImporter.Flags.getFFlagCheckDiscoverabilityUsesRoactNavParam)

local ContactsImporterOverlay = require(script.Parent.ContactsImporterOverlay)
local mapDispatchToProps = require(script.Parent.mapDispatchToProps)
local RoduxContacts = dependencies.RoduxContacts
local Selectors = RoduxContacts.Selectors
local AppStorageService = dependencies.AppStorageService
local compose = dependencies.SocialLibraries.RoduxTools.compose
local getDeepValue = dependencies.SocialLibraries.Dictionary.getDeepValue
local ContactImporterContext = require(ContactImporter.ContactsList.Components.ContactImporterContext)
local DiscoverabilityAnalytics = dependencies.DiscoverabilityAnalytics
local RODUX_KEY = require(ContactImporter.Common.Constants).RODUX_KEY

local ContactsImporterOverlayContainer = Roact.PureComponent:extend("ContactsImporterOverlayContainer")

export type Props = {
	screenSize: Vector2,
	showToast: (toastMessage: string) -> (),
	navigation: any?,
	checkOrRequestPermissions: ({ string }) -> { andThen: (...any) -> () },
	localUserId: string,
	fireAnalyticsEvent: ContactImporterContext.fireAnalyticsEvent,
	eventIngestService: any,
	diagService: any,
	updateUserSettings: () -> any,
	setIsPhoneVerified: () -> any,
	isPhoneVerified: boolean?,
}

type InternalProps = Props & mapDispatchToProps.Props

ContactsImporterOverlayContainer.defaultProps = {
	checkOrRequestPermissions = function(permissions)
		local permissionsService = PermissionsProtocol.default
		return permissionsService:checkOrRequestPermissions(permissions)
	end,
	localUserId = "",
}

function ContactsImporterOverlayContainer:init()
	self.checkOrRequestContactsPermissions = function()
		local props: InternalProps = self.props
		return props.checkOrRequestPermissions({
			PermissionsProtocol.Permissions.CONTACTS_ACCESS,
		})
	end

	self.failedToUpload = function(_error)
		local props: InternalProps = self.props
		local showToast = props.navigation.getParam(Constants.SHOW_TOAST)

		showToast(TextKeys.CI_FAILED)
	end

	self.closeModal = function()
		self.props.navigation.pop()
	end

	self.permissionsFlowToContactImporter = function()
		local props: InternalProps = self.props
		local navigation = props.navigation

		self.checkOrRequestContactsPermissions()
			:andThen(function(permissionResponseStatus)
				if permissionResponseStatus == PermissionsProtocol.Status.AUTHORIZED then
					updateOptedInUsers:addUserToLocalStorage(AppStorageService, props.localUserId)
					-- After authorizing contact permissions we can hide this modal
					props.hideContactImporterModal()
					navigation.navigate(EnumScreens.ContactsList, {
						[Constants.SHOULD_UPDATE_USER_SETTINGS] = true,
						[Constants.IS_PHONE_VERIFIED] = navigation.getParam(Constants.IS_PHONE_VERIFIED),
					})
					return Promise.resolve()
				elseif permissionResponseStatus == PermissionsProtocol.Status.DENIED then
					navigation.navigate(EnumScreens.ContactsRevokedAccessDialog, {
						screenSize = props.screenSize,
						closeModal = self.closeModal,
					})
					return Promise.resolve()
				else
					return Promise.reject()
				end
			end)
			:catch(self.failedToUpload)
	end

	self.closeCallback = function()
		local props: InternalProps = self.props
		props.fireAnalyticsEvent(
			Analytics.EventNames.PhoneVerificationClose,
			{ isPhoneVerified = props.isPhoneVerified }
		)
		if props.isPhoneVerified then
			self.permissionsFlowToContactImporter()
		end
	end

	self.checkDiscoverability = function(isDiscoverabilityUnset)
		local props: InternalProps = self.props
		local isPhoneVerified = if getFFlagCheckDiscoverabilityUsesRoactNavParam()
			then props.navigation.getParam(Constants.IS_PHONE_VERIFIED)
			else nil
		if getFFlagEnableContactInvitesForNonPhoneVerified() then
			return isDiscoverabilityUnset and (isPhoneVerified or props.isPhoneVerified)
		else
			return isDiscoverabilityUnset
		end
	end

	self.onConnectContacts = function()
		local props: InternalProps = self.props
		local isDiscoverabilityUnset = props.navigation.getParam("isDiscoverabilityUnset")
		local isPhoneVerified = if getFFlagCheckDiscoverabilityUsesRoactNavParam()
			then props.navigation.getParam(Constants.IS_PHONE_VERIFIED)
			else props.isPhoneVerified
		local navigation = props.navigation
		props.fireAnalyticsEvent(Analytics.EventNames.ContactImportModalContinue)

		-- Do not show Contact importer to users who are email verified but
		-- not phone verified. This is because they cannot go through the webview
		-- phone verification flow. There is top-level feature gating on
		-- users for email verified/non-phone verified users
		if getFFlagContactImporterWithPhoneVerification() and not isPhoneVerified then
			local openPhoneVerificationWebview = navigation.getParam(Constants.OPEN_PHONE_VERIFICATION_WEBVIEW)
			props.fireAnalyticsEvent(Analytics.EventNames.PhoneVerificationWebview)
			openPhoneVerificationWebview({
				onSuccessCallback = self.props.setIsPhoneVerified,
				closeCallback = self.closeCallback,
			})
		elseif self.checkDiscoverability(isDiscoverabilityUnset) then
			self.navigateToDiscoverabilityModal()
		else
			self.permissionsFlowToContactImporter()
		end
	end

	self.navigateToDiscoverabilityModal = function()
		local props: InternalProps = self.props
		local navigation = props.navigation
		local showToast = navigation.getParam(Constants.SHOW_TOAST)
		local openLearnMoreLink = navigation.getParam(Constants.OPEN_LEARN_MORE_LINK)
		local isFromAddFriendsPage = navigation.getParam(Constants.IS_FROM_ADD_FRIENDS_PAGE, false)
		local eventIngestService = props.eventIngestService
		local diagService = props.diagService

		props.getUserSettingsMetadata():andThen(function()
			navigation.navigate(EnumScreens.DiscoverabilityOverlay, {
				showToast = showToast,
				openLearnMoreLink = openLearnMoreLink,
				entryPoint = if isFromAddFriendsPage
					then DiscoverabilityAnalytics.EntryPoints.AddFriends
					else DiscoverabilityAnalytics.EntryPoints.HomePage,
				[Constants.DIAG_SERVICE] = if not SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled()
					then diagService
					else nil,
				[Constants.EVENT_INGEST_SERVICE] = if not SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled()
					then eventIngestService
					else nil,
			})
		end)
	end

	self.onAddFriendsActivated = function()
		local props: Props = self.props
		props.fireAnalyticsEvent(Analytics.EventNames.ContactImportModalAddFriends)

		props.navigation.replace(EnumScreens.AddFriendsPage)
	end

	self.onCloseClicked = function()
		local props: Props = self.props
		props.fireAnalyticsEvent(Analytics.EventNames.ContactImportModalClose)

		props.navigation.pop()
	end

	self.onLearnMoreClick = function()
		local props: Props = self.props
		local openLearnMoreLink = props.navigation.getParam(Constants.OPEN_LEARN_MORE_LINK)
		openLearnMoreLink()
	end
end

function ContactsImporterOverlayContainer:didMount()
	local initialProps: InternalProps = self.props
	initialProps.fireAnalyticsEvent(Analytics.EventNames.ContactImportModalPageLoad)

	contactImporterModalInfoUpdater:addSeenCount(AppStorageService, self.props.localUserId)
	contactImporterModalInfoUpdater:updateTimestamp(
		AppStorageService,
		self.props.localUserId,
		DateTime.now().UnixTimestampMillis
	)
end

function ContactsImporterOverlayContainer:render()
	local props: InternalProps = self.props
	local navigation = props.navigation
	local isFromAddFriendsPage = navigation.getParam(Constants.IS_FROM_ADD_FRIENDS_PAGE, false)

	return Roact.createElement(ContactsImporterOverlay, {
		screenSize = props.screenSize,
		onCloseClicked = self.onCloseClicked,
		onAddFriendsActivated = self.onAddFriendsActivated,
		onConnectContacts = self.onConnectContacts,
		onLearnMoreClick = self.onLearnMoreClick,
		isFromAddFriendsPage = isFromAddFriendsPage,
	})
end

return compose(
	Analytics.connect(function(context: ContactImporterContext.AnalyticsContext)
		return {
			fireAnalyticsEvent = context.fireAnalyticsEvent,
			diagService = context.diagService,
			eventIngestService = context.eventIngestService,
		}
	end),
	RoactRodux.connect(function(state)
		local isPhoneVerified = nil
		if getFFlagContactImporterWithPhoneVerification() then
			isPhoneVerified = getDeepValue(state, RODUX_KEY .. ".ShowContactImporterParams.isPhoneVerified") or false
		end

		return {
			contacts = Selectors.sortContacts(state),
			localUserId = state.LocalUserId,
			screenSize = state.ScreenSize,
			isPhoneVerified = isPhoneVerified,
		}
	end, mapDispatchToProps)
)(ContactsImporterOverlayContainer)
