local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useSelector = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useNavigation = require(VirtualEvents.Parent.RoactUtils).Hooks.useNavigation
local useLocalization = require(VirtualEvents.Parent.RoactUtils).Hooks.useLocalization
local dependencyArray = require(VirtualEvents.Parent.RoactUtils).Hooks.dependencyArray

local useStyle = UIBlox.Core.Style.useStyle
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local PartialPageModal = UIBlox.App.Dialog.Modal.PartialPageModal
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel

local CONTENT_PADDING = UDim.new(0, 24)
local INNER_PADDING = UDim.new(0, 12)

local function selectScreenSize(state)
	return state.ScreenSize
end

export type Props = {
	onClose: (() -> ())?,
	onConfirm: (() -> ())?,
}

local function EventNotificationsModal(props: Props)
	local style = useStyle()
	local navigation = useNavigation()
	local screenSize = useSelector(selectScreenSize)

	local text = useLocalization({
		title = "Feature.VirtualEvents.EnableNotificationsModalTitle",
		body = "Feature.VirtualEvents.EnableNotificationsModalBody",
		notNow = "Feature.VirtualEvents.NotNowButton",
		getNotified = "Feature.VirtualEvents.GetNotifiedButton",
	})

	local onClose = React.useCallback(function()
		if props.onClose then
			props.onClose()
		end

		navigation.goBack()
	end, dependencyArray(props.onClose, navigation))

	local onConfirm = React.useCallback(function()
		if props.onConfirm then
			props.onConfirm()
		end

		onClose()
	end, dependencyArray(props.onConfirm, onClose))

	return React.createElement(PartialPageModal, {
		position = UDim2.fromScale(0.5, 0.5),
		anchorPoint = Vector2.new(0.5, 0.5),
		title = text.title,
		screenSize = screenSize,
		buttonStackProps = {
			buttons = {
				{
					buttonType = ButtonType.Secondary,
					props = {
						onActivated = onClose,
						text = text.notNow,
					},
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = onConfirm,
						text = text.getNotified,
					},
				},
			},
		},
		contentPadding = CONTENT_PADDING,
		onCloseClicked = onClose,
	}, {
		Wrapper = React.createElement("Frame", {
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
		}, {
			Layout = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = INNER_PADDING,
			}),

			Padding = React.createElement("UIPadding", {
				PaddingTop = INNER_PADDING + INNER_PADDING,
				PaddingBottom = INNER_PADDING,
			}),

			Body = React.createElement(StyledTextLabel, {
				text = text.body,
				textXAlignment = Enum.TextXAlignment.Center,
				fontStyle = style.Font.Body,
				colorStyle = style.Theme.TextMuted,
				size = UDim2.fromScale(1, 0),
				automaticSize = Enum.AutomaticSize.Y,
				fluidSizing = false,
			}),
		}),
	})
end

return EventNotificationsModal
