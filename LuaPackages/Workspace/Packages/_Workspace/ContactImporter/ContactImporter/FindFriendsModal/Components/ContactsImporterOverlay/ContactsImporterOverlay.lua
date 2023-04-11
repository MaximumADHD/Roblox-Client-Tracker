local ContactImporter = script.Parent.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)

local t = dependencies.t
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization

local PartialPageModal = UIBlox.App.Dialog.Modal.PartialPageModal
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images
local UIBloxIconSize = UIBlox.App.Constant.IconSize
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local withStyle = UIBlox.Style.withStyle
local TextKeys = require(ContactImporter.Common.TextKeys)
local Dash = dependencies.Dash

local MIDDLE_CONTENT_PADDING_TOP: number = 24
local MIDDLE_CONTENT_PADDING_BOTTOM: number = 36
local MIDDLE_CONTENT_SPACING: number = 12
local ICON_CONTAINER_SIZE: number = 120
local BUTTON_HEIGHT: number = 48
local BUTTON_MARGINS: number = 6

local ContactsImporterOverlay = Roact.PureComponent:extend("ContactsImporterOverlay")

export type Props = {
	screenSize: Vector2,
	onAddFriendsActivated: () -> (),
	onCloseClicked: () -> (),
	onConnectContacts: () -> (),
	onLearnMoreClick: () -> (),
	isFromAddFriendsPage: boolean,
}

ContactsImporterOverlay.validateProps = t.strictInterface({
	screenSize = t.Vector2,
	onCloseClicked = Dash.isCallable,
	onConnectContacts = Dash.isCallable,
	onLearnMoreClick = Dash.isCallable,
	onAddFriendsActivated = Dash.isCallable,
	isFromAddFriendsPage = t.boolean,
})

function ContactsImporterOverlay:render()
	return withLocalization({
		connectWithFriends = TextKeys.CONTACTS_LIST_TITLE,
		connectWithFriendsBody = TextKeys.CONNECT_CONTACTS_BODY,
		connectWithFriendsCaption = TextKeys.CONNECT_CONTACTS_CAPTION,
		getStarted = TextKeys.GET_STARTED,
		closeModal = TextKeys.CLOSE_MODAL,
		goToAddFriends = TextKeys.NOT_NOW,
		learnMore = TextKeys.LEARN_MORE,
	})(function(localizedStrings)
		return withStyle(function(style)
			local theme: dependencies.UIBloxTheme = style.Theme
			local font: dependencies.UIBloxFontPalette = style.Font
			local props: Props = self.props

			local buttons = {}
			if props.isFromAddFriendsPage then
				table.insert(buttons, {
					buttonType = ButtonType.Secondary,
					props = {
						onActivated = props.onCloseClicked,
						text = localizedStrings.goToAddFriends,
					},
				})
			else
				table.insert(buttons, {
					buttonType = ButtonType.Secondary,
					props = {
						onActivated = props.onAddFriendsActivated,
						text = localizedStrings.goToAddFriends,
					},
				})
			end

			table.insert(buttons, {
				buttonType = ButtonType.PrimarySystem,
				props = {
					onActivated = props.onConnectContacts,
					text = localizedStrings.getStarted,
				},
			})

			return Roact.createElement(PartialPageModal, {
				title = localizedStrings.connectWithFriends,
				screenSize = props.screenSize,
				onCloseClicked = props.onCloseClicked,
				buttonStackProps = {
					buttons = buttons,
					buttonHeight = BUTTON_HEIGHT,
					marginBetween = BUTTON_MARGINS,
					forcedFillDirection = Enum.FillDirection.Vertical,
				},
			}, {
				ViewContainer = Roact.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y,
					Size = UDim2.new(1, 0, 0, 0),
					BackgroundTransparency = 1,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, MIDDLE_CONTENT_SPACING),
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
					}),
					UIPadding = Roact.createElement("UIPadding", {
						PaddingTop = UDim.new(0, MIDDLE_CONTENT_PADDING_TOP),
						PaddingBottom = UDim.new(0, MIDDLE_CONTENT_PADDING_BOTTOM),
					}),
					IconContainer = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						Size = UDim2.fromOffset(ICON_CONTAINER_SIZE, ICON_CONTAINER_SIZE + MIDDLE_CONTENT_SPACING),
					}, {
						Icon = Roact.createElement(ImageSetLabel, {
							AnchorPoint = Vector2.new(0.5, 0.5),
							BackgroundTransparency = 1,
							ImageTransparency = theme.IconEmphasis.Transparency,
							Image = Images["icons/graphic/connectcontacts_xlarge"],
							Size = UDim2.fromOffset(UIBloxIconSize.XLarge, UIBloxIconSize.XLarge),
							Position = UDim2.fromScale(0.5, 0.5),
							LayoutOrder = 1,
						}),
					}),
					Header = Roact.createElement(StyledTextLabel, {
						text = localizedStrings.connectWithFriendsBody,
						fontStyle = font.Body,
						colorStyle = theme.TextEmphasis,
						size = UDim2.fromScale(1, 0),
						automaticSize = Enum.AutomaticSize.Y,
						textTruncate = Enum.TextTruncate.AtEnd,
						textXAlignment = Enum.TextXAlignment.Center,
						textYAlignment = Enum.TextYAlignment.Top,
						layoutOrder = 2,
					}),
					Description = Roact.createElement(StyledTextLabel, {
						text = localizedStrings.connectWithFriendsCaption,
						fontStyle = font.CaptionBody,
						colorStyle = theme.TextDefault,
						size = UDim2.fromScale(1, 0),
						automaticSize = Enum.AutomaticSize.Y,
						textTruncate = Enum.TextTruncate.AtEnd,
						textXAlignment = Enum.TextXAlignment.Center,
						textYAlignment = Enum.TextYAlignment.Top,
						layoutOrder = 3,
					}),

					LearnMore = Roact.createElement("TextButton", {
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundTransparency = 1,
						Font = style.Font.CaptionBody.Font,
						Size = UDim2.fromScale(1, 0),
						Text = localizedStrings.learnMore,
						TextColor3 = theme.TextEmphasis.Color,
						TextSize = font.CaptionBody.RelativeSize * font.BaseSize,
						TextTransparency = theme.TextEmphasis.Transparency,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextYAlignment = Enum.TextYAlignment.Top,
						LayoutOrder = 4,

						[Roact.Event.Activated] = props.onLearnMoreClick,
					}),
				}),
			})
		end)
	end)
end

return ContactsImporterOverlay
