local BuyRobuxRoot = script.Parent
local IAPExperienceRoot = BuyRobuxRoot.Parent
local Packages = IAPExperienceRoot.Parent

local LocalizationService = game:GetService("LocalizationService")
local GuiService = game:GetService("GuiService")

local Roact = require(Packages.Roact)
local Otter = require(Packages.Otter)

local RoactGamepad = require(Packages.RoactGamepad)

local UIBlox = require(Packages.UIBlox)
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind
local FreeFlowCarousel = UIBlox.App.Container.Carousel.FreeFlowCarousel
local Images = UIBlox.App.ImageSet.Images
local ImageSetButton = UIBlox.Core.ImageSet.Button
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local UIBloxIconSize = UIBlox.App.Constant.IconSize
local withStyle = UIBlox.Core.Style.withStyle
local DarkTheme = UIBlox.App.Style.Themes.DarkTheme

local RoactFitComponents = require(Packages.RoactFitComponents)
local FitFrameHorizontal = RoactFitComponents.FitFrameHorizontal
local FitFrameVertical = RoactFitComponents.FitFrameVertical
local FitTextLabel = RoactFitComponents.FitTextLabel

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)
local getModalShownEventData = require(IAPExperienceRoot.Utility.getModalShownEventData)
local getUserInputEventData = require(IAPExperienceRoot.Utility.getUserInputEventData)
local formatNumber = require(IAPExperienceRoot.Utility.formatNumber)

local RobuxPackage = require(BuyRobuxRoot.RobuxPackage)

local BuyRobuxPage = Roact.Component:extend(script.Name)

local LOC_KEY = "IAPExperience.BuyRobux.%s"

local ROBUX_ICON = Images["icons/common/goldrobux"]
local ROBUX_IMAGES = {
	Images["icons/graphic/robuxcoin1_xxlarge"],
	Images["icons/graphic/robuxcoin2_xxlarge"],
	Images["icons/graphic/robuxcoin3_xxlarge"],
	Images["icons/graphic/robuxcoin4_xxlarge"],
	Images["icons/graphic/robuxcoin5_xxlarge"],
	Images["icons/graphic/robuxcoin6_xxlarge"],
}
local CLOSE_ICON = Images["icons/navigation/close"];
local DARK_BACKGROUND = "rbxasset://textures/AvatarEditorImages/AvatarEditor.png"
local LIGHT_BACKGROUND = "rbxasset://textures/AvatarEditorImages/AvatarEditor_LightTheme.png"

local PRICE_ICON_PADDING = 4
local SIDE_PADDING = 96
local ROBUX_PACKAGE_LIST_PADDING = 16

local SPRING_CONFIG = {
	dampingRatio = 1,
	frequency = 1.0,
}

type Props = {
	showBackground: boolean?,
	showCloseButton: boolean?,
	isConsoleSize: number,

	robuxBalance: number,
	robuxPackages: table?,

	robuxPackageActivated: (string) -> any,
	onPageClose: () -> any,
}

type State = {
	selectedPackage: string?,
}

function BuyRobuxPage:init()
	self.state = {
		selectedPackage = nil,
	}

	self.buttonRefs = RoactGamepad.createRefCache()

	self.getGamepadNextSelectionLeft = function(buttonRefIndex)
		return buttonRefIndex > 1 and self.buttonRefs[buttonRefIndex - 1] or nil
	end

	self.getGamepadNextSelectionRight = function(buttonRefIndex)
		return buttonRefIndex < #self.buttonRefs and self.buttonRefs[buttonRefIndex + 1] or nil
	end

	self.initSelectionChangedListener = function()
		-- Disconnect any existing listeners
		if self.selectionListener ~= nil then
			self.selectionListener:Disconnect()
			self.selectionListener = nil
		end
		if self.selectionListener ~= nil then
			self.selectionListener:Disconnect()
			self.selectionListener = nil
		end

		self.selectionListener = GuiService:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function()
			if
				self.state.selectedPackage == nil
				or GuiService.SelectedCoreObject == nil
				or self.state.selectedPackage ~= GuiService.SelectedCoreObject
			then
				self:setState({ selectedPackage = GuiService.SelectedCoreObject })
			end
		end)
	end
end

function BuyRobuxPage:didMount()
	self.initSelectionChangedListener()
end

function BuyRobuxPage:willUnmount()
	-- Disconnect any existing listeners
	if self.selectionListener ~= nil then
		self.selectionListener:Disconnect()
		self.selectionListener = nil
	end
end

function BuyRobuxPage:getScale()
	local props: Props = self.props

	if props.isConsoleSize then
		return 1.0
	else
		return 0.65
	end
end

function BuyRobuxPage:render()
	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			BannerText = {
				key = LOC_KEY:format("Banner.Text"),
			},
			BannerTitle = {
				key = LOC_KEY:format("Banner.Title"),
			},
		},
		render = function(locMap: { [string]: string })
			return withSelectionCursorProvider(function(getSelectionCursor)
				return self:renderWithLocale(locMap, getSelectionCursor)
			end)
		end,
	})
end

function BuyRobuxPage:renderWithLocale(locMap: { [string]: string }, getSelectionCursor)
	local props: Props = self.props

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font

		local hasPackageData = props.robuxPackages ~= nil
		local numOfPackages = if hasPackageData then #props.robuxPackages else 6

		local balanceTextHeight = 32 * self:getScale()

		local RobuxPackageChildren = {
			StartingPadding = Roact.createElement("Frame", {
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, (SIDE_PADDING - ROBUX_PACKAGE_LIST_PADDING) * self:getScale(), 0, 1),
			}),
			RobuxPackageChildren = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Left, -- Using Center Alignment is hard to control the alignment with other components
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, ROBUX_PACKAGE_LIST_PADDING * self:getScale()),
			})
		}

		for i = 1, numOfPackages do
			RobuxPackageChildren[i + 1] = Roact.createElement(RobuxPackage, {
				layoutOrder = i,
				scale = self:getScale(),

				selected = self.state.selectedPackage ~= nil
					and self.state.selectedPackage == self.buttonRefs[i]:getValue(),

				packageId = if hasPackageData then props.robuxPackages[i].packageId else tostring(i),
				robuxAmount = if hasPackageData then props.robuxPackages[i].robuxAmount else nil,
				currencyAmountStr = if hasPackageData then props.robuxPackages[i].currencyAmountStr else nil,
				robuxMoreAmount = if hasPackageData then props.robuxPackages[i].robuxMoreAmount else nil,
				robuxImage = ROBUX_IMAGES[i],

				forwardRef = self.buttonRefs[i],

				nextSelectionLeft = self.getGamepadNextSelectionLeft(i),
				nextSelectionRight = self.getGamepadNextSelectionRight(i),

				onActivated = function(packageId: string)
					props.robuxPackageActivated(packageId)
				end,
				onHover = function(ref: React.Ref<any>, didHover: boolean)
					if didHover then
						self:setState({ selectedPackage = ref:getValue() })
					else
						self:setState({ selectedPackage = "" })
					end
				end,
			})
		end

		return Roact.createElement(RoactGamepad.Focusable.Frame, {
			BackgroundColor3 = theme.BackgroundDefault.Color,
			BackgroundTransparency = 0.8,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			BuyRobuxPageBackground = Roact.createElement('Frame', {
				BackgroundTransparency = 0,
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				Visible = self.props.showBackground,
				ZIndex = 0
			}, {
				BackgroundImage = Roact.createElement('ImageLabel', {
					BackgroundTransparency = 1,
					ImageTransparency = 0,
					Image = if theme == DarkTheme then DARK_BACKGROUND else LIGHT_BACKGROUND,
					Size = UDim2.new(1, 0, 1, 0)
				}),
				Backdrop = Roact.createElement("Frame", {
					BackgroundTransparency = if theme == DarkTheme then 0.5 else 0.7,
					BackgroundColor3 = Color3.new(0, 0, 0),
					Size = UDim2.new(1, 0, 1, 0)
				}),
			}),
			CloseButton = Roact.createElement(ImageSetButton, {
				Position = UDim2.new(0, SIDE_PADDING / 2 * self:getScale(), 0, 48 * self:getScale()),
				AnchorPoint = Vector2.new(0, 0),
				Size = UDim2.new(0, 36, 0, 36),

				Image = CLOSE_ICON,

				BackgroundColor3 = Color3.new(0, 0, 0),
				BackgroundTransparency = 0.7,
				BorderSizePixel = 0,

				SelectionImageObject = getSelectionCursor(CursorKind.RoundedRect),

				Visible = self.props.showCloseButton,

				[Roact.Event.Activated] = props.onPageClose
			}),
			RobuxBalanceFrame = Roact.createElement(FitFrameHorizontal, {
				Position = UDim2.new(1, -1 * SIDE_PADDING * self:getScale(), 0, 48 * self:getScale()),
				AnchorPoint = Vector2.new(1, 0),

				height = UDim.new(0, balanceTextHeight),
				contentPadding = UDim.new(0, PRICE_ICON_PADDING),

				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,

				BackgroundTransparency = 1,
			}, {
				Icon = Roact.createElement(ImageSetLabel, {
					LayoutOrder = 1,
					BackgroundTransparency = 1,
					Size = UDim2.fromOffset(
						balanceTextHeight + 15 * self:getScale(),
						balanceTextHeight + 15 * self:getScale()
					),
					Image = ROBUX_ICON,
					ImageTransparency = 0,
				}),
				BalanceText = Roact.createElement(FitTextLabel, {
					LayoutOrder = 2,

					width = FitTextLabel.Width.FitToText,

					Text = if props.robuxBalance
						then formatNumber(LocalizationService.RobloxLocaleId, props.robuxBalance)
						else "",

					Font = fonts.Header1.Font,
					TextColor3 = if props.showBackground then Color3.new(255, 255, 255) else theme.TextEmphasis.Color,
					TextTransparency = theme.TextEmphasis.Transparency,
					TextSize = balanceTextHeight,
					BackgroundTransparency = 1,
				}),
			}),
			BannerFrame = Roact.createElement("Frame", {
				Position = UDim2.new(0, SIDE_PADDING * self:getScale(), 0, 146 * self:getScale()),
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,

				BackgroundTransparency = 1,
			}, {
				Roact.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 36 * self:getScale()),
				}),
				BannerTitle = Roact.createElement("TextLabel", {
					LayoutOrder = 1,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 0),

					AutomaticSize = Enum.AutomaticSize.Y,
					TextXAlignment = Enum.TextXAlignment.Left,

					Font = fonts.Title.Font,
					Text = locMap.BannerTitle,
					TextSize = 46 * self:getScale(),
					TextColor3 = if props.showBackground then Color3.new(255, 255, 255) else theme.TextEmphasis.Color,
				}),
				BannerText = Roact.createElement("TextLabel", {
					LayoutOrder = 1,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 0),

					AutomaticSize = Enum.AutomaticSize.Y,
					TextXAlignment = Enum.TextXAlignment.Left,

					Font = fonts.Header1.Font,
					Text = locMap.BannerText,
					TextSize = 38 * self:getScale(),
					TextColor3 = if props.showBackground then Color3.new(255, 255, 255) else theme.TextEmphasis.Color,
				}),
			}),
			RobuxPackageTilesFrame = Roact.createElement("ScrollingFrame", {
				Position = UDim2.new(0, 0, 0, 310 * self:getScale()),
				Size = UDim2.new(1, 0, 0, 615 * self:getScale()),
				CanvasSize = UDim2.new(0, #RobuxPackageChildren * 390 * self:getScale(), 0, 615 * self:getScale()),
				ScrollingEnabled = hasPackageData,
				ScrollingDirection = Enum.ScrollingDirection.X,
				ScrollBarImageTransparency = 1,
				Selectable = false,
				BackgroundTransparency = 1,
			}, RobuxPackageChildren),
		})
	end)
end

return BuyRobuxPage
