local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization
local Dash = dependencies.Dash

local FullPageModal = UIBlox.App.Dialog.Modal.FullPageModal
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local VerticalScrollView = UIBlox.App.Container.VerticalScrollViewWithMargin
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local HorizontalPageMargin = UIBlox.App.Container.HorizontalPageMargin
local withStyle = UIBlox.Style.withStyle

local TextKeys = require(ContactImporter.Common.TextKeys)
local ContactsListEntry = require(ContactImporter.ContactsList.Components.ContactsListEntry)
local ContactsEmptyList = require(ContactImporter.ContactsList.Components.ContactsEmptyList)
local ContactsUploadErrorModal = require(ContactImporter.ContactsList.Components.ContactsUploadErrorModal)
local ContactsGlimmer = require(ContactImporter.ContactsList.Components.ContactsGlimmer)
local EventNames = require(ContactImporter.Analytics).EventNames
local UserInputService = dependencies.UserInputService
local BUTTON_HEIGHT = 48
local GRADIENT_HEIGHT = 24
local TEXT_PADDING = 24

-- This value is an arbitrary buffer, that essentially reserves all layout values less than this number for
-- potential components we want to put before the beginning of the list components
local LAYOUT_OFFSET = 10

local ContactsList = Roact.PureComponent:extend("ContactsList")

type Props = {
	screenSize: Vector2,
	closeModal: (location: any) -> (),
	sendContactFriendRequest: () -> (),
	contacts: {
		contactName: string,
		contactId: string,
	},
	navigation: any,
	requestFriendship: (contactId: string) -> (),
	isFetching: boolean,
	hasUploadError: boolean,
}

function ContactsList:init()
	self.closeFromButton = function()
		local props: Props = self.props
		props.closeModal(EventNames.CloseContactListButton)
	end

	self.closeFromCross = function()
		local props: Props = self.props
		props.closeModal(EventNames.CloseContactListCross)
	end
end

function ContactsList:render()
	local props: Props = self.props
	local distanceFromTop = UserInputService.StatusBarSize.Y

	return withLocalization({
		fromContactsText = TextKeys.FROM_CONTACTS,
		contactsListBlurb = TextKeys.CONTACTS_LIST_BLURB,
		connectWithFriends = TextKeys.CONTACTS_LIST_TITLE,
		closeModal = TextKeys.CLOSE_MODAL,
	})(function(localized)
		return withStyle(function(style)
			local contactComponents: any = {
				layout = Roact.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
				}),
			}

			if props.isFetching then
				for k, i in { 1, 2, 3 } do
					local name = "glimmer" .. i
					contactComponents[name] = Roact.createElement(ContactsGlimmer, {
						layoutOrder = i,
					})
				end
			elseif props.hasUploadError then
				contactComponents.errorModal = Roact.createElement(ContactsUploadErrorModal)
			elseif #props.contacts == 0 then
				contactComponents.emptyList = Roact.createElement(ContactsEmptyList)
			else
				contactComponents = Dash.join(contactComponents, {
					spacing1 = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, TEXT_PADDING),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						LayoutOrder = 1,
					}),
					textBlurb = Roact.createElement(StyledTextLabel, {
						text = localized.contactsListBlurb,
						automaticSize = Enum.AutomaticSize.Y,
						colorStyle = style.Theme.TextDefault,
						fontStyle = style.Font.Body,
						lineHeight = 1,
						size = UDim2.new(1, 0, 0, 0),
						textXAlignment = Enum.TextXAlignment.Center,
						textYAlignment = Enum.TextYAlignment.Center,
						layoutOrder = 2,
					}),
					spacing2 = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, TEXT_PADDING),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						LayoutOrder = 3,
					}),
				})

				local contacts = props.contacts
				for i, v in ipairs(contacts) do
					contactComponents[i] = Roact.createElement(ContactsListEntry, {
						contactName = v.contactName or "",
						contactId = v.contactId or "",
						contextualInfo = localized.fromContactsText,
						hasDivider = i ~= if contacts then #contacts else false,
						layoutOrder = i + LAYOUT_OFFSET,
						requestFriendship = props.requestFriendship,
					})
				end
			end

			return Roact.createElement(FullPageModal, {
				title = localized.connectWithFriends,
				screenSize = props.screenSize,
				marginSize = 0, -- margin logic is handled by VerticalScrollView
				distanceFromTop = distanceFromTop,
				onCloseClicked = self.closeFromCross,
				buttonStackProps = {
					buttons = {
						{
							buttonType = ButtonType.PrimarySystem,
							props = {
								onActivated = self.closeFromButton,
								text = localized.closeModal,
							},
						},
					},
					buttonHeight = BUTTON_HEIGHT,
					forcedFillDirection = Enum.FillDirection.Vertical,
				},
			}, {
				verticalScrollView = Roact.createElement(VerticalScrollView, {
					canvasSizeY = UDim.new(1, 0),
					elasticBehavior = Enum.ElasticBehavior.Always,
					useAutomaticCanvasSize = true,
				}, contactComponents),
				hpm = Roact.createElement(HorizontalPageMargin, {
					size = UDim2.new(1, 0, 0, GRADIENT_HEIGHT),
					position = UDim2.new(0, 0, 1, -GRADIENT_HEIGHT),
					backgroundTransparency = 1,
					zIndex = 2, -- This gradient needs to show above the entries
				}, {
					gradientFrame = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255), -- background frame to Gradient must be white, even if transparent
						BackgroundTransparency = 0,
						BorderSizePixel = 0,
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
		end)
	end)
end

return ContactsList
