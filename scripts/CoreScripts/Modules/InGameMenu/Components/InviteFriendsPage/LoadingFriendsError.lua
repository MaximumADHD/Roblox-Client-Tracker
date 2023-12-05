--!nonstrict
local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local Button = UIBlox.App.Button.Button
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent.Parent

local withLocalization = require(InGameMenu.Localization.withLocalization)

local Assets = require(InGameMenu.Resources.Assets)

local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)
local FocusHandler = require(InGameMenu.Components.Connection.FocusHandler)
local RootedConnection = require(InGameMenu.Components.Connection.RootedConnection)

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local ControlState = UIBlox.Core.Control.Enum.ControlState

local CONTAINER_WIDTH = 304
local TEXT_PADDING_TOP = 10
local TEXT_PADDING_BOTTOM = 26

local LoadingFriendsError = Roact.PureComponent:extend("LoadingFriendsError")

LoadingFriendsError.validateProps = t.strictInterface({
	onRetry = t.callback,
	canCaptureFocus = t.boolean,
})

function LoadingFriendsError:init()
	self.buttonRef = Roact.createRef()

	self.state = {
		buttonIsInitialized = false,
	}
end

function LoadingFriendsError:render()
	local props = self.props

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

				RootedConnection = Roact.createElement(RootedConnection, {
					render = function(isRooted)
						return Roact.createElement(FocusHandler, {
							isFocused = props.canCaptureFocus
								and self.state.buttonIsInitialized
								and isRooted,

							didFocus = function()
								GuiService.SelectedCoreObject = self.buttonRef:getValue()
							end,
						}, {
							RetryButton = isRooted and Roact.createElement(Button, {
								buttonType = ButtonType.Secondary,
								layoutOrder = 3,
								size = UDim2.new(1, 0, 0, 48),
								icon = Assets.Images.RetryIcon,
								onActivated = props.onRetry,
								buttonRef = self.buttonRef,
								onStateChanged = function(_, newState)
									if not self.state.buttonIsInitialized and newState ~= ControlState.Initialize then
										self:setState({
											buttonIsInitialized = true,
										})
									end
								end,
							}) or nil,
						})
					end,
				}),
			})
		end)
	end)
end

return LoadingFriendsError
