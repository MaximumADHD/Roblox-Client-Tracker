--!nonstrict
local Table = script.Parent
local App = Table.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local t = require(Packages.t)
local validateColorInfo = require(Core.Style.Validator.validateColorInfo)
local validateFontInfo = require(Core.Style.Validator.validateFontInfo)
local validateTypographyInfo = require(Core.Style.Validator.validateTypographyInfo)

local Roact = require(Packages.Roact)
local withStyle = require(Core.Style.withStyle)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)

local CellHeadDetail = Roact.PureComponent:extend("CellHeadDetail")

CellHeadDetail.validateProps = t.strictInterface({
	labelText = t.string,
	labelTextColor = t.optional(validateColorInfo),
	labelTextFont = t.optional(t.union(validateFontInfo, validateTypographyInfo)),

	subLabelText = t.optional(t.string),
	subLabelTextColor = t.optional(validateColorInfo),
	subLabelTextFont = t.optional(t.union(validateFontInfo, validateTypographyInfo)),
	openTypeFeatures = t.optional(t.string),
})

function CellHeadDetail:render()
	return withStyle(function(style)
		local labelText = self.props.labelText
		local labelTextColor = self.props.labelTextColor or style.Theme.TextEmphasis
		local labelTextFont = self.props.labelTextFont or style.Font.Header2

		local subLabelText = self.props.subLabelText
		local subLabelTextColor = self.props.subLabelTextColor or style.Theme.TextDefault
		local subLabelTextFont = self.props.subLabelTextFont or style.Font.CaptionBody

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			AutomaticSize = Enum.AutomaticSize.XY,
		}, {
			ListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
			}),
			Label = Roact.createElement(GenericTextLabel, {
				LayoutOrder = 1,
				AutomaticSize = Enum.AutomaticSize.XY,
				Text = labelText,
				colorStyle = labelTextColor,
				fontStyle = labelTextFont,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			SubLabel = subLabelText and Roact.createElement(GenericTextLabel, {
				LayoutOrder = 2,
				AutomaticSize = Enum.AutomaticSize.XY,
				Text = subLabelText,
				colorStyle = subLabelTextColor,
				fontStyle = subLabelTextFont,
				openTypeFeatures = self.props.openTypeFeatures,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
			}) or nil,
		})
	end)
end

return CellHeadDetail
