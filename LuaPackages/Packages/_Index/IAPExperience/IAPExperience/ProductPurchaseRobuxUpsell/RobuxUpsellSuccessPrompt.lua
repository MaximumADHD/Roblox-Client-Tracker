local ProductPurchaseRoot = script.Parent
local IAPExperienceRoot = ProductPurchaseRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local RoactFitComponents = require(Packages.RoactFitComponents)
local FitFrameVertical = RoactFitComponents.FitFrameVertical
local FitTextLabel = RoactFitComponents.FitTextLabel

local UIBlox = require(Packages.UIBlox)
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local UIBloxIconSize = UIBlox.App.Constant.IconSize
local withStyle = UIBlox.Core.Style.withStyle

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)

local LOC_KEY = "IAPExperience.PurchaseSuccess.%s"

local MISSING_ICON = Images["icons/status/imageunavailable"]

local PurchaseSuccessPrompt = Roact.Component:extend(script.Name)

type Props = {
	anchorPoint: Vector2?,
	position: UDim2?,
	screenSize: Vector2,

	itemIcon: any?,
	itemName: string,
	balance: number,

	confirmControllerIcon: { [string]: any? },
	cancelControllerIcon: { [string]: any? },

	equipActivated: () -> any?,
	doneActivated: () -> any?,
}

PurchaseSuccessPrompt.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	position = UDim2.new(0.5, 0, 0.5, 0),
}

function PurchaseSuccessPrompt:init()
	self.contentRef = Roact.createRef()
	self.state = {
		contentSize = Vector2.new(0, 0),
	}

	self.changeContentSize = function(rbx)
		if self.state.contentSize ~= rbx.AbsoluteSize then
			self:setState({
				contentSize = rbx.AbsoluteSize,
			})
		end
	end
end

function PurchaseSuccessPrompt:render()
	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			PurchaseSucceededTitle = {
				key = LOC_KEY:format("Title.PurchaseSucceeded"),
			},
			YouOwnText = {
				key = LOC_KEY:format("Text.YouOwn"),
				params = {
					name = self.props.itemName,
				},
			},
			BalanceNow = {
				key = LOC_KEY:format("Text.BalanceNow"),
			},
			BackToGameButtonText = {
				key = LOC_KEY:format("Action.BackToGame"),
			},
			EquipText = {
				key = LOC_KEY:format("Action.Equip"),
			},
			BackToShopText = {
				key = LOC_KEY:format("Action.BackToShop"),
			},
		},
		render = function(locMap: { [string]: string })
			return self:renderAlert(locMap)
		end,
	})
end

function PurchaseSuccessPrompt:renderAlert(locMap: { [string]: string })
	local props: Props = self.props

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font

		local message = locMap.YouOwnText
			.. " "
			.. locMap.BalanceNow:gsub("{robux}", utf8.char(0xE002) .. tostring(props.balance))

		local buttonStackInfo
		if self.props.equipActivated then
			buttonStackInfo = {
				buttons = {
					{
						props = {
							onActivated = props.doneActivated,
							text = locMap.BackToShopText,
							inputIcon = props.cancelControllerIcon,
						},
					},
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = props.equipActivated,
							text = locMap.EquipText,
							inputIcon = props.confirmControllerIcon,
						},
					},
				},
			}
		else
			buttonStackInfo = {
				buttons = {
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = props.doneActivated,
							text = locMap.BackToGameButtonText,
							inputIcon = props.confirmControllerIcon,
						},
					},
				},
			}
		end

		return Roact.createElement(InteractiveAlert, {
			screenSize = props.screenSize,
			position = props.position,
			anchorPoint = props.anchorPoint,
			title = locMap.PurchaseSucceededTitle,
			middleContent = function()
				return Roact.createElement(FitFrameVertical, {
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					contentPadding = UDim.new(0, 24),

					[Roact.Ref] = self.contentRef,
					[Roact.Change.AbsoluteSize] = self.changeContentSize,
				}, {
					ItemIconFrame = Roact.createElement(FitFrameVertical, {
						LayoutOrder = 0,
						BackgroundTransparency = 1,
						width = UDim.new(1, 0),
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}, {
						ItemIcon = if props.itemIcon
							then Roact.createElement(ImageSetLabel, {
								BackgroundTransparency = 1,
								Position = UDim2.new(0, 5, 0, 5),
								Size = UDim2.new(0, 85, 0, 85),
								ScaleType = Enum.ScaleType.Stretch,
								Image = props.itemIcon,
								ImageTransparency = 0,
							})
							else Roact.createElement(ImageSetLabel, {
								BackgroundTransparency = 1,
								Position = UDim2.new(0, 5, 0, 5),
								Size = UDim2.new(0, UIBloxIconSize.Large, 0, UIBloxIconSize.Large),
								ScaleType = Enum.ScaleType.Stretch,
								Image = MISSING_ICON,
								ImageColor3 = theme.UIDefault.Color,
								ImageTransparency = theme.UIDefault.Transparency,
							}),
					}),
					YouOwnText = Roact.createElement(FitTextLabel, {
						LayoutOrder = 1,
						BackgroundTransparency = 1,

						TextWrapped = true,
						width = FitTextLabel.Width.FitToText,
						maximumWidth = self.state.contentSize.X,

						Font = fonts.Body.Font,
						Text = message,
						TextSize = fonts.BaseSize * fonts.Body.RelativeSize,
						TextColor3 = theme.TextDefault.Color,
					}),
				})
			end,
			buttonStackInfo = buttonStackInfo,
		})
	end)
end

return PurchaseSuccessPrompt
