--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Style.withStyle
local TextButton = UIBlox.App.Button.TextButton

local ROW_PADDING = 22
local SUBTITLE_WIDTH = 612
local VERTICAL_SPACING = 106
local ACTIONS_CONTAINER_WIDTH = 584
local ACTION_BUTTON_HEIGHT = 44
local ACTION_BUTTON_WIDTH = 234
local ACTION_BUTTON_CORNER_RADIUS = 4
local ACTION_BUTTON_SPACING = 70

local ReportActionSelection = Roact.PureComponent:extend("ReportActionSelection")

local noOp = function()

end

ReportActionSelection.defaultProps = {
	isMuted = true,
	isBlocked = true,
	onCancelActivated = noOp,
	onConfirmActivated = noOp,
	ZIndex = 1,
	uiScale = 1.3,
}

ReportActionSelection.validateProps = t.strictInterface({
	mutedTitleText = t.string,
	blockedTitleText = t.string,
	mutedAndBlockedTitleText = t.string,
	mutedSubtitleText = t.string,
	blockedSubtitleText = t.string,
	mutedAndBlockedSubtitleText = t.string,
	cancelText = t.string,
	confirmText = t.string,
	isMuted = t.boolean,
	isBlocked = t.boolean,
	onCancelActivated = t.callback,
	onConfirmActivated = t.callback,
	ZIndex = t.optional(t.number),
	uiScale = t.optional(t.number),
})

function ReportActionSelection:init()
	self.onCancelActivated = function()
		self.props.onCancelActivated()
	end

	self.onConfirmActivated = function()
		self.props.onConfirmActivated()
	end

	local selectedTitleText
	local selectedSubtitleText

	if self.props.isMuted and self.props.isBlocked then
		selectedTitleText = self.props.mutedAndBlockedTitleText
		selectedSubtitleText = self.props.mutedAndBlockedSubtitleText
	elseif self.props.isMuted then
		selectedTitleText = self.props.mutedTitleText
		selectedSubtitleText = self.props.mutedSubtitleText
	elseif self.props.isBlocked then
		selectedTitleText = self.props.blockedTitleText
		selectedSubtitleText = self.props.blockedSubtitleText
	end

	self:setState({
		titleText = selectedTitleText,
		subtitleText = selectedSubtitleText,
	})
end

function ReportActionSelection:render()
	return withStyle(function(style)
		local baseSize = style.Font.BaseSize

		return Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			BackgroundTransparency = 1,
			ZIndex = self.props.ZIndex,
		}, {
			uiScale = Roact.createElement("UIScale", {
				Scale = self.props.uiScale,
			}),

			layout = Roact.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Top,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, ROW_PADDING),
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			title = Roact.createElement("TextLabel", {
				Text = self.state.titleText,
				TextColor3 = style.Theme.TextEmphasis.Color,
				TextTransparency = style.Theme.TextEmphasis.Transparency,
				TextSize = style.Font.Header1.RelativeSize * baseSize,
				Font = style.Font.Header1.Font,
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 1,
			}),

			subtitle = Roact.createElement("TextLabel", {
				Size = UDim2.fromOffset(SUBTITLE_WIDTH, 0),
				Text = self.state.subtitleText,
				TextColor3 = style.Theme.TextEmphasis.Color,
				TextTransparency = style.Theme.TextEmphasis.Transparency,
				TextSize = style.Font.CaptionHeader.RelativeSize * baseSize,
				Font = style.Font.CaptionHeader.Font,
				TextWrapped = true,
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = 2,
			}),

			spacer = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(0, VERTICAL_SPACING - (ROW_PADDING*2)),
				LayoutOrder = 3,
			}),

			actions = Roact.createElement("Frame", {
				Size = UDim2.fromOffset(ACTIONS_CONTAINER_WIDTH, 0),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = 4,
			}, {
				layout = Roact.createElement("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					Padding = UDim.new(0, ACTION_BUTTON_SPACING),
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				cancelContainer = Roact.createElement("Frame", {
					BackgroundColor3 = style.Theme.SystemPrimaryContent.Color,
					BackgroundTransparency = style.Theme.SystemPrimaryContent.Transparency,
					BorderSizePixel = 0,
					Size = UDim2.fromOffset(ACTION_BUTTON_WIDTH, ACTION_BUTTON_HEIGHT),
					LayoutOrder = 1,
				}, {
					uiCorner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, ACTION_BUTTON_CORNER_RADIUS),
					}),

					cancelButton = Roact.createElement(TextButton, {
						size = UDim2.fromScale(1, 1),
						text = self.props.cancelText,
						onActivated = self.onCancelActivated,
					}),
				}),

				confirmContainer = Roact.createElement("Frame", {
					BackgroundColor3 = UIBlox.App.Style.Colors.Blue,
					BackgroundTransparency = 0,
					BorderSizePixel = 0,
					Size = UDim2.fromOffset(ACTION_BUTTON_WIDTH, ACTION_BUTTON_HEIGHT),
					LayoutOrder = 2,
				}, {
					uiCorner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, ACTION_BUTTON_CORNER_RADIUS),
					}),

					confirmButton = Roact.createElement(TextButton, {
						size = UDim2.fromScale(1, 1),
						text = self.props.confirmText,
						onActivated = self.onConfirmActivated,
					}),
				}),
			}),
		})
	end)
end

return ReportActionSelection
