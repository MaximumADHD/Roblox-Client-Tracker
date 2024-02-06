local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local Packages = IAPExperienceRoot.Parent

local LocalizationService = game:GetService("LocalizationService")

local Roact = require(Packages.Roact)

local UIBlox = require(Packages.UIBlox)
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local ShimmerPanel = UIBlox.App.Loading.ShimmerPanel
local CursorKind = UIBlox.App.SelectionImage.CursorKind
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local withStyle = UIBlox.Core.Style.withStyle
local DarkTheme = UIBlox.App.Style.Themes.DarkTheme
local ImageSetButton = UIBlox.Core.ImageSet.ImageSetButton
local useCursor = UIBlox.App.SelectionCursor.useCursor

local RoactGamepad = require(Packages.RoactGamepad)

local RoactFitComponents = require(Packages.RoactFitComponents)
local FitFrameHorizontal = RoactFitComponents.FitFrameHorizontal
local FitTextLabel = RoactFitComponents.FitTextLabel

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)
local formatNumber = require(IAPExperienceRoot.Utility.formatNumber)

local getEnableRobuxPageNewSelectionCursor = require(IAPExperienceRoot.Flags.getEnableRobuxPageNewSelectionCursor)

local RobuxPackage = Roact.Component:extend(script.Name)

local LOC_KEY = "IAPExperience.BuyRobux.%s"

local CORNER_SIZE = 8
local PRICE_ICON_PADDING = 0

local ROBUX_ICON = Images["icons/common/robux"]

type Props = {
	layoutOrder: number,
	selected: boolean,

	scale: number,

	packageId: string?,
	robuxAmount: string?,
	currencyAmountStr: string?,
	robuxMoreAmount: number?,

	robuxImage: table?,

	onActivated: (string) -> any,
	onHover: (string, boolean) -> any,
	onSelect: (React.Ref<any>) -> any,

	forwardRef: React.Ref<any>,

	nextSelectionLeft: React.Ref<any>?,
	nextSelectionRight: React.Ref<any>?,
}

local function renderWithProviders(props: Props, locMap, stylePalette, getSelectionCursor, cursor)
	if props.robuxAmount == nil then
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 404 * props.scale, 0, 448 * props.scale),
		}, {
			ShimmerPanel = Roact.createElement(ShimmerPanel, {
				Size = UDim2.new(1, 0, 1, 0),
			}),
		})
	else
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font

		local balanceTextHeight = 64 * props.scale

		local tileBackground = if theme == DarkTheme then Color3.fromRGB(25, 27, 29) else Color3.fromRGB(242, 244, 245)
		if props.selected then
			tileBackground = if theme == DarkTheme then Color3.fromRGB(57, 59, 61) else Color3.fromRGB(255, 255, 255)
		end

		return Roact.createElement(RoactGamepad.Focusable[ImageSetButton], {
			LayoutOrder = props.layoutOrder,
			BackgroundColor3 = theme.UIEmphasis.Color,
			BackgroundTransparency = theme.UIEmphasis.Transparency,
			Size = UDim2.new(0, 404 * props.scale, 0, 448 * props.scale),

			Image = nil,

			SelectionImageObject = if getEnableRobuxPageNewSelectionCursor()
				then cursor
				else getSelectionCursor(CursorKind.RoundedRect),

			[Roact.Ref] = props.forwardRef,

			NextSelectionUp = nil,
			NextSelectionDown = nil,
			NextSelectionLeft = props.nextSelectionLeft,
			NextSelectionRight = props.nextSelectionRight,
			inputBindings = {
				Activated = if props.onActivated ~= nil
					then RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, function()
						props.onActivated(props.packageId)
					end)
					else nil,
			},
			[Roact.Event.Activated] = function()
				props.onActivated(props.packageId)
			end,
			[Roact.Event.MouseMoved] = function()
				props.onHover(props.forwardRef, true)
			end,
			[Roact.Event.MouseEnter] = function()
				props.onHover(props.forwardRef, true)
			end,
			[Roact.Event.MouseLeave] = function()
				props.onHover(props.forwardRef, false)
			end,
			[Roact.Event.SelectionGained] = function()
				props.onSelect(props.forwardRef)
			end,
		}, {
			Corner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, CORNER_SIZE),
			}),
			Outline = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				BackgroundColor3 = tileBackground,
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				Size = UDim2.new(1, -3, 1, -3),
			}, {
				Corner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, CORNER_SIZE),
				}),
				MiddleContent = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 1, 0),
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingTop = UDim.new(0, 24 * props.scale),
					}),
					Roact.createElement("UIListLayout", {
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						FillDirection = Enum.FillDirection.Vertical,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 17.5 * props.scale),
					}),
					RobuxImageFrame = Roact.createElement("Frame", {
						LayoutOrder = 1,
						Size = UDim2.fromOffset(192 * props.scale, 192 * props.scale),
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundTransparency = 1,
					}, {
						RobuxImage = Roact.createElement(ImageSetLabel, {
							Size = if props.selected
								then UDim2.fromOffset(192 * props.scale * 1.6, 192 * props.scale * 1.6)
								else UDim2.fromOffset(192 * props.scale, 192 * props.scale),
							Position = 
							if props.selected
								then UDim2.new(0.5, 0, 0.3, 0)
								else UDim2.new(0.5, 0, 0.5, 0),
							AnchorPoint = Vector2.new(0.5, 0.5),

							BackgroundTransparency = 1,
							Image = props.robuxImage,
							ImageTransparency = 0,
						}),
					}),
					RobuxAmount = Roact.createElement(FitFrameHorizontal, {
						LayoutOrder = 2,
						AnchorPoint = Vector2.new(0.5, 0.5),

						height = UDim.new(0, balanceTextHeight),
						contentPadding = UDim.new(0, PRICE_ICON_PADDING),

						FillDirection = Enum.FillDirection.Horizontal,
						VerticalAlignment = Enum.VerticalAlignment.Center,

						BackgroundTransparency = 1,
					}, {
						Icon = Roact.createElement(ImageSetLabel, {
							LayoutOrder = 1,
							BackgroundTransparency = 1,
							Size = UDim2.new(0, balanceTextHeight, 0, balanceTextHeight),
							Image = ROBUX_ICON,
							ImageColor3 = theme.TextEmphasis.Color,
							ImageTransparency = theme.TextEmphasis.Transparency,
						}),
						RobuxAmountText = Roact.createElement(FitTextLabel, {
							LayoutOrder = 2,

							width = FitTextLabel.Width.FitToText,

							Text = formatNumber(LocalizationService.RobloxLocaleId, props.robuxAmount),

							Font = fonts.Title.Font,
							TextColor3 = theme.TextEmphasis.Color,
							TextTransparency = theme.TextEmphasis.Transparency,
							TextSize = balanceTextHeight,
							BackgroundTransparency = 1,
						}),
					}),
					CurrencyAmmountText = Roact.createElement(FitTextLabel, {
						LayoutOrder = 3,
						AnchorPoint = Vector2.new(0.5, 0.5),

						width = FitTextLabel.Width.FitToText,

						Text = props.currencyAmountStr,

						Font = fonts.Header1.Font,
						TextColor3 = theme.TextEmphasis.Color,
						TextTransparency = theme.TextEmphasis.Transparency,
						TextSize = 32 * props.scale,
						BackgroundTransparency = 1,
					}),
					MoreText = props.robuxMoreAmount and Roact.createElement(FitTextLabel, {
						LayoutOrder = 4,
						AnchorPoint = Vector2.new(0.5, 0.5),

						width = FitTextLabel.Width.FitToText,

						Text = locMap.moreRobux,

						Font = fonts.Header2.Font,
						TextColor3 = theme.TextEmphasis.Color,
						TextTransparency = theme.TextEmphasis.Transparency,
						TextSize = 32 * props.scale,
						BackgroundTransparency = 1,
					}, {
						Gradient = Roact.createElement("UIGradient", {
							Rotation = 0,
							Color = ColorSequence.new({
								ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 251, 103)),
								ColorSequenceKeypoint.new(1, Color3.fromRGB(243, 185, 34)),
							}),
						}),
					}) or nil,
				}),
			}),
		})
	end
end

return function(props: Props)
	local cursor = if getEnableRobuxPageNewSelectionCursor() then useCursor(UDim.new(0, CORNER_SIZE)) else nil
	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			moreRobux = {
				key = LOC_KEY:format("Text.MoreRobux2"),
				params = {
					robux = formatNumber(LocalizationService.RobloxLocaleId, props.robuxMoreAmount or 0),
				},
			},
		},
		render = function(locMap: { [string]: string })
			return withStyle(function(stylePalette)
				return withSelectionCursorProvider(function(getSelectionCursor)
					if props.scale == nil then
						props.scale = 0.65
					end
					return renderWithProviders(props, locMap, stylePalette, getSelectionCursor, cursor)
				end)
			end)
		end,
	})
end
