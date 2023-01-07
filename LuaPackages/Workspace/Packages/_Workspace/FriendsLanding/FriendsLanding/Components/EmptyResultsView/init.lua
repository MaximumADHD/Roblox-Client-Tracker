--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local Images = dependencies.UIBlox.App.ImageSet.Images
local withLocalization = dependencies.withLocalization

local withStyle = dependencies.UIBlox.Style.withStyle

local UIBlox = dependencies.UIBlox
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local IMAGE_LABEL_HEIGHT = 96
local TOP_BAR_HEIGHT = 56
local FILTER_PILL_PADDING = 45

local EmptyResultsView = Roact.PureComponent:extend("EmptyResultsView")

EmptyResultsView.defaultProps = {
	layoutOrder = 0,
	pageLoadingTimeReport = nil,
}

function EmptyResultsView:didMount()
	if self.props.pageLoadingTimeReport then
		self.props.pageLoadingTimeReport()
	end
end

function EmptyResultsView:render()
	return withStyle(function(style)
		return withLocalization({
			noResultsText = "CommonUI.Messages.Response.NoResults",
		})(function(localizedStrings)
			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, -(TOP_BAR_HEIGHT + FILTER_PILL_PADDING)),
				LayoutOrder = self.props.layoutOrder,
				BackgroundTransparency = 1,
			}, {

				IndicatorInner = Roact.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.XY,
					Size = UDim2.new(0, 0, 0, 0),
					BackgroundTransparency = 1,
					Position = UDim2.new(0.5, 0, 0.4, 0),
					AnchorPoint = Vector2.new(0.5, 0.4),
				}, {
					UIList = Roact.createElement("UIListLayout", {
						VerticalAlignment = Enum.VerticalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						Padding = UDim.new(0, 0),
					}),
					Imagelabel = Roact.createElement(ImageSetLabel, {
						BackgroundTransparency = 1,
						Image = Images["icons/status/oof_xlarge"],
						ImageColor3 = style.Theme.TextMuted.Color,
						ImageTransparency = style.Theme.TextMuted.Transparency,
						LayoutOrder = 1,
						Size = UDim2.new(0, IMAGE_LABEL_HEIGHT, 0, IMAGE_LABEL_HEIGHT),
					}),
					Textlabel = Roact.createElement("TextLabel", {
						AutomaticSize = Enum.AutomaticSize.XY,
						BackgroundTransparency = 1,
						Font = Enum.Font.Gotham,
						LayoutOrder = 2,
						Size = UDim2.new(0, 0, 0, 0),
						Text = localizedStrings.noResultsText,
						TextColor3 = style.Theme.TextMuted.Color,
						TextSize = style.Font.Header2.RelativeSize * style.Font.BaseSize,
						TextTransparency = style.Theme.TextMuted.Transparency,
					}),
				}),
			})
		end)
	end)
end

return EmptyResultsView
