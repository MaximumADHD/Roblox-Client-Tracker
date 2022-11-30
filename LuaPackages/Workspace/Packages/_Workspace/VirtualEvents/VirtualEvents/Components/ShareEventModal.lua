local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useNavigation = require(VirtualEvents.Parent.RoactUtils).Hooks.useNavigation
local useSelector = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useLocalization = require(VirtualEvents.Parent.RoactUtils).Hooks.useLocalization
local UrlBuilder = require(VirtualEvents.Parent.UrlBuilder).UrlBuilder
local SelectableTextLabel = require(script.Parent.SelectableTextLabel)

local CONTENT_PADDING = UDim.new(0, 24)
local FIELD_PADDING = UDim.new(0, 8)
local CORNER_RADIUS = UDim.new(0, 2)
local COPY_BUTTON_HEIGHT = 32 -- px

local PartialPageModal = UIBlox.App.Dialog.Modal.PartialPageModal
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local PrimarySystemButton = UIBlox.App.Button.PrimarySystemButton
local useStyle = UIBlox.Core.Style.useStyle

type Props = {
	virtualEventId: string,
	onCopy: ((deeplink: string) -> ())?,
	onClose: (() -> ())?,
}

local function selectScreenSize(state)
	return state.ScreenSize
end

local function ShareEventModal(props: Props)
	local style = useStyle()
	local screenSize = useSelector(selectScreenSize)
	local navigation = useNavigation()

	local deeplink = React.useMemo(function()
		return UrlBuilder.virtualevents.appsflyer({
			eventId = props.virtualEventId,
		})
	end, { props.virtualEventId })

	local text = useLocalization({
		title = "Feature.VirtualEvents.ShareModalTitle",
		body = "Feature.VirtualEvents.ShareModalBody",
		copyLink = "Feature.VirtualEvents.ShareModalLinkCopy",
		callToAction = "Feature.VirtualEvents.ShareModalCallToAction",
	})

	local onClose = React.useCallback(function()
		navigation.goBack()

		if props.onClose then
			props.onClose()
		end
	end, { props, navigation })

	local onCopy = React.useCallback(function()
		if props.onCopy then
			props.onCopy(deeplink)
		end
	end, { deeplink })

	return React.createElement(PartialPageModal, {
		title = text.title,
		screenSize = screenSize,
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
				Padding = CONTENT_PADDING,
			}),

			Padding = React.createElement("UIPadding", {
				PaddingTop = CONTENT_PADDING,
			}),

			Body = React.createElement(StyledTextLabel, {
				layoutOrder = 1,
				text = text.body,
				fontStyle = style.Font.Body,
				colorStyle = style.Theme.TextMuted,
				size = UDim2.fromScale(1, 0),
				automaticSize = Enum.AutomaticSize.Y,
				fluidSizing = false,
			}),

			Deeplink = React.createElement("Frame", {
				LayoutOrder = 2,
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
			}, {
				Layout = React.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = CONTENT_PADDING,
				}),

				Field = React.createElement("Frame", {
					LayoutOrder = 1,
					Size = UDim2.fromScale(4 / 5, 0) - UDim2.fromOffset(CONTENT_PADDING.Offset, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundColor3 = style.Theme.UIMuted.Color,
				}, {
					Corner = React.createElement("UICorner", {
						CornerRadius = CORNER_RADIUS,
					}),

					Border = React.createElement("UIStroke", {
						Color = style.Theme.UIDefault.Color,
					}),

					Padding = React.createElement("UIPadding", {
						PaddingTop = FIELD_PADDING,
						PaddingRight = FIELD_PADDING,
						PaddingBottom = FIELD_PADDING,
						PaddingLeft = FIELD_PADDING,
					}),

					Label = React.createElement(SelectableTextLabel, {
						fontStyle = style.Font.Body,
						colorStyle = style.Theme.TextMuted,
						Size = UDim2.fromScale(1, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						Text = deeplink,
					}),
				}),

				Action = React.createElement(PrimarySystemButton, {
					layoutOrder = 2,
					text = text.copyLink,
					size = UDim2.new(1 / 5, 0, 0, COPY_BUTTON_HEIGHT),
					onActivated = onCopy,
				}),
			}),
		}),
	})
end

return ShareEventModal
