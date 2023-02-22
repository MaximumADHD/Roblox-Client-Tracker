-- This file is meant to directly replace ContactsList (non v2) when ready

local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)

local Roact = dependencies.Roact
local React = dependencies.React
local UIBlox = dependencies.UIBlox
local useLocalization = dependencies.useLocalization
local useStyle = dependencies.useStyle

local FullPageModal = UIBlox.App.Dialog.Modal.FullPageModal
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local HorizontalPageMargin = UIBlox.App.Container.HorizontalPageMargin
local FlatList = dependencies.FlatList

local TextKeys = require(ContactImporter.Common.TextKeys)
local ContactsListEntry = require(ContactImporter.ContactsList.Components.ContactsListEntry)
local ContactsListInviteEntry = require(ContactImporter.ContactsList.Components.ContactsListInviteEntry)
local ContactsEmptyList = require(ContactImporter.ContactsList.Components.ContactsEmptyList)
local ContactsUploadErrorModal = require(ContactImporter.ContactsList.Components.ContactsUploadErrorModal)
local ContactsGlimmer = require(ContactImporter.ContactsList.Components.ContactsGlimmer)
local EventNames = require(ContactImporter.Analytics).EventNames
local LocalTypes = require(ContactImporter.Common.LocalTypes)
local ContactsListSearchBar = require(ContactImporter.ContactsList.Components.ContactsListSearchBar)
local Dash = dependencies.Dash

local getFFlagContactImporterSearchBarBugFixes = require(ContactImporter.Flags.getFFlagContactImporterSearchBarBugFixes)
local getFFlagEnableContactInvitesForNonPhoneVerified = dependencies.getFFlagEnableContactInvitesForNonPhoneVerified
local OffPlatformFriendRequestsIXP = require(ContactImporter.Flags.OffPlatformFriendRequestsIXP)
local IXPVariants = OffPlatformFriendRequestsIXP.IXPVariants

local UserInputService = dependencies.UserInputService
local BUTTON_HEIGHT = 48
local GRADIENT_HEIGHT = 24
local VERTICAL_PADDING = 24
local TEXT_BLURB_MAX_HEIGHT = 80
local CONTACTS_ENTRY_HEIGHT = 72
local CONTACTS_ENTRY_HEIGHT_ADJUSTED = CONTACTS_ENTRY_HEIGHT + 1 -- this additional 1px might come from FlatList?
local SEARCH_BAR_HEIGHT = 36
local SEARCH_BAR_BOTTOM_MARGIN = 16

type Props = {
	screenSize: Vector2,
	closeModal: (location: any) -> (),
	deviceContacts: LocalTypes.ContactListContact,
	matchedContacts: LocalTypes.ContactListContact,
	navigation: any,
	requestFriendship: (contactId: string) -> (),
	isFetching: boolean,
	hasUploadError: boolean,
	onAddFriendsActivated: () -> (),
	showAddFriendsButton: boolean,
	variant: string,
	openProfilePeekView: () -> (),
	isPhoneVerified: boolean,
}

local function ContactsListV2(props: Props)
	local style = useStyle()
	local localized = useLocalization({
		fromContactsText = TextKeys.ON_ROBLOX,
		contactsListBlurb = if props.variant == IXPVariants.INVITES_ONLY
				or (getFFlagEnableContactInvitesForNonPhoneVerified() and not props.isPhoneVerified)
			then TextKeys.CONTACTS_LIST_BLURB_INVITES
			else TextKeys.CONTACTS_LIST_BLURB_MIXED,
		connectWithFriends = TextKeys.CONTACTS_LIST_TITLE,
		closeModal = TextKeys.CLOSE_MODAL,
		goToAddFriends = TextKeys.GO_TO_ADD_FRIENDS,
		searchContacts = TextKeys.SEARCH_CONTACTS,
	})

	local createContactList = function(contacts, matchedContacts, deviceContacts)
		Dash.append(
			contacts,
			matchedContacts,
			if #matchedContacts ~= 0 then { { isSectionDivider = true } } else nil,
			deviceContacts
		)
	end

	local contacts = {}
	if getFFlagContactImporterSearchBarBugFixes() then
		contacts = {}
	else
		Dash.append(
			contacts,
			props.matchedContacts,
			if #props.matchedContacts ~= 0 then { { isSectionDivider = true } } else nil,
			props.deviceContacts
		)
	end

	local closeFromButton = function()
		props.closeModal(EventNames.CloseContactListButton)
	end

	local closeFromCross = function()
		props.closeModal(EventNames.CloseContactListCross)
	end

	local filterText, setFilterText = React.useState("")

	local filterContacts = function(contactList)
		return Dash.filter(contactList, function(contact)
			return string.find(string.lower(contact.contactName or ""), string.lower(filterText))
		end)
	end

	local filteredContacts = {}
	local filteredMatchedContacts = {}
	local filteredDeviceContacts = {}
	if getFFlagContactImporterSearchBarBugFixes() then
		filteredMatchedContacts = filterContacts(props.matchedContacts)
		filteredDeviceContacts = filterContacts(props.deviceContacts)
		createContactList(filteredContacts, filteredMatchedContacts, filteredDeviceContacts)
	else
		filteredContacts = filterContacts(contacts)
	end

	local numFilteredMatchedContacts = if getFFlagContactImporterSearchBarBugFixes()
		then #filteredMatchedContacts
		else #props.matchedContacts

	local isEmpty = function()
		return if getFFlagContactImporterSearchBarBugFixes()
			then (#props.matchedContacts + #props.deviceContacts) == 0
			else #contacts == 0
	end

	local renderItem = function(ref): any
		local item = ref.item
		local numMatchedContacts = #props.matchedContacts
		local hasDivider = if getFFlagContactImporterSearchBarBugFixes()
			then ref.index ~= #filteredContacts and ref.index ~= numFilteredMatchedContacts
			else ref.index ~= #contacts and ref.index ~= numMatchedContacts
		if item.isSectionDivider then
			return Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, VERTICAL_PADDING),
			}, {
				divider = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.new(0, 0, 0.5, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = style.Theme.Divider.Color,
					BackgroundTransparency = style.Theme.Divider.Transparency,
				}),
			})
		elseif item.isMatchedContact then
			return Roact.createElement(ContactsListEntry, {
				contactName = item.contactName,
				contactId = item.contactId,
				contextualInfo = localized.fromContactsText,
				hasDivider = hasDivider,
				hasSentRequest = item.hasSentRequest,
				requestFriendship = props.requestFriendship,
				openProfilePeekView = props.openProfilePeekView,
			})
		else
			return Roact.createElement(ContactsListInviteEntry, {
				contactName = item.contactName,
				deviceContactId = item.deviceContactId,
				hasDivider = hasDivider,
				phoneNumber = item.phoneNumber,
				hasSentRequest = item.hasSentRequest,
			})
		end
	end

	local getButtons = function(localized): any
		if props.isFetching then
			return {
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						isLoading = true,
						onActivated = Dash.noop,
					},
				},
			}
		elseif props.showAddFriendsButton and isEmpty() then
			return {
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = props.onAddFriendsActivated,
						text = localized.goToAddFriends,
					},
				},
				{
					buttonType = ButtonType.Secondary,
					props = {
						onActivated = closeFromButton,
						text = localized.closeModal,
					},
				},
			}
		else
			return {
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = closeFromButton,
						text = localized.closeModal,
					},
				},
			}
		end
	end

	local distanceFromTop = UserInputService.StatusBarSize.Y

	local contactComponents: any = {
		layout = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		}),
	}

	local flatListRef = React.createRef()

	local onFilterTextChange = function(newFilterText)
		setFilterText(newFilterText)
		if flatListRef and flatListRef.current then
			flatListRef.current:scrollToIndex({ index = 1 })
		end
	end

	local contactsList = if #filteredContacts ~= 0
		then Roact.createElement(FlatList, {
			ref = getFFlagContactImporterSearchBarBugFixes() and flatListRef or nil,
			data = filteredContacts,
			renderItem = renderItem,
			initialNumToRender = 15,
			CanvasSize = UDim2.new(1, 0, 0, CONTACTS_ENTRY_HEIGHT_ADJUSTED * #filteredContacts),
			contentContainerStyle = {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			},
			style = {
				BackgroundTransparency = 1,
				ScrollBarThickness = 0,
				LayoutOrder = 6,
				Size = UDim2.new(
					1,
					0,
					1,
					-TEXT_BLURB_MAX_HEIGHT - VERTICAL_PADDING * 2 - SEARCH_BAR_HEIGHT - SEARCH_BAR_BOTTOM_MARGIN
				),
				ElasticBehavior = Enum.ElasticBehavior.Always,
			},
		})
		else Roact.createElement(ContactsEmptyList, {
			errorTextKey = TextKeys.NO_RESULTS,
			layoutOrder = 6,
		})

	local contactComponentConstruction = {
		layout = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		}),

		spacer1 = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, VERTICAL_PADDING),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}),

		descriptionFrame = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, TEXT_BLURB_MAX_HEIGHT),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			textLayout = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			descriptionText = Roact.createElement(StyledTextLabel, {
				text = localized.contactsListBlurb,
				automaticSize = Enum.AutomaticSize.Y,
				colorStyle = style.Theme.TextDefault,
				fontStyle = style.Font.Body,
				lineHeight = 1,
				size = UDim2.new(1, 0, 0, 0),
				maxSize = Vector2.new(0, TEXT_BLURB_MAX_HEIGHT),
				textXAlignment = Enum.TextXAlignment.Center,
				textYAlignment = Enum.TextYAlignment.Center,
				layoutOrder = 1,
			}),
		}),

		spacer2 = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, VERTICAL_PADDING),
			BackgroundTransparency = 1,
			LayoutOrder = 3,
		}),
		searchBarContainer = Roact.createElement(ContactsListSearchBar, {
			height = SEARCH_BAR_HEIGHT,
			layoutOrder = 4,
			textChangeCallback = if getFFlagContactImporterSearchBarBugFixes()
				then onFilterTextChange
				else setFilterText,
		}),
		spacer3 = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, SEARCH_BAR_BOTTOM_MARGIN),
			BackgroundTransparency = 1,
			LayoutOrder = 5,
		}),
		contactsList = contactsList,
	}

	if props.isFetching then
		for k, i in { 1, 2, 3 } do
			local name = "glimmer" .. i
			contactComponents[name] = Roact.createElement(ContactsGlimmer, {
				layoutOrder = i,
			})
		end
	elseif props.hasUploadError and isEmpty() then
		contactComponents.errorModal = Roact.createElement(ContactsUploadErrorModal)
	elseif isEmpty() then
		contactComponents.emptyList = Roact.createElement(ContactsEmptyList)
	else
		contactComponents = contactComponentConstruction
	end

	return Roact.createElement(FullPageModal, {
		title = localized.connectWithFriends,
		screenSize = props.screenSize,
		marginSize = 0, -- margin logic is handled by HorizontalPageMargin
		distanceFromTop = distanceFromTop,
		onCloseClicked = closeFromCross,
		buttonStackProps = {
			buttons = getButtons(localized),
			buttonHeight = BUTTON_HEIGHT,
			forcedFillDirection = Enum.FillDirection.Vertical,
		},
	}, {
		hpm = Roact.createElement(HorizontalPageMargin, {
			size = UDim2.new(1, 0, 1, 0),
			position = UDim2.new(0, 0, 0, 0),
			backgroundTransparency = 1,
		}, {
			contentFrame = Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, contactComponents),
			gradientFrame = Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 1, -GRADIENT_HEIGHT),
				Size = UDim2.new(1, 0, 0, GRADIENT_HEIGHT),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255), -- background frame to Gradient must be white, even if transparent
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				ZIndex = 2, -- This gradient needs to show above the entries
			}, {
				gradient = Roact.createElement("UIGradient", {
					Rotation = 270,
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, style.Theme.BackgroundUIDefault.Color),
						ColorSequenceKeypoint.new(1, style.Theme.BackgroundUIDefault.Color),
					}),
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 0),
						NumberSequenceKeypoint.new(1, 1),
					}),
				}),
			}),
		}),
	})
end

return ContactsListV2
