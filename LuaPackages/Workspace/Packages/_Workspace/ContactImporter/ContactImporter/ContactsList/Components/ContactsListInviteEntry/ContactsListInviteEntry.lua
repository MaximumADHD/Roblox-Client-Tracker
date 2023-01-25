local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox

local React = dependencies.React

local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local TextKeys = require(ContactImporter.Common.TextKeys)
local StandardButtonSize = UIBlox.App.Button.Enum.StandardButtonSize

local ADD_BUTTON_HEIGHT = 36
local ADD_BUTTON_WIDTH = 44
local CONTACTS_ENTRY_HEIGHT = 72
local CONTEXTUAL_TEXT_HEIGHT = 20
local FLAT_LIST_FIX = -1 -- Need to account for a pixel being cut off from flat list
local VERTICAL_TEXT_PADDING = (CONTACTS_ENTRY_HEIGHT - CONTEXTUAL_TEXT_HEIGHT) / 2
local NativeUtilProtocol = dependencies.NativeUtilProtocol
local SMSProtocol = dependencies.SMSProtocol
local Dash = dependencies.Dash
local useStyle = dependencies.useStyle
local useLocalization = dependencies.useLocalization

local getFFlagInvitesFlatListFixEnabled = require(ContactImporter.Flags.getFFlagInvitesFlatListFixEnabled)
local getFFlagRemoveSentTextKey = require(ContactImporter.Flags.getFFlagRemoveSentTextKey)
local getFFlagContactsListEntryUpdatedTruncationFix =
	require(ContactImporter.Flags.getFFlagContactsListEntryUpdatedTruncationFix)

local sendInviteLink = require(script.Parent.sendInviteLink)

export type Props = {
	contactName: string,
	deviceContactId: string,
	hasDivider: boolean,
	phoneNumber: string,
	hasSentRequest: boolean,
	nativeUtilProtocol: any?,
	smsProtocol: any?,
}

local defaultProps = {
	nativeUtilProtocol = NativeUtilProtocol.default,
	smsProtocol = SMSProtocol.default,
}

function ContactsListInviteEntry(passedProps: Props)
	local props = Dash.join(defaultProps, passedProps)

	local localized = useLocalization({
		sent = if getFFlagRemoveSentTextKey() then nil else TextKeys.SENT_BUTTON_TEXT,
		invite = TextKeys.INVITE_BUTTON_TEXT,
	})
	local style = useStyle()
	local linkNetworking = sendInviteLink({
		address = props.phoneNumber,
		deviceContactId = props.deviceContactId,
		nativeUtilProtocol = NativeUtilProtocol.default,
		smsProtocol = SMSProtocol.default,
	})

	local textToButtonPadding = 10

	local offset, setOffset = React.useState(0)

	return Roact.createElement("Frame", {
		Name = props.deviceContactId,
		Size = UDim2.new(1, 0, 0, CONTACTS_ENTRY_HEIGHT),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, {
		entryContent = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, VERTICAL_TEXT_PADDING),
				PaddingBottom = UDim.new(0, VERTICAL_TEXT_PADDING),
			}),

			contactNameLabel = if getFFlagContactsListEntryUpdatedTruncationFix()
				then Roact.createElement(StyledTextLabel, {
					size = UDim2.new(1, offset, 0, CONTEXTUAL_TEXT_HEIGHT),
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
				})
				else Roact.createElement(StyledTextLabel, {
					automaticSize = Enum.AutomaticSize.Y,
					colorStyle = style.Theme.TextEmphasis,
					fontStyle = style.Font.Header2,
					lineHeight = 1,
					text = props.contactName,
					textXAlignment = Enum.TextXAlignment.Left,
					textYAlignment = Enum.TextYAlignment.Bottom,
				}),

			sendInviteButton = if not props.hasSentRequest
				then Roact.createElement(UIBlox.App.Button.PrimarySystemButton, {
					position = if getFFlagInvitesFlatListFixEnabled()
						then UDim2.new(1, FLAT_LIST_FIX, 0.5, 0)
						else UDim2.fromScale(1, 0),
					anchorPoint = if getFFlagInvitesFlatListFixEnabled()
						then Vector2.new(1, 0.5)
						else Vector2.new(1, 0),
					standardSize = StandardButtonSize.XSmall,
					fitContent = true,
					text = localized.invite,
					isDisabled = linkNetworking.isLoading,
					onActivated = linkNetworking.sendInvite,
					[React.Change.AbsoluteSize] = function(rbx: any)
						if getFFlagContactsListEntryUpdatedTruncationFix() then
							setOffset(0 - (rbx.AbsoluteSize.X + textToButtonPadding))
						end
					end,
				})
				else Roact.createElement(UIBlox.App.Button.SecondaryButton, {
					position = if getFFlagInvitesFlatListFixEnabled()
						then UDim2.new(1, FLAT_LIST_FIX, 0.5, 0)
						else UDim2.fromScale(1, 0.5),
					anchorPoint = Vector2.new(1, 0.5),
					standardSize = StandardButtonSize.XSmall,
					isDisabled = true,
					text = localized.invite,
					size = if getFFlagInvitesFlatListFixEnabled()
						then nil
						else UDim2.fromOffset(ADD_BUTTON_WIDTH, ADD_BUTTON_HEIGHT),
					onActivated = Dash.noop,
					[React.Change.AbsoluteSize] = function(rbx: any)
						if getFFlagContactsListEntryUpdatedTruncationFix() then
							setOffset(0 - (rbx.AbsoluteSize.X + textToButtonPadding))
						end
					end,
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
end

return ContactsListInviteEntry
