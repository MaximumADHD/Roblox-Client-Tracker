local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local getFFlagContactImporterUpdateHasSentState =
	require(ContactImporter.Flags.getFFlagContactImporterUpdateHasSentState)

local Images = UIBlox.App.ImageSet.Images
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local withStyle = UIBlox.Style.withStyle

local ADD_BUTTON_HEIGHT = 36
local ADD_BUTTON_WIDTH = 44
local HEADSHOT_SIZE = 0
local CONTACTS_ENTRY_HEIGHT = 72
local INNER_PADDING = 12
local CONTEXTUAL_TEXT_HEIGHT = 20

local ContactsListEntry = Roact.PureComponent:extend("ContactsListEntry")

export type Props = {
	contactName: string,
	contactId: string,
	contextualInfo: string,
	deviceContactId: string,
	hasDivider: boolean,
	layoutOrder: number,
	hasSentRequest: boolean,
	requestFriendship: (contactId: string) -> (),
}

ContactsListEntry.defaultProps = {
	contextualInfo = "",
	contactName = "",
	hasDivider = false,
}

function ContactsListEntry:init()
	self:setState({
		clicked = false,
	})

	self.requestContactFriendship = function()
		local props: Props = self.props
		props.requestFriendship(props.contactId)
		if not getFFlagContactImporterUpdateHasSentState() then
			self:setState({ clicked = true })
		end
	end
end

function ContactsListEntry:render()
	local props: Props = self.props
	local canSendRequest = if getFFlagContactImporterUpdateHasSentState()
		then not props.hasSentRequest
		else not self.state.clicked
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
					contactNameLabel = Roact.createElement(StyledTextLabel, {
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
					})
					else Roact.createElement(UIBlox.App.Button.SecondaryButton, {
						icon = Images["icons/actions/friends/friendpending"],
						size = UDim2.fromOffset(ADD_BUTTON_WIDTH, ADD_BUTTON_HEIGHT),
						onActivated = function() end,
						layoutOrder = 3,
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
