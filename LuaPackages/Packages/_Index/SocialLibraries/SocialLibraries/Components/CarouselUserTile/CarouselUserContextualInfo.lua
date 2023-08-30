--! DEPRECATED please use the version found in LuaApps SocialCommon
local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama

local UIBlox = dependencies.UIBlox
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local Style = UIBlox.Style
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local Images = UIBlox.App.ImageSet.Images
local UIBloxIconSize = UIBlox.App.Constant.IconSize

local getTextHeight = require(script.Parent.getTextHeight)
local StyleTypes = require(script.Parent.StyleTypes)
local Constants = require(script.Parent.Constants)

export type Icon = {
	path: string,
	color: Color3?,
	size: UDim2?,
	transparency: number?,
}

export type Label = {
	text: string?,
	font: StyleTypes.FontType?,
	colorStyle: StyleTypes.ThemeType?,
}

export type Props = {
	icon: Icon?,
	label: Label,
	lineWidth: number?,
	maxNumberOfLines: number?,
	layoutOrder: number?,
}

local PADDING: number = 2

local defaultProps = {
	maxNumberOfLines = Constants.LINES_MAX,
	lineWidth = Constants.TILE_SIZE,
}

local CarouselUserContextualInfo = function(passedProps: Props)
	local props: Props = llama.Dictionary.join(defaultProps, passedProps)
	local icon = props.icon
	local label = props.label

	return Style.withStyle(function(style)
		local theme: StyleTypes.Theme = style.Theme
		local font: StyleTypes.Font = style.Font
		local labelFont = label.font or font.CaptionBody
		local text = label.text

		return Roact.createElement("Frame", {
			LayoutOrder = props.layoutOrder,
			BackgroundTransparency = 1,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, PADDING),
			}),
			IconFrame = if (icon and icon.path)
				then Roact.createElement("Frame", {
					Size = UDim2.fromOffset(UIBloxIconSize.Small, UIBloxIconSize.Small),
					BackgroundTransparency = 1,
				}, {
					layout = Roact.createElement("UIListLayout", {
						VerticalAlignment = Enum.VerticalAlignment.Top,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
					}),
					ImageLabel = Roact.createElement(ImageSetLabel, {
						LayoutOrder = 1,
						BackgroundTransparency = 1,
						Image = Images[icon.path],
						ImageColor3 = icon.color or theme.IconDefault.Color,
						ImageTransparency = icon.transparency or theme.IconDefault.Transparency,
						Size = icon.size or UDim2.fromOffset(UIBloxIconSize.Small, UIBloxIconSize.Small),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.fromScale(0.5, 0.5),
					}),
				}) else nil,
			ContextualText = if text
				then Roact.createElement(StyledTextLabel, {
					layoutOrder = 2,
					size = UDim2.fromOffset(
						icon and props.lineWidth - (UIBloxIconSize.Small + PADDING) or props.lineWidth,
						getTextHeight(text, labelFont.Font, font.BaseSize * labelFont.RelativeSize)
							* props.maxNumberOfLines
					),
					lineHeight = 1,
					text = text,
					textXAlignment = Enum.TextXAlignment.Left,
					textYAlignment = Enum.TextYAlignment.Top,
					textTruncate = Enum.TextTruncate.AtEnd,
					fontStyle = labelFont,
					colorStyle = label.colorStyle or theme.SecondaryContent,
					fluidSizing = false,
					richText = false,
				}) else nil,
		})
	end)
end

return CarouselUserContextualInfo
