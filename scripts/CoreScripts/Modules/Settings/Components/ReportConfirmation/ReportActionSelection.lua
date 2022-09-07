--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Style.withStyle
local TextButton = UIBlox.App.Button.TextButton

local CheckboxRow = require(script.Parent.CheckboxRow)

local MICROPHONE_IMAGE = "icons/controls/microphone"
local BLOCK_IMAGE = "icons/actions/block"
local ROW_HEIGHT = 28
local ACTIONS_VERTICAL_PADDING = 18
local ROW_PADDING = 22
local SUBTITLE_WIDTH = 612
local ACTIONS_CONTAINER_WIDTH = 584
local DONE_BUTTON_HEIGHT = 44
local DONE_BUTTON_CORNER_RADIUS = 4

local ReportActionSelection = Roact.PureComponent:extend("ReportActionSelection")

local noOp = function()

end

ReportActionSelection.defaultProps = {
	titleText = "Thanks for your report!",
	subtitleText = "We've received your report and will take action soon if needed. Your feedback helps keep our community safe.",
	instructionText = "Other steps you can take:",
	muteText = "Mute {DISPLAYNAME}(@username)",
	blockText = "Block {DISPLAYNAME}(@username)",
	doneText = "Done",
	showVoiceMuting = true,
	isVoiceMuted = false,
	isBlocked = false,
	onMuteCheckboxActivated = noOp,
	onBlockCheckboxActivated = noOp,
	onDoneActivated = noOp,
	ZIndex = 1,
	uiScale = 1.3,
}

ReportActionSelection.validateProps = t.interface({
	titleText = t.string,
	subtitleText = t.string,
	instructionText = t.string,
	muteText = t.string,
	blockText = t.string,
	doneText = t.string,
	showVoiceMuting = t.boolean,
	isVoiceMuted = t.optional(t.boolean),
	isBlocked = t.optional(t.boolean),
	onMuteCheckboxActivated = t.optional(t.callback),
	onBlockCheckboxActivated = t.optional(t.callback),
	onDoneActivated = t.callback,
	ZIndex = t.number,
})

function ReportActionSelection:init()
	self.onMuteCheckboxActivated = function(isFlipped)
		self:setState({
			isVoiceMuted = isFlipped,
		})

		self.props.onMuteCheckboxActivated(isFlipped)
	end

	self.onBlockCheckboxActivated = function(isFlipped)
		self:setState({
			isBlocked = isFlipped,
		})

		self.props.onBlockCheckboxActivated(isFlipped)
	end

	self.onDoneActivated = function()
		self.props.onDoneActivated(self.state.isBlocked, self.state.isVoiceMuted)
	end

	self:setState({
		isVoiceMuted = self.props.isVoiceMuted,
		isBlocked = self.props.isBlocked,
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
				Text = self.props.titleText,
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
				Text = self.props.subtitleText,
				TextColor3 = style.Theme.TextEmphasis.Color,
				TextTransparency = style.Theme.TextEmphasis.Transparency,
				TextSize = style.Font.CaptionHeader.RelativeSize * baseSize,
				Font = style.Font.CaptionHeader.Font,
				TextWrapped = true,
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = 2,
			}),

			actions = Roact.createElement("Frame", {
				Size = UDim2.fromOffset(ACTIONS_CONTAINER_WIDTH, 0),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = 3,
			}, {
				layout = Roact.createElement("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Top,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					Padding = UDim.new(0, ACTIONS_VERTICAL_PADDING),
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				instruction = Roact.createElement("TextLabel", {
					Size = UDim2.fromScale(1, 0),
					Text = self.props.instructionText,
					TextColor3 = style.Theme.TextDefault.Color,
					TextTransparency = style.Theme.TextDefault.Transparency,
					TextSize = style.Font.CaptionHeader.RelativeSize * baseSize,
					Font = style.Font.CaptionHeader.Font,
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
					AutomaticSize = Enum.AutomaticSize.Y,
					LayoutOrder = 1,
				}),

				muteCheckbox = self.props.showVoiceMuting and Roact.createElement(CheckboxRow, {
					height = ROW_HEIGHT,
					image = MICROPHONE_IMAGE,
					descriptionText = self.props.muteText,
					actionDisabled = self.state.isBlocked,
					checkboxSelected = self.state.isBlocked or self.state.isVoiceMuted,
					onCheckboxActivated = self.onMuteCheckboxActivated,
					LayoutOrder = 2,
				}),

				div = self.props.showVoiceMuting and Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					BackgroundColor3 = style.Theme.Divider.Color,
					BackgroundTransparency = style.Theme.Divider.Transparency,
					BorderSizePixel = 0,
					LayoutOrder = 3,
				}),

				blockCheckbox = Roact.createElement(CheckboxRow, {
					height = ROW_HEIGHT,
					image = BLOCK_IMAGE,
					descriptionText = self.props.blockText,
					checkboxSelected = self.state.isBlocked,
					onCheckboxActivated = self.onBlockCheckboxActivated,
					LayoutOrder = 4,
				}),

				doneContainer = Roact.createElement("Frame", {
					BackgroundColor3 = style.Theme.SystemPrimaryContent.Color,
					BackgroundTransparency = style.Theme.SystemPrimaryContent.Transparency,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, DONE_BUTTON_HEIGHT),
					LayoutOrder = 5,
				}, {
					uiCorner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, DONE_BUTTON_CORNER_RADIUS),
					}),

					doneButton = Roact.createElement(TextButton, {
						size = UDim2.fromScale(1, 1),
						text = self.props.doneText,
						onActivated = self.onDoneActivated,
					}),
				}),
			}),
		})
	end)
end

return ReportActionSelection
