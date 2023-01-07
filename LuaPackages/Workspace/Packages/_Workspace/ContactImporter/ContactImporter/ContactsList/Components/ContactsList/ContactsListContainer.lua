local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)

local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local llama = dependencies.llama
local Constants = require(ContactImporter.Common.Constants)
local Promise = dependencies.Promise
local Analytics = require(ContactImporter.Analytics)

local FieldNames = Analytics.FieldNames
local EventNames = Analytics.EventNames
local formatContacts = require(ContactImporter.Utils.formatContacts)
local ContactsProtocol = dependencies.ContactsProtocol

local ContactsList = require(script.Parent.ContactsList)
local mapDispatchToProps = require(script.Parent.ContactsListMapDispatchToProps)
local mapStateToProps = require(script.Parent.ContactsListMapStateToProps)
local getDeepValue = dependencies.SocialLibraries.Dictionary.getDeepValue

local getFIntContactImporterUploadContactsMin = require(ContactImporter.Flags.getFIntContactImporterUploadContactsMin)
local getFFlagUpdateUploadContacts = require(ContactImporter.Flags.getFFlagUpdateUploadContacts)
local compose = dependencies.SocialLibraries.RoduxTools.compose
local ContactImporterContext = require(ContactImporter.ContactsList.Components.ContactImporterContext)
local getFFlagNavigateToContactsListFirst = require(ContactImporter.Flags.getFFlagNavigateToContactsListFirst)
local getFFlagUpdateContactsIsFetchingState = require(ContactImporter.Flags.getFFlagUpdateContactsIsFetchingState)
local getFFlagContactImporterFixMatchedContacts =
	require(ContactImporter.Flags.getFFlagContactImporterFixMatchedContacts)
type Promise = { andThen: (...any) -> (), catch: (error: any) -> () }

local ContactsListContainer = Roact.PureComponent:extend("ContactsListContainer")

type ContactsProtocol = {
	supportsContacts: (self: ContactsProtocol) -> Promise,
	getContacts: (self: ContactsProtocol) -> Promise,
}

export type Props = {
	closeModal: () -> (),
	sendContactFriendRequest: () -> (),
	contacts: { [number]: any },
	navigation: any,
	findContacts: ({ string }) -> Promise,
	getContactEntities: () -> (),
	updateUserSettings: () -> Promise,
	contactsProtocol: ContactsProtocol,
	isFetching: boolean,
	fireAnalyticsEvent: ContactImporterContext.fireAnalyticsEvent,
}

export type State = {
	hasUploadError: boolean,
	isFetching: boolean,
}

type InternalProps = Props & mapStateToProps.Props & mapDispatchToProps.Props

ContactsListContainer.defaultProps = {
	contactsProtocol = ContactsProtocol.default,
}

function ContactsListContainer:init()
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

	self.requestFriendship = function(contactId)
		local props: InternalProps = self.props

		props.fireAnalyticsEvent(EventNames.RequestFriendship, {
			requestedId = contactId,
		})

		props.requestFriendship({
			currentUserId = props.localUserId,
			contactId = contactId,
		})
	end

	self.fireContactImportingTimeEvent = function(args: { isSuccessfulUpload: true })
		local props: InternalProps = self.props
		local bypassFetchContacts = props.navigation.getParam(Constants.BYPASS_FETCH_CONTACTS)

		props.fireAnalyticsEvent(EventNames.ContactImportingTime, {
			[FieldNames.NumTotalContactsImported] = self.contactsCount,
			[FieldNames.NumMatchedContacts] = if getFFlagContactImporterFixMatchedContacts()
				then self.numMatchedContactsCount
				else 0,
			[FieldNames.NumTotalContactsOnDevice] = self.numTotalContactsOnDevice,
			[FieldNames.NumMaxContacts] = true,
			[FieldNames.NumMinContacts] = true,
			[FieldNames.NumTotalNumbersOnDevice] = self.numTotalNumbersOnDevice,
			[FieldNames.NumContactsWithMultipleNumbers] = self.numContactsWithMultipleNumbers,
			didBypassFetchContacts = bypassFetchContacts,
			loadingTime = os.clock() - self.startTime,
			isSuccessfulUpload = args.isSuccessfulUpload,
		})
	end

	self.failedToUpload = function(_error)
		self:setState({
			hasUploadError = true,
			isFetching = if getFFlagUpdateContactsIsFetchingState() then false else nil,
		})

		self.fireContactImportingTimeEvent({ isSuccessfulUpload = false })
	end

	--[[
	self.getContacts returns in the following format:
	{
		countryCode = "US",
		contacts = {
			{
				phonenumber = {
					"1",
					"2"
				},
				lastname = "last"
				firstname = "first"
			},
			{
				phonenumber = {
					"1",
					"2"
				},
				lastname = "last"
				firstname = "first"
			}
		}
	}
	]]
	--
	self.getContacts = function()
		local props: InternalProps = self.props

		return props.contactsProtocol:supportsContacts():andThen(function(doesSupport)
			if not doesSupport then
				return Promise.reject()
			end

			return props.contactsProtocol:getContacts()
		end)
	end

	self.getMatchedCount = function(response)
		local userContactsEntities = getDeepValue(response or {}, "responseBody.userContactsEntities")

		return if userContactsEntities then #userContactsEntities else 0
	end

	self.getMatchedContacts = function()
		local props: InternalProps = self.props
		local bypassFetchContacts = props.navigation.getParam(Constants.BYPASS_FETCH_CONTACTS)

		return props
			.findContacts()
			:andThen(props.getContactEntities)
			:andThen(function(response)
				local numMatchedContactsCount = self.getMatchedCount(response)
				if getFFlagContactImporterFixMatchedContacts() then
					self.numMatchedContactsCount = numMatchedContactsCount
				end

				props.fireAnalyticsEvent(EventNames.ContactsListLoaded, {
					[FieldNames.NumTotalContactsImported] = self.contactsCount,
					[FieldNames.NumMatchedContacts] = if getFFlagContactImporterFixMatchedContacts()
						then self.numMatchedContactsCount
						else numMatchedContactsCount,
					didBypassFetchContacts = bypassFetchContacts,
					[FieldNames.NumMaxContacts] = true,
					[FieldNames.NumMinContacts] = true,
					[FieldNames.NumTotalContactsOnDevice] = self.numTotalContactsOnDevice,
				})
				if getFFlagUpdateContactsIsFetchingState() then
					self:setState({
						isFetching = false,
					})
				end
				self.fireContactImportingTimeEvent({ isSuccessfulUpload = true })
			end)
			:catch(self.failedToUpload)
	end

	self.uploadContacts = function()
		local props: InternalProps = self.props
		local bypassFetchContacts = props.navigation.getParam(Constants.BYPASS_FETCH_CONTACTS)

		if bypassFetchContacts then
			self.getMatchedContacts()
		else
			self.getContacts()
				:andThen(function(contacts)
					local formattedContacts = formatContacts(contacts)
					self.contactsCount = #formattedContacts.contacts
					self.numTotalContactsOnDevice = formattedContacts.contactsCount
					local totalNumberCount = 0
					local contactsWithMultipleNumbersCount = 0
					for i, v in ipairs(contacts.contacts) do
						local contactsPhoneNumbers = #v.phonenumber
						if contactsPhoneNumbers > 1 then
							contactsWithMultipleNumbersCount += 1
						end
						totalNumberCount += contactsPhoneNumbers
					end

					self.numTotalNumbersOnDevice = totalNumberCount
					self.numContactsWithMultipleNumbers = contactsWithMultipleNumbersCount
					if getFFlagUpdateUploadContacts() and self.contactsCount == 0 then
						return Promise.resolve({})
					end
					return if #formattedContacts.contacts >= getFIntContactImporterUploadContactsMin()
						then props.uploadContacts(formattedContacts :: any)
						else Promise.reject()
				end)
				:andThen(self.getMatchedContacts)
				:catch(self.failedToUpload)
		end
	end

	self.closeModal = function(location)
		local props: InternalProps = self.props
		local state: State = self.state
		props.fireAnalyticsEvent(location, {
			isLoading = if getFFlagUpdateContactsIsFetchingState() then state.isFetching else props.isFetching,
			loadingTime = if (getFFlagUpdateContactsIsFetchingState() and state.isFetching) or props.isFetching
				then os.clock() - self.startTime
				else nil,
		})

		props.navigation.pop()
	end
end

function ContactsListContainer:didMount()
	if getFFlagNavigateToContactsListFirst() then
		local props: InternalProps = self.props
		local shouldUpdateUserSettings = props.navigation.getParam(Constants.SHOULD_UPDATE_USER_SETTINGS)
		if shouldUpdateUserSettings then
			props.updateUserSettings():andThen(self.uploadContacts)
		else
			self.uploadContacts()
		end
	else
		self.uploadContacts()
	end
end

function ContactsListContainer:render()
	local props: InternalProps = self.props
	local state: State = self.state
	local screenSize = props.screenSize
	return Roact.createElement(
		ContactsList,
		llama.Dictionary.join(props, {
			contacts = props.contacts,
			isFetching = if getFFlagUpdateContactsIsFetchingState() then state.isFetching else props.isFetching,
			requestFriendship = self.requestFriendship,
			closeModal = self.closeModal,
			screenSize = screenSize,
			hasUploadError = self.state.hasUploadError,
		})
	)
end

return compose(
	Analytics.connect(function(context: ContactImporterContext.AnalyticsContext)
		return {
			fireAnalyticsEvent = context.fireAnalyticsEvent,
		}
	end),
	RoactRodux.connect(mapStateToProps, mapDispatchToProps)
)(ContactsListContainer)
