-- This file is meant to directly replace ContactsListContainer (non v2) when ready
local ContactImporter = script.Parent.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)

local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local LocalTypes = require(ContactImporter.Common.LocalTypes)
local Constants = require(ContactImporter.Common.Constants)
local Promise = dependencies.Promise
local Analytics = require(ContactImporter.Analytics)
local FieldNames = Analytics.FieldNames
local EventNames = Analytics.EventNames
local formatContacts = require(ContactImporter.Utils.formatContacts)
local ContactsProtocol = dependencies.ContactsProtocol

local EnumScreens = dependencies.SocialModalsCommon.EnumScreens
local ContactsListV2 = require(script.Parent.ContactsListV2)
local mapDispatchToProps = require(script.Parent.ContactsListMapDispatchToPropsV2)
local mapStateToProps = require(script.Parent.ContactsListMapStateToPropsV2)
local getDeepValue = dependencies.SocialLibraries.Dictionary.getDeepValue

local getFIntContactImporterUploadContactsMin = require(ContactImporter.Flags.getFIntContactImporterUploadContactsMin)
local IXPVariants = require(ContactImporter.Common.IXPVariants)

local compose = dependencies.SocialLibraries.RoduxTools.compose
local ContactImporterContext = require(ContactImporter.ContactsList.Components.ContactImporterContext)
local getFFlagContactImporterCatchErrorWithGetUserSettings =
	require(ContactImporter.Flags.getFFlagContactImporterCatchErrorWithGetUserSettings)
local getFFlagEnableContactInvitesForNonPhoneVerified = dependencies.getFFlagEnableContactInvitesForNonPhoneVerified

type Promise<T, E> = { andThen: (any, (T) -> any) -> Promise<T, E>, catch: (any, error: E) -> () }

local ContactsListContainerV2 = Roact.PureComponent:extend("ContactsListContainerV2")

type ContactsProtocol = {
	supportsContacts: (self: ContactsProtocol) -> Promise<boolean, any>,
	getContacts: (self: ContactsProtocol) -> Promise<LocalTypes.ContactInformation, any>,
}

export type Props = {
	closeModal: () -> (),
	deviceContacts: { [number]: any },
	matchedContacts: { [number]: any },
	findContacts: () -> Promise<any, any>,
	navigation: any,
	getContactEntities: () -> (),
	updateUserSettings: () -> Promise<any, any>,
	contactsProtocol: ContactsProtocol,
	isFetching: boolean,
	fireAnalyticsEvent: ContactImporterContext.fireAnalyticsEvent,
	variant: string,
	entryPoint: any,
}

export type State = {
	hasUploadError: boolean,
	isFetching: boolean,
}

type InternalProps = Props & mapStateToProps.Props & mapDispatchToProps.Props

ContactsListContainerV2.defaultProps = {
	contactsProtocol = ContactsProtocol.default,
}

function ContactsListContainerV2:init()
	self.state = {
		hasUploadError = false,
		isFetching = true,
	} :: State

	self.contactsCount = nil
	-- contacts can have multiple numbers
	self.numTotalNumbersOnDevice = nil
	self.numTotalContactsOnDevice = nil
	self.numContactsWithMultipleNumbers = nil
	self.startTime = os.clock()

	local function makeErrorFunction(label: string)
		return function(e)
			if type(e) == "table" and e.hasAlreadyErrored then
				return Promise.reject({ hasAlreadyErrored = true })
			end

			self:setState({
				hasUploadError = true,
				isFetching = false,
			})

			self.props.fireAnalyticsEvent(label, {
				failedStep = label,
			})
			self.fireContactImportingTimeEvent({
				isSuccessfulUpload = false,
				failedStep = label,
			})

			return Promise.reject({ hasAlreadyErrored = true })
		end
	end

	local getMatchedCount = function(response)
		local userContactsEntities = getDeepValue(response or {}, "responseBody.userContactsEntities")

		return if userContactsEntities then #userContactsEntities else 0
	end

	self.requestFriendship = function(contactId)
		local props: InternalProps = self.props

		props.fireAnalyticsEvent(EventNames.RequestFriendship, {
			requestedId = contactId,
		})

		props
			.requestFriendship({
				currentUserId = props.localUserId,
				contactId = contactId,
			})
			:andThen(function()
				props.requestSent(contactId)
			end)
	end

	self.fireContactImportingTimeEvent =
		function(args: { isSuccessfulUpload: true, numMatchedContacts: number, failedStep: string })
			local props: InternalProps = self.props

			props.fireAnalyticsEvent(EventNames.ContactImportingTime, {
				[FieldNames.NumTotalContactsImported] = self.contactsCount,
				[FieldNames.NumMatchedContacts] = args.numMatchedContacts,
				[FieldNames.NumTotalContactsOnDevice] = self.numTotalContactsOnDevice,
				[FieldNames.NumMaxContacts] = true,
				[FieldNames.NumMinContacts] = true,
				[FieldNames.NumTotalNumbersOnDevice] = self.numTotalNumbersOnDevice,
				[FieldNames.NumContactsWithMultipleNumbers] = self.numContactsWithMultipleNumbers,
				loadingTime = os.clock() - self.startTime,
				isSuccessfulUpload = args.isSuccessfulUpload,
			})
		end

	self.getContactsFromDevice = function()
		local props: InternalProps = self.props

		return props.contactsProtocol
			:supportsContacts()
			:andThen(function(doesSupport)
				if not doesSupport then
					return Promise.reject()
				end

				return props.contactsProtocol:getContacts()
			end)
			:catch(function()
				return Promise.reject()
			end)
	end

	self.formatContactsFromDevice = function(contactInformation)
		local props: InternalProps = self.props

		props.deviceContactsReceived(contactInformation.contacts)

		local formattedContacts = formatContacts(contactInformation)

		self.contactsCount = #formattedContacts.contacts
		self.numTotalContactsOnDevice = formattedContacts.contactsCount
		local totalNumberCount = 0
		local contactsWithMultipleNumbersCount = 0
		for i, v in ipairs(contactInformation.contacts) do
			local contactsPhoneNumbers = #v.phonenumber
			if contactsPhoneNumbers > 1 then
				contactsWithMultipleNumbersCount += 1
			end
			totalNumberCount += contactsPhoneNumbers
		end

		self.numTotalNumbersOnDevice = totalNumberCount
		self.numContactsWithMultipleNumbers = contactsWithMultipleNumbersCount

		return formattedContacts
	end

	self.uploadDeviceContacts = function(formattedContacts)
		local props: InternalProps = self.props
		local contactsCount = #formattedContacts.contacts

		if
			contactsCount == 0
			or props.variant == IXPVariants.INVITES_ONLY
			or #formattedContacts.contacts < getFIntContactImporterUploadContactsMin()
		then
			-- don't upload if contacts are empty
			return Promise.resolve({
				shouldFindContacts = false,
			})
		else
			return props.uploadContacts(formattedContacts :: any):andThen(function()
				return Promise.resolve({ shouldFindContacts = true })
			end, function()
				return Promise.reject()
			end)
		end
	end

	self.findContacts = function(args)
		local props: InternalProps = self.props
		if args.shouldFindContacts then
			return props.findContacts()
		else
			return Promise.resolve()
		end
	end

	self.getContactEntities = function(contactIds)
		local props: InternalProps = self.props

		if contactIds then
			return props.getContactEntities(contactIds)
		else
			return Promise.resolve()
		end
	end

	self.fireHasLoaded = function(response)
		local props: InternalProps = self.props
		local numMatchedContactsCount = getMatchedCount(response)

		props.fireAnalyticsEvent(EventNames.ContactsListLoaded, {
			[FieldNames.NumTotalContactsImported] = self.contactsCount,
			[FieldNames.NumMatchedContacts] = numMatchedContactsCount,
			[FieldNames.NumMaxContacts] = true,
			[FieldNames.NumMinContacts] = true,
			[FieldNames.NumTotalContactsOnDevice] = self.numTotalContactsOnDevice,
		})

		self:setState({
			isFetching = false,
		})
		self.fireContactImportingTimeEvent({
			isSuccessfulUpload = true,
			nummatchedContacts = numMatchedContactsCount,
		})

		return Promise.resolve()
	end

	self.failedToUpload = function(_error)
		self:setState({
			hasUploadError = true,
			isFetching = false,
		})

		self.fireContactImportingTimeEvent({ isSuccessfulUpload = false })
	end

	self.getContacts = function()
		local props: Props = self.props
		local isPhoneVerified = props.navigation.getParam(Constants.IS_PHONE_VERIFIED)
		if getFFlagEnableContactInvitesForNonPhoneVerified() and not isPhoneVerified then
			self.getContactsFromDevice()
				:andThen(self.formatContactsFromDevice, makeErrorFunction(EventNames.FailedGetContactsFromDevice))
				:andThen(self.fireHasLoaded, makeErrorFunction(EventNames.FailedFormatContactsFromDevice))
				:catch(self.failedToUpload)
		else
			self.getContactsFromDevice()
				:andThen(self.formatContactsFromDevice, makeErrorFunction(EventNames.FailedGetContactsFromDevice))
				:andThen(self.uploadDeviceContacts, makeErrorFunction(EventNames.FailedFormatContactsFromDevice))
				:andThen(self.findContacts, makeErrorFunction(EventNames.FailedUploadContactsFromDevice))
				:andThen(self.getContactEntities, makeErrorFunction(EventNames.FailedFindContacts))
				:andThen(self.fireHasLoaded, makeErrorFunction(EventNames.FailedGetContactEntities))
				:catch(self.failedToUpload)
		end
	end

	self.closeModal = function(location)
		local props: InternalProps = self.props
		local state: State = self.state
		props.fireAnalyticsEvent(location, {
			isLoading = self.isFetching(props.variant, IXPVariants),
			loadingTime = if state.isFetching then os.clock() - self.startTime else nil,
		})

		props.navigation.pop()
	end

	self.onAddFriendsActivated = function()
		local props: Props = self.props
		-- TODO SACQ-13 add analytics event

		props.navigation.replace(EnumScreens.AddFriendsPage)
	end

	self.isFetching = function(variant, IXPVariants)
		local state: State = self.state
		return if variant == IXPVariants.BLENDED then state.isFetching else false
	end
end

function ContactsListContainerV2:didMount()
	local props: InternalProps = self.props
	local shouldUpdateUserSettings = props.navigation.getParam(Constants.SHOULD_UPDATE_USER_SETTINGS)

	if getFFlagContactImporterCatchErrorWithGetUserSettings() then
		if shouldUpdateUserSettings then
			props.updateUserSettings():andThen(self.getContacts):catch(function()
				self.failedToUpload()
			end)
		else
			self.getContacts()
		end
	else
		if shouldUpdateUserSettings then
			props.updateUserSettings():andThen(self.getContacts)
		else
			self.getContacts()
		end
	end
end

function ContactsListContainerV2:render()
	local props: InternalProps = self.props
	local variant = props.variant

	return Roact.createElement(ContactsListV2, {
		deviceContacts = props.deviceContacts,
		matchedContacts = props.matchedContacts,
		isFetching = self.isFetching(variant, IXPVariants),
		requestFriendship = self.requestFriendship,
		screenSize = props.screenSize,
		hasUploadError = self.state.hasUploadError,
		onAddFriendsActivated = self.onAddFriendsActivated,
		closeModal = self.closeModal,
		showAddFriendsButton = props.entryPoint == Analytics.EntryPoints.HomePage,
		variant = props.variant,
		openProfilePeekView = self.props.openProfilePeekView,
	})
end

return compose(
	Analytics.connect(function(context: ContactImporterContext.AnalyticsContext)
		return {
			fireAnalyticsEvent = context.fireAnalyticsEvent,
			entryPoint = context.entryPoint,
			openProfilePeekView = context.openProfilePeekView,
		}
	end),
	RoactRodux.connect(mapStateToProps, mapDispatchToProps)
)(ContactsListContainerV2)
