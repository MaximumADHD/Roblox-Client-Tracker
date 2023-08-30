local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local RoactFitComponents = require(Packages.RoactFitComponents)
local FitFrameVertical = RoactFitComponents.FitFrameVertical
local FitFrameHorizontal = RoactFitComponents.FitFrameHorizontal
local FitTextLabel = RoactFitComponents.FitTextLabel

local UIBlox = require(Packages.UIBlox)
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local withStyle = UIBlox.Core.Style.withStyle

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)

local LOC_KEY = "IAPExperience.InsufficientRobux.%s"

local ROBUX_ICON = Images["icons/common/robux"]

local InsufficientRobuxPrompt = Roact.Component:extend(script.Name)

local PRICE_ICON_PADDING = 10
local PRICE_PADDING_BETWEEN_LABEL = 30
local PRICE_CONTAINER_PADDING = 10

type Props = {
	anchorPoint: Vector2?,
	position: UDim2?,
	screenSize: Vector2,

	robuxBalance: number,

	closePrompt: (any) -> any,
	buyRobux: (any) -> any,
}

InsufficientRobuxPrompt.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	position = UDim2.new(0.5, 0, 0.5, 0),
}

function InsufficientRobuxPrompt:render()
	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			title = {
				key = LOC_KEY:format("Title.InsufficientRobux"),
			},
			dontHaveEnough = {
				key = LOC_KEY:format("Text.DontHaveEnough"),
			},
			currentBalance = {
				key = LOC_KEY:format("Text.CurrentBalance"),
			},
			cancel = {
				key = LOC_KEY:format("Action.Cancel"),
			},
			buyRobux = {
				key = LOC_KEY:format("Action.BuyRobux"),
			},
		},
		render = function(locMap: { [string]: string })
			return self:renderAlert(locMap)
		end,
	})
end

function InsufficientRobuxPrompt:renderAlert(locMap: { [string]: string })
	local props: Props = self.props

	return withStyle(function(styles)
		local font = styles.Font
		local theme = styles.Theme
		local textSize = font.BaseSize * font.Body.RelativeSize

		return Roact.createElement(InteractiveAlert, {
			screenSize = self.props.screenSize,

			title = locMap.title,
			bodyText = locMap.dontHaveEnough,
			buttonStackInfo = {
				buttons = {
					{
						props = {
							onActivated = self.props.closePrompt,
							text = locMap.cancel,
						},
						isDefaultChild = true,
					},
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = self.props.buyRobux,
							text = locMap.buyRobux,
						},
					},
				},
			},
			middleContent = function()
				return Roact.createElement(FitFrameVertical, {
					BackgroundTransparency = 1,
					margin = RoactFitComponents.Rect.quad(PRICE_CONTAINER_PADDING, 0, PRICE_CONTAINER_PADDING, 0),
					contentPadding = UDim.new(0, PRICE_PADDING_BETWEEN_LABEL),
					width = UDim.new(1, 0),

					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}, {
					CurrentBalanceLabel = Roact.createElement(FitTextLabel, {
						width = FitTextLabel.Width.FitToText,

						BackgroundTransparency = 1,
						Font = font.Body.Font,
						Text = locMap.currentBalance,
						TextColor3 = theme.TextDefault.Color,
						TextTransparency = theme.TextDefault.Transparency,
						TextSize = textSize,
						LayoutOrder = 0,
					}),
					RobuxAmount = Roact.createElement(FitFrameHorizontal, {
						height = UDim.new(1, 0),
						contentPadding = UDim.new(0, PRICE_ICON_PADDING),

						FillDirection = Enum.FillDirection.Horizontal,
						VerticalAlignment = Enum.VerticalAlignment.Center,

						BackgroundTransparency = 1,
						LayoutOrder = 1,
					}, {
						Icon = Roact.createElement(ImageSetLabel, {
							LayoutOrder = 1,
							BackgroundTransparency = 1,
							Size = UDim2.fromOffset(textSize, textSize),
							Image = ROBUX_ICON,
							ImageColor3 = theme.TextDefault.Color,
							ImageTransparency = theme.TextDefault.Transparency,
						}),
						Text = Roact.createElement(FitTextLabel, {
							LayoutOrder = 2,

							width = FitTextLabel.Width.FitToText,

							Text = self.props.robuxBalance,

							Font = font.Body.Font,
							TextColor3 = theme.TextDefault.Color,
							TextTransparency = theme.TextDefault.Transparency,
							TextSize = textSize,
							BackgroundTransparency = 1,
						}),
					}),
				})
			end,
		})
	end)
end

return InsufficientRobuxPrompt
