local TextService = game:GetService("TextService")

local Indicator = script.Parent
local App = Indicator.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local withStyle = require(UIBlox.Core.Style.withStyle)

local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)

local Images = require(UIBlox.App.ImageSet.Images)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

local divideTransparency = require(UIBlox.Utility.divideTransparency)

local BADGE_MIN_WIDTH = 24
local INNER_PADDING = 2
local TEXT_PADDING = 5
local SHADOW_SIZE_OFFSET = 6

local MAX_BADGE_VALUE = 99
local MAX_BADGE_TEXT = "99+"
local MAX_TEXT_LENGTH = 4

local ELLIPSES = "..."

local BACKGROUND_CIRCLE_IMAGE = Images["component_assets/circle_25"]
local INNER_CIRCLE_IMAGE = Images["component_assets/circle_21"]

local Badge = Roact.PureComponent:extend("Badge")

Badge.validateProps = t.strictInterface({
	position = t.optional(t.UDim2),
	anchorPoint = t.optional(t.Vector2),

	disabled = t.optional(t.boolean),
	hasShadow = t.optional(t.boolean),
	value = t.union(t.string, t.integer),
})

Badge.defaultProps = {
	position = UDim2.new(0, 0, 0, 0),
	anchorPoint = Vector2.new(0, 0),

	disabled = false,
	hasShadow = false,
}

function Badge:render()
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local font = stylePalette.Font

		local badgeText = tostring(self.props.value)
		if t.number(self.props.value) and self.props.value > MAX_BADGE_VALUE then
			badgeText = MAX_BADGE_TEXT
		elseif t.string(self.props.value) and utf8.len(utf8.nfcnormalize(self.props.value)) > MAX_TEXT_LENGTH then
			local byteOffset = utf8.offset(self.props.value, MAX_TEXT_LENGTH) - 1
			badgeText = string.sub(self.props.value, 1, byteOffset) .. ELLIPSES
		end

		local baseSize = stylePalette.Font.BaseSize
		local fontSize = font.CaptionBody.RelativeSize * baseSize

		local textBounds = TextService:GetTextSize(badgeText, fontSize, font.CaptionBody.Font, Vector2.new(10000, 10000)).X
		local badgeWidth = textBounds + (TEXT_PADDING * 2) + (INNER_PADDING * 2)
		if badgeWidth < BADGE_MIN_WIDTH then
			badgeWidth = BADGE_MIN_WIDTH
		end

		return Roact.createElement("Frame", {
			Position = self.props.position,
			AnchorPoint = self.props.anchorPoint,
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(badgeWidth, BADGE_MIN_WIDTH),
		}, {
			Shadow = self.props.hasShadow and Roact.createElement(ImageSetComponent.Label, {
				ZIndex = 1,
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Size = UDim2.new(1, SHADOW_SIZE_OFFSET * 2, 1, SHADOW_SIZE_OFFSET * 2),

				Image = Images["component_assets/dropshadow_25"],
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(18, 18, 19, 19),
			}),

			Background = Roact.createElement(ImageSetComponent.Label, {
				ZIndex = 2,
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),

				ImageColor3 = theme.BackgroundDefault.Color,
				ImageTransparency = divideTransparency(theme.BackgroundDefault.Transparency, self.props.disabled and 2 or 1),
				Image = BACKGROUND_CIRCLE_IMAGE,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(14, 14, 15, 15),
			}),

			Inner = Roact.createElement(ImageSetComponent.Label, {
				ZIndex = 3,
				BackgroundTransparency = 1,
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(1, -(INNER_PADDING * 2), 1, -(INNER_PADDING * 2)),

				ImageColor3 = theme.Badge.Color,
				ImageTransparency = divideTransparency(theme.Badge.Transparency, self.props.disabled and 2 or 1),
				Image = INNER_CIRCLE_IMAGE,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(12, 12, 13, 13),
			}, {
				TextLabel = Roact.createElement(GenericTextLabel, {
					fontStyle = font.CaptionBody,
					colorStyle = theme.BadgeContent,

					BackgroundTransparency = 1,
					Text = badgeText,
					Position = UDim2.fromScale(0.5, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Size = UDim2.fromScale(1, 1),
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
				}),
			}),
		})
	end)
end

return Badge