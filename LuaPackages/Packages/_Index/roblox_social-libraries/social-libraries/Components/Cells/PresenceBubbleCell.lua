local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact
local Cryo = dependencies.Cryo
local Text = dependencies.Text
local UIBlox = dependencies.UIBlox

local ShimmerPanel = UIBlox.App.Loading.ShimmerPanel
local BaseCell = require(script.Parent.BaseCell)
local AvatarCircle = require(script:FindFirstAncestor("Components").AvatarCircle)
local PresenceBubbleCell = Roact.PureComponent:extend("PresenceBubbleCell")

local SECONDARY_TITLE_PADDING = 4

PresenceBubbleCell.defaultProps = {
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 0,
	onPressedBackgroundColor3 = Color3.new(0, 0.2, 0.3),
	onPressedBackgroundTransparency = 1,

	avatarCircleCellWidth = 60,
	avatarCircleSize = 36,
	avatarCircleBackgroundColor3 = Color3.new(0.4, 0.4, 0.4),
	avatarCircleDividerColor3 = Color3.new(0.2, 0.2, 0.2),
	avatarCircleDividerTransparency = 0,
	avatarCirclePresenceImage = nil,

	subTitleText = nil,
	subTitleTextFont = Enum.Font.Gotham,
	subTitleTextTransparency = 0,
	subTitleTextColor3 = Color3.new(0.1, 0.1, 0.1),
	subTitleTextSize = 15,

	titleText = "titleText",
	titleFont = Enum.Font.Gotham,
	titleTextTransparency = 0,
	titleTextColor3 = Color3.new(0,0,0),
	titleTextSize = 20,

	secondaryTitleText = nil,
	secondaryTitleFont = Enum.Font.Gotham,
	secondaryTitleTextTransparency = 0,
	secondaryTitleTextColor3 = Color3.new(0.2, 0.2, 0.2),
	secondaryTitleTextSize = 16,

	showDivider = true,
	dividerTransparency = 0,
	dividerColor3 = Color3.fromRGB(227, 227, 227),

	thumbnails = {},
	childWidth = 0,
	onActivated = nil,
	onCircleActivated = nil,

	Size = UDim2.new(1, 0, 1, 0),
	isLoading = false,
}

function PresenceBubbleCell:init()
	self.widthBinding, self.widthBindingUpdate = Roact.createBinding(0)
end

function PresenceBubbleCell:render()
	local props = self.props

	local titleTextWidth = Text.GetTextWidth(props.titleText, props.titleFont, props.titleTextSize)

	local rightAlignChildren = {
		layout = Roact.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
		})
	}

	rightAlignChildren = Cryo.Dictionary.join(rightAlignChildren, props[Roact.Children] or {})

	return Roact.createElement(BaseCell, {
		Size = self.props.Size,
		BackgroundTransparency = props.BackgroundTransparency,
		BackgroundColor3 = props.BackgroundColor3,
		dividerColor3 = self.props.dividerColor3,
		dividerTransparency = self.props.dividerTransparency,
		onPressedBackgroundColor3 = props.onPressedBackgroundColor3,
		onPressedBackgroundTransparency = props.onPressedBackgroundTransparency,
		BorderSizePixel = 0,
		AutoButtonColor = false,
		LayoutOrder = props.LayoutOrder,
		onActivated = props.onActivated,
		showDivider = props.showDivider,
	}, {
		leftAlign = Roact.createElement("Frame", {
			Size = UDim2.new(1, -props.childWidth, 1, 0),
			BackgroundTransparency = 1,
		}, {
			layout = Roact.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			circleHolder = Roact.createElement("Frame", {
				Size = UDim2.new(0, props.avatarCircleCellWidth, 1, 0),
				BackgroundTransparency = 1,
				LayoutOrder = 0,
			}, {
				layout = Roact.createElement("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
				}),

				circleSizeContainer = not props.isLoading and Roact.createElement("Frame", {
					Size = UDim2.new(0, props.avatarCircleSize, 0, props.avatarCircleSize),
					BackgroundTransparency = 1,
				}, {
					avatarCircle = Roact.createElement(AvatarCircle, {
						circleColor3 = props.BackgroundColor3,
						circleTransparency = props.BackgroundTransparency,
						circleInteriorBackgroundColor3 = props.avatarCircleBackgroundColor3,
						circleDividerColor3 = props.avatarCircleDividerColor3,
						circleDividerTransparency = props.avatarCircleDividerTransparency,

						thumbnails = props.thumbnails,
						presenceImage = props.avatarCirclePresenceImage,

						onActivated = props.onCircleActivated or props.onActivated,
					})
				}) or Roact.createElement(ShimmerPanel, {
					Size = UDim2.new(0, props.avatarCircleSize, 0, props.avatarCircleSize),
					cornerRadius = UDim.new(1, 0),
				})
			}),

			conversationInfo = Roact.createElement("Frame", {
				Size = UDim2.new(1, -props.avatarCircleCellWidth, 1, 0),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, {
				layout = Roact.createElement("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,

					Padding = UDim.new(0, 2),
				}),

				titleContainer = not props.isLoading and Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, props.titleTextSize),
					LayoutOrder = 1,

					[Roact.Change.AbsoluteSize] = function(rbx)
						self.widthBindingUpdate(rbx.AbsoluteSize.X)
					end,
				}, {
					layout = Roact.createElement("UIListLayout", {
						VerticalAlignment = Enum.VerticalAlignment.Bottom,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						FillDirection = Enum.FillDirection.Horizontal,
						SortOrder = Enum.SortOrder.LayoutOrder,

						Padding = UDim.new(0, SECONDARY_TITLE_PADDING),
					}),

					title = Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						Size = self.widthBinding:map(function(width)
							return UDim2.new(0, math.min(titleTextWidth, width), 0, props.titleTextSize)
						end),

						TextSize = props.titleTextSize,
						TextColor3 = props.titleTextColor3,
						TextTransparency = props.titleTextTransparency,
						Font = props.titleFont,
						Text = props.titleText or "",
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						LayoutOrder = 1,
					}),

					secondaryTitle = Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						Size = self.widthBinding:map(function(width)
							return UDim2.new(0, math.max(width - titleTextWidth - SECONDARY_TITLE_PADDING, 0), 0, props.secondaryTitleTextSize)
						end),

						TextSize = props.secondaryTitleTextSize,
						TextColor3 = props.secondaryTitleTextColor3,
						TextTransparency = props.secondaryTitleTextTransparency,
						Font = props.secondaryTitleFont,
						Text = props.secondaryTitleText or "",
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						LayoutOrder = 2,
					}),
				}) or Roact.createElement(ShimmerPanel, {
					Size = UDim2.new(1, 0, 0, props.titleTextSize),
					cornerRadius = UDim.new(0, 4),
					LayoutOrder = 1,
				}),

				userPresenceLabel = not props.isLoading and props.subTitleText and Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					TextSize = props.subTitleTextSize,
					TextColor3 = props.subTitleTextColor3,
					TextTransparency = props.subTitleTextTransparency,
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = props.subTitleText,
					TextTruncate = Enum.TextTruncate.AtEnd,
					Font = props.subTitleTextFont,
					Size = UDim2.new(1, 0, 0, props.subTitleTextSize),
					LayoutOrder = 2,
				}) or props.subTitleText and Roact.createElement(ShimmerPanel, {
					Size = UDim2.new(0.6, 0, 0, props.subTitleTextSize),
					cornerRadius = UDim.new(0, 4),
					LayoutOrder = 2,
				}),
			})
		}),

		rightAlign = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, Cryo.Dictionary.join({
			layout = Roact.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
		}, rightAlignChildren)),
	})
end

return PresenceBubbleCell
