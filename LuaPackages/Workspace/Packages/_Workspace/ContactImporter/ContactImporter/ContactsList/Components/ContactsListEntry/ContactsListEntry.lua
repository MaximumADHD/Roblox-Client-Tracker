local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local Constants = require(ContactImporter.Common.Constants)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local ImageSetButton = UIBlox.Core.ImageSet.Button
local getFFlagContactImporterAvatarEnabled = require(ContactImporter.Flags.getFFlagContactImporterAvatarEnabled)

local Images = UIBlox.App.ImageSet.Images
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local withStyle = UIBlox.Style.withStyle

local ADD_BUTTON_HEIGHT = 36
local ADD_BUTTON_WIDTH = 44
local HEADSHOT_SIZE = if getFFlagContactImporterAvatarEnabled() then 60 else 0
local CONTACTS_ENTRY_HEIGHT = 72
local INNER_PADDING = 12
local CONTEXTUAL_TEXT_HEIGHT = 20

local ContactsListEntry = Roact.PureComponent:extend("ContactsListEntry")

local getFFlagContactsListEntryUpdatedTruncationFix =
	require(ContactImporter.Flags.getFFlagContactsListEntryUpdatedTruncationFix)

local textToButtonPadding = 10

export type Props = {
	contactName: string,
	contactId: string,
	contextualInfo: string,
	deviceContactId: string,
	hasDivider: boolean,
	layoutOrder: number,
	hasSentRequest: boolean,
	requestFriendship: (contactId: string) -> (),
	openProfilePeekView: () -> (),
}

ContactsListEntry.defaultProps = {
	contextualInfo = "",
	contactName = "",
	hasDivider = false,
}

function ContactsListEntry:init()
	self:setState({
		clicked = false,
		contactNameOffset = 0,
	})

	self.addButtonSizeChanged = function(rbx: any)
		self:setState({
			contactNameOffset = 0 - (rbx.AbsoluteSize.X + textToButtonPadding),
		})
	end

	self.requestContactFriendship = function()
		local props: Props = self.props
		props.requestFriendship(props.contactId)
		self:setState({ clicked = true })
	end

	self.openBlankProfileView = function()
		local props: Props = self.props
		if getFFlagContactImporterAvatarEnabled() then
			self.props.openProfilePeekView(props.contactId, {
				profileType = Constants.CONTACTS_PROFILE_TYPE,
				contactId = props.contactId,
				contactName = props.contactName,
			})
		end
	end
end

function ContactsListEntry:render()
	local props: Props = self.props
	local canSendRequest = not self.state.clicked
	return withStyle(function(style)
		return Roact.createElement("Frame", {
			Name = props.deviceContactId,
			Size = UDim2.new(1, 0, 0, CONTACTS_ENTRY_HEIGHT),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			LayoutOrder = self.props.layoutOrder,
		}, {
			entryContent = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, {
				layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, INNER_PADDING),
				}),
				botAlignedGroup = if getFFlagContactImporterAvatarEnabled()
					then Roact.createElement("Frame", {
						Size = UDim2.new(0, HEADSHOT_SIZE, 1, 0),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						AnchorPoint = Vector2.new(0, 1),
						LayoutOrder = 1,
					}, {
						genericHead = Roact.createElement(ImageSetButton, {
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							Image = Images["component_assets/contactHeadshot"],
							Size = UDim2.new(0, HEADSHOT_SIZE, 0, HEADSHOT_SIZE),
							Position = UDim2.fromScale(0, 1),
							AnchorPoint = Vector2.new(0, 1),

							[Roact.Event.Activated] = self.openBlankProfileView,
						}),
					})
					else nil,
				middleTextGroup = Roact.createElement("TextButton", {
					Size = UDim2.new(1, -HEADSHOT_SIZE - ADD_BUTTON_WIDTH - 2 * INNER_PADDING, 1, 0),
					Text = "",
					BackgroundTransparency = 1,
					[Roact.Event.Activated] = self.openBlankProfileView,
					LayoutOrder = 2,
				}, {
					layout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),
					contactNameLabel = if getFFlagContactsListEntryUpdatedTruncationFix()
						then Roact.createElement(StyledTextLabel, {
							size = UDim2.new(1, self.state.contactNameOffset, 0, CONTEXTUAL_TEXT_HEIGHT),
							colorStyle = style.Theme.TextEmphasis,
							fontStyle = style.Font.Header2,
							lineHeight = 1,
							text = props.contactName,
							fluidSizing = false,
							richText = false,
							textWrapped = false,
							textXAlignment = Enum.TextXAlignment.Left,
							textYAlignment = Enum.TextYAlignment.Bottom,
							textTruncate = Enum.TextTruncate.AtEnd,
							layoutOrder = 1,
						})
						else Roact.createElement(StyledTextLabel, {
							automaticSize = Enum.AutomaticSize.Y,
							colorStyle = style.Theme.TextEmphasis,
							fontStyle = style.Font.Header2,
							lineHeight = 1,
							text = props.contactName,
							textXAlignment = Enum.TextXAlignment.Left,
							textYAlignment = Enum.TextYAlignment.Bottom,
							layoutOrder = 1,
						}),
					contactContextual = Roact.createElement(StyledTextLabel, {
						colorStyle = style.Theme.TextDefault,
						fontStyle = style.Font.CaptionBody,
						lineHeight = 1,
						size = UDim2.new(1, 0, 0, CONTEXTUAL_TEXT_HEIGHT),
						text = props.contextualInfo,
						richText = false,
						textXAlignment = Enum.TextXAlignment.Left,
						textYAlignment = Enum.TextYAlignment.Center,
						layoutOrder = 2,
					}),
				}),

				requestContactButton = if canSendRequest
					then Roact.createElement(UIBlox.App.Button.PrimarySystemButton, {
						icon = Images["icons/actions/friends/friendAdd"],
						size = UDim2.fromOffset(ADD_BUTTON_WIDTH, ADD_BUTTON_HEIGHT),
						onActivated = self.requestContactFriendship,
						layoutOrder = 3,
						[Roact.Change.AbsoluteSize] = if getFFlagContactsListEntryUpdatedTruncationFix()
							then self.addButtonSizeChanged
							else nil,
					})
					else Roact.createElement(UIBlox.App.Button.SecondaryButton, {
						icon = Images["icons/actions/friends/friendpending"],
						size = UDim2.fromOffset(ADD_BUTTON_WIDTH, ADD_BUTTON_HEIGHT),
						onActivated = function() end,
						layoutOrder = 3,
						[Roact.Change.AbsoluteSize] = if getFFlagContactsListEntryUpdatedTruncationFix()
							then self.addButtonSizeChanged
							else nil,
					}),
			}),

			divider = if props.hasDivider
				then Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.new(0, 0, 1, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = style.Theme.Divider.Color,
					BackgroundTransparency = style.Theme.Divider.Transparency,
				})
				else nil,
		})
	end)
end

return ContactsListEntry
