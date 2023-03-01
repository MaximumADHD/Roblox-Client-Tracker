local DiscoverabilityModal = script.Parent.Parent.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local EnumScreens = dependencies.SocialModalsCommon.EnumScreens
local TextKeys = require(DiscoverabilityModal.Common.TextKeys)
local Constants = require(DiscoverabilityModal.Common.Constants)
local Analytics = DiscoverabilityModal.Analytics
local useAnalytics = require(Analytics.useAnalytics)
local EventNames = require(Analytics.Enums.EventNames)

local updateOptedInUsers = dependencies.SocialModalsCommon.Utils.updateOptedInUsers
local UpdateContactImporterModalLogic = dependencies.SocialModalsCommon.Actions.UpdateContactImporterModalLogic
local UpdateIsDiscoverabilityUnset = dependencies.SocialModalsCommon.Actions.UpdateIsDiscoverabilityUnset

local NetworkingUserSettings = dependencies.NetworkingUserSettings
local PermissionsProtocol = dependencies.PermissionsProtocol
local Promise = dependencies.Promise
local Dash = dependencies.Dash
local AppStorageService = dependencies.AppStorageService
local SocialLibraries = dependencies.SocialLibraries
local React = dependencies.React
local useSelector = dependencies.Hooks.useSelector
local useDispatch = dependencies.Hooks.useDispatch

local getFFlagEnableContactInvitesForNonPhoneVerified = dependencies.getFFlagEnableContactInvitesForNonPhoneVerified

local getDeepValue = SocialLibraries.Dictionary.getDeepValue

local DiscoverabilityOverlay = require(script.Parent.DiscoverabilityOverlay)

type State = {
	ScreenSize: Vector2,
	LocalUserId: string,
	DiscoverabilityModal: {
		UserPermissions: {
			userSettingsMetadata: {
				prefillDiscoverabilitySetting: boolean,
			},
		},
	},
}

export type Props = {
	navigation: {
		pop: () -> (),
		getParam: (param: string) -> any,
		navigate: (screen: string, props: { [string]: any }?) -> (),
	},
}

type InternalProps = Props & {
	checkOrRequestPermissions: any,
}

local defaultProps = {
	checkOrRequestPermissions = function(permissions)
		local permissionsService = PermissionsProtocol.default
		return permissionsService:checkOrRequestPermissions(permissions)
	end,
}

local DiscoverabilityOverlayContainer = function(passedProps: Props)
	local props: InternalProps = Dash.join(defaultProps, passedProps or {})
	local isStandaloneDiscoverabilityModal = props.navigation.getParam(Constants.IS_STANDALONE_DISCOVERABILITY_MODAL)
	local dispatch = useDispatch()
	local analytics = useAnalytics()
	local screenSize = useSelector(function(state: State)
		return state.ScreenSize
	end)
	local localUserId = useSelector(function(state: State)
		return state.LocalUserId
	end)

	local userSettingsMetadata = useSelector(function(state: State)
		return getDeepValue(state, "DiscoverabilityModal.UserPermissions.userSettingsMetadata")
	end)

	React.useEffect(function()
		analytics.fireAnalyticsEvent(EventNames.DiscoverabilityModalLoad, {
			version = if userSettingsMetadata.prefillDiscoverabilitySetting
				then Constants.NON_GDPR_VERSION
				else Constants.GDPR_VERSION,
		})
	end, {})

	local onCloseClicked = function(discoverabilitySetting: string)
		analytics.fireAnalyticsEvent(EventNames.DiscoverabilityModalClose, {
			selected = discoverabilitySetting,
		})
		props.navigation.pop()
	end

	local onLearnMoreClick = function()
		local openLearnMoreLink = props.navigation.getParam(Constants.OPEN_LEARN_MORE_LINK)
		openLearnMoreLink()
	end

	local failedToUpload = function(_error)
		local showToast = props.navigation.getParam(Constants.SHOW_TOAST)
		showToast(TextKeys.CI_FAILED)
	end

	local hideContactImporterModal = function()
		return dispatch(UpdateContactImporterModalLogic({
			hasOSPermissions = true,
			shouldShowContactImporterUpsellModal = false,
		}))
	end

	local hideDiscoverabilityModal = function()
		return dispatch(UpdateIsDiscoverabilityUnset({
			isDiscoverabilityUnset = false,
		}))
	end

	local updateUserSettings = function(canUploadContacts: boolean?, discoverabilitySetting: string)
		return dispatch(NetworkingUserSettings.UpdateUserSettings.API({
			canUploadContacts = canUploadContacts,
			phoneNumberDiscoverability = discoverabilitySetting,
		}))
	end

	local onActivated = function(discoverabilitySetting: string)
		analytics.fireAnalyticsEvent(EventNames.DiscoverabilityModalContinue, {
			selected = discoverabilitySetting,
		})
		if isStandaloneDiscoverabilityModal then
			updateUserSettings(nil, discoverabilitySetting):andThen(function()
				local showToast = props.navigation.getParam(Constants.SHOW_TOAST)
				props.navigation.pop()
				props.navigation.navigate(EnumScreens.AddFriendsPage)
				showToast(TextKeys.SETTING_SAVED)
			end)
		else
			props
				.checkOrRequestPermissions({
					PermissionsProtocol.Permissions.CONTACTS_ACCESS,
				})
				:andThen(function(permissionResponseStatus)
					if permissionResponseStatus == PermissionsProtocol.Status.AUTHORIZED then
						updateOptedInUsers:addUserToLocalStorage(AppStorageService, localUserId)
						hideContactImporterModal()
						updateUserSettings(true, discoverabilitySetting):andThen(function()
							if getFFlagEnableContactInvitesForNonPhoneVerified() then
								hideDiscoverabilityModal()
								props.navigation.pop()
								props.navigation.navigate(EnumScreens.ContactsList, {
									[Constants.IS_PHONE_VERIFIED] = true,
								})
							else
								props.navigation.navigate(EnumScreens.ContactsList)
							end
						end)
					elseif permissionResponseStatus == PermissionsProtocol.Status.DENIED then
						updateUserSettings(false, discoverabilitySetting):andThen(function()
							props.navigation.navigate(EnumScreens.ContactsRevokedAccessDialog, {
								screenSize = screenSize,
								closeModal = function()
									props.navigation.pop()
								end,
							})
						end)
					else
						return Promise.reject()
					end
				end)
				:catch(failedToUpload)
		end
	end

	return React.createElement(DiscoverabilityOverlay, {
		screenSize = screenSize,
		onCloseClicked = onCloseClicked,
		onLearnMoreClick = onLearnMoreClick,
		onActivated = onActivated,
		prefillDiscoverabilitySetting = userSettingsMetadata.prefillDiscoverabilitySetting,
		analytics = analytics,
	})
end

return DiscoverabilityOverlayContainer
