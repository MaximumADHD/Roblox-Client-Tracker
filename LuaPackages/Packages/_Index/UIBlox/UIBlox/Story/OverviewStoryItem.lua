local Packages = script.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local UIBloxRoot = script.Parent.Parent
local t = require(UIBloxRoot.Parent.t)
local withStyle = require(UIBloxRoot.Style.withStyle)
local GenericTextLabel = require(UIBloxRoot.Core.Text.GenericTextLabel.GenericTextLabel)

local OverviewStoryItem = Roact.PureComponent:extend("OverviewStoryItem")

local validateProps = t.interface({
	--Size of the item
	size = t.optional(t.UDim2),

	--layout Order
	layoutOrder = t.optional(t.number),

	--The label of the component
	label = t.string,

	--The UIBlox public name of the component
	componentName = t.optional(t.string),
})

OverviewStoryItem.defaultProps = {
	size = UDim2.new(1, 0, 1, 0),
}

function OverviewStoryItem:render()
	assert(validateProps(self.props))
	return withStyle(function(style)
		assert(t.table(style), "Style provider is missing.")
		return Roact.createElement("Frame", {
			Size = self.props.size,
			BackgroundTransparency = 1,
			LayoutOrder = self.props.layoutOrder
		}, {
			List = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 10)
			}),
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 10),
				PaddingLeft = UDim.new(0, 20),
			}),
			Label = Roact.createElement(GenericTextLabel, {
				Size = UDim2.new(1, 0, 0, 30),
				Text = self.props.label,
				fontStyle = style.Font.Header2,
				colorStyle = style.Theme.TextEmphasis,
				TextXAlignment = Enum.TextXAlignment.Left,
				LayoutOrder = 1,
			}),
			ComponentName = Roact.createElement(GenericTextLabel, {
				Size = UDim2.new(1, 0, 0, 30),
				Text = self.props.componentName,
				fontStyle = style.Font.CaptionBody,
				colorStyle = style.Theme.TextMuted,
				TextXAlignment = Enum.TextXAlignment.Left,
				LayoutOrder = 2,
			}),
			ComponentFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 3,
			}, self.props[Roact.Children]),
		})
	end)
end

return OverviewStoryItem