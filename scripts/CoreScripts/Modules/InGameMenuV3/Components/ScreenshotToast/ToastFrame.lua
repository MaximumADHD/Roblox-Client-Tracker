--!nonstrict
local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent
local UIBlox = InGameMenuDependencies.UIBlox
local withStyle = UIBlox.Core.Style.withStyle
local withLocalization = require(InGameMenu.Localization.withLocalization)
local IconButton = UIBlox.App.Button.IconButton
local Assets = require(InGameMenu.Resources.Assets)

local ToastFrame = Roact.PureComponent:extend("ToastFrame")

local PADDING = 12
local TOAST_FRAME_MAX_WIDTH = 400

ToastFrame.validateProps = t.strictInterface({
	screenSize = t.Vector2,
})

function ToastFrame:render()
	return withLocalization({
		screenshotSaved = "CoreScripts.InGameMenu.QuickActions.ScreenshotSaved",
	})(function(localized)
		return withStyle(function(style)
			local toastSize
			if self.props.screenSize.X < TOAST_FRAME_MAX_WIDTH then
				toastSize = UDim2.new(0.8, 0, 0, 60)
			else
				toastSize = UDim2.new(0, TOAST_FRAME_MAX_WIDTH, 0, 60)
			end
			return Roact.createElement("Frame", {
				AnchorPoint =  Vector2.new(0.5, 0),
				BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
				BackgroundTransparency = self.props.toastBackgroundTransparency,
				BorderSizePixel = 0,
				ClipsDescendants = true,
				Position = UDim2.new(0.5, 0, 0, 20),
				Size = toastSize,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, PADDING),
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
				UIPadding = Roact.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, PADDING),
					PaddingLeft = UDim.new(0, PADDING),
					PaddingRight = UDim.new(0, PADDING),
					PaddingTop = UDim.new(0, PADDING),
				}),
				ToastIcon = Roact.createElement(IconButton, {
					LayoutOrder = 1,
					icon = Assets.Images.ScreenshotIcon,
					iconTransparency = self.props.toastTransparency,
				}),
				ToastTitle = Roact.createElement("TextLabel", {
					LayoutOrder = 2,
					BackgroundTransparency = 1,
					Font = style.Font.Header2.Font,
					Text = localized.screenshotSaved,
					TextColor3 = style.Theme.TextEmphasis.Color,
					TextSize = style.Font.BaseSize * style.Font.Header2.RelativeSize,
					TextTransparency = self.props.toastTransparency,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
				}),
			})
		end)
	end)
end

local function mapStateToProps(state, _)
	return {
		screenSize = state.screenSize,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(ToastFrame)
