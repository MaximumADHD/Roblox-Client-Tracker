--!nonstrict
local AlertRoot = script.Parent
local DialogRoot = AlertRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Alert = require(AlertRoot.Alert)
local AlertType = require(AlertRoot.Enum.AlertType)

local FitFrame = require(Packages.FitFrame)
local FitFrameOnAxis = FitFrame.FitFrameOnAxis

local MIN_WIDTH = 272
local MAX_WIDTH = 400
local MARGIN = 24
local TITLE_ICON_SIZE = 48

local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local GetTextHeight = require(UIBlox.Core.Text.GetTextHeight)
local withStyle = require(UIBlox.Core.Style.withStyle)

local InformativeAlert = Roact.PureComponent:extend("InformativeAlert")

InformativeAlert.validateProps = t.strictInterface({
	-- Anchor point of the modal
	anchorPoint = t.optional(t.Vector2),
	-- Position of `Alert` in the whole page
	position = t.optional(t.UDim2),
	-- Size of the container housing the `Alert`. This is necessary to dynamically scale the alert's width
	screenSize = t.Vector2,
	-- A function that is called when the `Alert` is mounted
	onMounted = t.optional(t.callback),
	-- Title text of the `Alert`. Title can be a maximum of 2 lines long before it is cut off
	title = t.string,
	titleIcon = t.optional(t.union(t.table, t.string)),
	-- Body message text of the `Alert`
	bodyText = t.optional(t.string),
	-- Enable rich text formatting for body text
	richText = t.optional(t.boolean),
})

function InformativeAlert:render()
	return withStyle(function(stylePalette)
		local font = stylePalette.Font
		local theme = stylePalette.Theme

		local textFont = font.Body.Font
		local fontSize = font.BaseSize * font.Body.RelativeSize

		local totalWidth = math.clamp(self.props.screenSize.X - 2 * MARGIN, MIN_WIDTH, MAX_WIDTH)
		local innerWidth = totalWidth - 2 * MARGIN

		local fullTextHeight = self.props.bodyText
				and GetTextHeight(self.props.bodyText, textFont, fontSize, innerWidth)
			or 0

		return Roact.createElement(Alert, {
			anchorPoint = self.props.anchorPoint,
			alertType = AlertType.Informative,
			margin = {
				top = 0,
				bottom = MARGIN,
				left = MARGIN,
				right = MARGIN,
			},
			maxWidth = MAX_WIDTH,
			minWidth = MIN_WIDTH,
			onMounted = self.props.onMounted,
			position = self.props.position,
			screenSize = self.props.screenSize,
			title = self.props.title,
			titleContent = self.props.titleIcon
					and function()
						return Roact.createElement(FitFrameOnAxis, {
							BackgroundTransparency = 1,
							contentPadding = UDim.new(0, 8),
							HorizontalAlignment = Enum.HorizontalAlignment.Center,
							margin = {
								top = 12, -- Title already has 12 padding on the top
								bottom = 0,
								left = 0,
								right = 0,
							},
							minimumSize = UDim2.new(1, 0, 0, 0),
						}, {
							Icon = Roact.createElement(ImageSetComponent.Label, {
								BackgroundTransparency = 1,
								Image = self.props.titleIcon,
								ImageColor3 = theme.IconEmphasis.Color,
								ImageTransparency = theme.IconEmphasis.Transparency,
								Size = UDim2.new(0, TITLE_ICON_SIZE, 0, TITLE_ICON_SIZE),
							}),
						})
					end
				or nil,
			middleContent = function()
				return Roact.createElement(GenericTextLabel, {
					BackgroundTransparency = 1,
					colorStyle = theme.TextDefault,
					fontStyle = font.Body,
					LayoutOrder = 1,
					Text = self.props.bodyText,
					TextSize = fontSize,
					TextXAlignment = Enum.TextXAlignment.Center,
					Size = UDim2.new(1, 0, 0, fullTextHeight),
					RichText = self.props.richText,
				})
			end,
		})
	end)
end

return InformativeAlert
