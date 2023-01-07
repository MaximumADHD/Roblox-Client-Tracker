local ContactImporter = script.Parent.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)

local t = dependencies.t
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local UIBloxIconSize = UIBlox.App.Constant.IconSize
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local withStyle = UIBlox.Style.withStyle

local MIDDLE_CONTENT_PADDING_TOP: number = 24
local MIDDLE_CONTENT_PADDING_BOTTOM: number = 36
local MIDDLE_CONTENT_SPACING: number = 12
local ICON_CONTAINER_SIZE: number = 120

local ContactsInformationModal = Roact.PureComponent:extend("ContactsInformationModal")

export type Props = {
	text: string,
	image: any,
	layoutOrder: number?,
}

ContactsInformationModal.validateProps = t.strictInterface({
	text = t.string,
	image = t.table,
	layoutOrder = t.optional(t.number),
})

function ContactsInformationModal:render()
	return withStyle(function(style)
		local theme: dependencies.UIBloxTheme = style.Theme
		local font: dependencies.UIBloxFontPalette = style.Font
		local props: Props = self.props
		return Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.fromScale(1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, MIDDLE_CONTENT_SPACING),
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}),
			UIPadding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, MIDDLE_CONTENT_PADDING_TOP),
				PaddingBottom = UDim.new(0, MIDDLE_CONTENT_PADDING_BOTTOM),
			}),
			IconContainer = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(ICON_CONTAINER_SIZE, ICON_CONTAINER_SIZE + MIDDLE_CONTENT_SPACING),
				LayoutOrder = 1,
			}, {
				Icon = Roact.createElement(ImageSetLabel, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					ImageColor3 = style.Theme.IconEmphasis.Color,
					ImageTransparency = style.Theme.IconEmphasis.Transparency,
					Image = props.image,
					Size = UDim2.fromOffset(UIBloxIconSize.XLarge, UIBloxIconSize.XLarge),
					Position = UDim2.fromScale(0.5, 0.5),
					LayoutOrder = 1,
				}),
			}),
			Description = Roact.createElement(StyledTextLabel, {
				text = props.text,
				fontStyle = font.CaptionBody,
				colorStyle = theme.TextEmphasis,
				lineHeight = 1.2,
				size = UDim2.fromScale(1, 0),
				automaticSize = Enum.AutomaticSize.Y,
				textTruncate = Enum.TextTruncate.AtEnd,
				textXAlignment = Enum.TextXAlignment.Center,
				textYAlignment = Enum.TextYAlignment.Top,
				layoutOrder = 2,
			}),
		})
	end)
end

return ContactsInformationModal
