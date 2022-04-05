local Table = script.Parent
local App = Table.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local t = require(Packages.t)
local Roact = require(Packages.Roact)
local withStyle = require(Core.Style.withStyle)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)

local CellHeadDetail = Roact.PureComponent:extend("CellHeadDetail")

CellHeadDetail.validateProps = t.strictInterface({
	labelText = t.string,
	subLabelText = t.optional(t.string),
})

function CellHeadDetail:render()
	return withStyle(function(style)
		local labelText = self.props.labelText
		local subLabelText = self.props.subLabelText

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			AutomaticSize = Enum.AutomaticSize.XY,
		}, {
			ListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical
			}),
			Label = Roact.createElement(GenericTextLabel, {
				LayoutOrder = 1,
				AutomaticSize = Enum.AutomaticSize.XY,
				Text = labelText,
				colorStyle = style.Theme.TextEmphasis,
				fontStyle = style.Font.Header2,
				BackgroundTransparency = 1,
			}),
			SubLabel = subLabelText and Roact.createElement(GenericTextLabel, {
				LayoutOrder = 2,
				AutomaticSize = Enum.AutomaticSize.XY,
				Text = subLabelText,
				colorStyle = style.Theme.TextDefault,
				fontStyle = style.Font.CaptionBody,
				BackgroundTransparency = 1,
			}) or nil,
		})
	end)
end

return CellHeadDetail
