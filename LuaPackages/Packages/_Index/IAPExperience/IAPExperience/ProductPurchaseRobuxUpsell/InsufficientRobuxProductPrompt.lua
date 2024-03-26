local ProductPurchaseRobuxUpsell = script.Parent
local IAPExperienceRoot = ProductPurchaseRobuxUpsell.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local RoactFitComponents = require(Packages.RoactFitComponents)
local FitFrameVertical = RoactFitComponents.FitFrameVertical

local UIBlox = require(Packages.UIBlox)
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local withStyle = UIBlox.Core.Style.withStyle

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)

local ProductDetails = require(ProductPurchaseRobuxUpsell.ProductDetails)

local LOC_KEY = "IAPExperience.InsufficientRobux.%s"

local DELAYED_INPUT_ANIM_SEC = 3

local RobuxUpsellPrompt = Roact.Component:extend(script.Name)

type Props = {
	anchorPoint: Vector2?,
	position: UDim2?,
	screenSize: Vector2,

	mode: any?,
	itemIcon: any?,
	itemName: string,
	itemRobuxCost: number,
	balanceAmount: number,

	acceptControllerIcon: { [string]: any? },
	cancelControllerIcon: { [string]: any? },

	robuxStoreActivated: () -> any?,
	cancelPurchaseActivated: () -> any?,
}

RobuxUpsellPrompt.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	position = UDim2.new(0.5, 0, 0.5, 0),
}

function RobuxUpsellPrompt:init()
	self.contentRef = Roact.createRef()
	self.state = {
		contentSize = Vector2.new(0, 0),
		footerSize = Vector2.new(0, 0),
	}

	self.changeContentSize = function(rbx)
		if self.state.contentSize ~= rbx.AbsoluteSize then
			self:setState({
				contentSize = rbx.AbsoluteSize,
			})
		end
	end
end

function RobuxUpsellPrompt:render()
	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			InsufficientRobuxTitle = {
				key = LOC_KEY:format("Title.InsufficientRobux"),
			},
			YouNeed = {
				key = LOC_KEY:format("Text.YouNeed"),
			},
			RobuxStore = {
				key = LOC_KEY:format("Action.RobuxStore"),
			},
			ButtonCancel = {
				key = LOC_KEY:format("Action.Cancel"),
			},
		},
		render = function(locMap: { [string]: string })
			return self:renderAlert(locMap)
		end,
	})
end

function RobuxUpsellPrompt:renderAlert(locMap: { [string]: string })
	local props: Props = self.props

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font

		local textEmphasisColor = Color3.new(
			math.round(theme.TextEmphasis.Color.R * 255),
			math.round(theme.TextEmphasis.Color.G * 255),
			math.round(theme.TextEmphasis.Color.B * 255)
		)

		local additionalRobux = props.itemRobuxCost - props.balanceAmount
		local robuxText = string.format(
			'<font color="rgb(%s)">%s%s</font>',
			tostring(textEmphasisColor),
			utf8.char(0xE002),
			tostring(additionalRobux)
		)
		local youNeedText = locMap.YouNeed:gsub("{robux}", robuxText)

		return Roact.createElement(InteractiveAlert, {
			screenSize = props.screenSize,
			position = props.position,
			anchorPoint = props.anchorPoint,
			title = locMap.InsufficientRobuxTitle,
			middleContent = function()
				return Roact.createElement(FitFrameVertical, {
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					contentPadding = UDim.new(0, 15),

					[Roact.Ref] = self.contentRef,
					[Roact.Change.AbsoluteSize] = self.changeContentSize,
				}, {
					ProductDetails = Roact.createElement(ProductDetails, {
						layoutOrder = 1,
						model = props.model,
						itemIcon = props.itemIcon,
						itemName = props.itemName,
						itemRobuxCost = props.itemRobuxCost,
					}),
					Underline = Roact.createElement("Frame", {
						LayoutOrder = 2,
						BorderSizePixel = 0,
						BackgroundColor3 = theme.Divider.Color,
						BackgroundTransparency = theme.Divider.Transparency,
						Size = UDim2.new(1, 0, 0, 1),
					}),
					AdditionalBuyText = Roact.createElement("TextLabel", {
						LayoutOrder = 3,
						BackgroundTransparency = 1,
						Size = UDim2.new(0, self.state.contentSize.X, 0, 0),

						RichText = true,
						AutomaticSize = Enum.AutomaticSize.Y,
						TextWrapped = true,

						Font = fonts.Body.Font,
						Text = youNeedText,
						TextSize = fonts.BaseSize * fonts.Body.RelativeSize,
						TextColor3 = theme.TextDefault.Color,
						TextTransparency = theme.TextDefault.Transparency,
					}),
				})
			end,
			buttonStackInfo = {
				buttons = {
					{
						props = {
							onActivated = props.cancelPurchaseActivated,
							text = locMap.ButtonCancel,
							inputIcon = props.cancelControllerIcon,
						},
					},
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = props.robuxStoreActivated,
							text = locMap.RobuxStore,
							inputIcon = props.acceptControllerIcon,
						},
					},
				},
			},
		})
	end)
end

return RobuxUpsellPrompt
