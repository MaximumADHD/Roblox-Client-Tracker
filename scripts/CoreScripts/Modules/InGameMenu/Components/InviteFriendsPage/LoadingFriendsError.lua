local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent.Parent

local GlobalConfig = require(InGameMenu.GlobalConfig)
local withLocalization = require(InGameMenu.Localization.withLocalization)

local Assets = require(InGameMenu.Resources.Assets)

local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

local ImageSetLabel = UIBlox.Core.ImageSet.Label

local CONTAINER_WIDTH = 304
local TEXT_PADDING_TOP = 10
local TEXT_PADDING_BOTTOM = 26

local validateProps = t.strictInterface({
	onRetry = t.callback,
})

local function LoadingFriendsError(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return withStyle(function(style)
		return withLocalization({
			errorOccured = "CoreScripts.InGameMenu.InviteFriends.ErrorOccured",
		})(function(localized)
			local bodyFont = style.Font.Body.Font
			local bodyFontSize = style.Font.Body.RelativeSize * style.Font.BaseSize
			local textHeight = TextService:GetTextSize(
				localized.errorOccured,
				bodyFontSize,
				bodyFont,
				Vector2.new(CONTAINER_WIDTH, math.huge)
			).Y

			local totalTextPadding = TEXT_PADDING_TOP + TEXT_PADDING_BOTTOM

			return Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, CONTAINER_WIDTH, 1, 0),
				Position = UDim2.new(0.5, 0, 0, 0),
				AnchorPoint = Vector2.new(0.5, 0),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				Icon = Roact.createElement(ImageSetLabel, {
					BackgroundTransparency = 1,
					Image = Assets.Images.Friends,
					Size = UDim2.new(0, 64, 0, 64),
					ImageTransparency = 0.5,
					LayoutOrder = 1,
				}),

				TextContainer = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, textHeight + totalTextPadding),
					LayoutOrder = 2,
				}, {
					Text = Roact.createElement(ThemedTextLabel, {
						fontKey = "Body",
						themeKey = "TextEmphasis",
						Text = localized.errorOccured,
						Position = UDim2.new(0, 0, 0, TEXT_PADDING_TOP),
						Size = UDim2.new(1, 0, 1, -totalTextPadding),
						TextXAlignment = Enum.TextXAlignment.Center,
						TextWrapped = true,
					})
				}),

				MakeFriendsButton = Roact.createElement(UIBlox.App.Button.SecondaryButton, {
					layoutOrder = 3,
					size = UDim2.new(1, 0, 0, 48),
					icon = Assets.Images.RetryIcon,
					onActivated = props.onRetry,
				}),
			})
		end)
	end)
end

return LoadingFriendsError