local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent

local withLocalization = require(InGameMenu.Localization.withLocalization)

local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local StartLeavingGame = require(InGameMenu.Actions.StartLeavingGame)
local Assets = require(InGameMenu.Resources.Assets)
local divideTransparency = require(InGameMenu.Utility.divideTransparency)

local ThemedTextLabel = require(script.Parent.ThemedTextLabel)
local SystemPrimaryButton = require(script.Parent.SystemPrimaryButton)
local SystemSecondaryButton = require(script.Parent.SystemSecondaryButton)
local KeyLabel = require(script.Parent.KeyLabel)
local PageNavigation = require(script.Parent.PageNavigation)
local GameIconHeader = require(script.Parent.GameIconHeader)

local ImageSetLabel = UIBlox.Core.ImageSet.Label

local MAIN_PAGE_WIDTH = 400

local MainPage = Roact.PureComponent:extend("MainPage")

MainPage.validateProps = t.strictInterface({
	open = t.boolean,
	respawnButtonVisible = t.boolean,
	startLeavingGame = t.callback,
	startRespawning = t.callback,
})

function MainPage:init()
	self.state = {
		modalOpen = false,
	}
end

function MainPage:render()
	local leaveGameSizeOffset = self.props.respawnButtonVisible and -(44 + 12) or 0

	return withStyle(function(style)
		return withLocalization({
			leaveGame = "CoreScripts.InGameMenu.LeaveGame",
			respawnCharacter = "CoreScripts.InGameMenu.RespawnCharacter",
		})(function(localized)
			return Roact.createElement("TextButton", {
				Size = UDim2.new(0, MAIN_PAGE_WIDTH, 1, 0),
				Position = UDim2.new(0, 100, 0, 0),
				BackgroundColor3 = style.Theme.BackgroundDefault.Color,
				BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
				BorderSizePixel = 0,
				Visible = self.props.open,
				Text = "",
				AutoButtonColor = false,
			}, {
				GameIconHeader = Roact.createElement(GameIconHeader),
				PageNavigation = Roact.createElement(PageNavigation, {
					Position = UDim2.new(0, 0, 0, 148),
				}),
				ModalBottomSheet = self.state.modalOpen and Roact.createElement(UIBlox.ModalBottomSheet, {
					bottomGap = 84,
					screenWidth = MAIN_PAGE_WIDTH,
					onDismiss = function()
						self:setState({
							modalOpen = false,
						})
					end,
					buttonModels = {
						{
							icon = Assets.Images.RespawnIcon,
							text = localized.respawnCharacter,
							onActivated = self.props.startRespawning,
							renderRightElement = function()
								return Roact.createElement(KeyLabel, {
									input = Enum.KeyCode.R,
									AnchorPoint = Vector2.new(0.5, 0.5),
									Position = UDim2.new(0.5, 0, 0.5, 0),
								})
							end,
						}
					},
				}),
				BottomButtons = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 84),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
					BackgroundTransparency = 1,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingTop = UDim.new(0, 24),
						PaddingBottom = UDim.new(0, 24),
						PaddingLeft = UDim.new(0, 24),
						PaddingRight = UDim.new(0, 24),
					}),
					LeaveGame = Roact.createElement(SystemPrimaryButton, {
						Position = UDim2.new(1, 0, 0, 0),
						AnchorPoint = Vector2.new(1, 0),
						Size = UDim2.new(1, leaveGameSizeOffset, 0, 44),
						onActivated = self.props.startLeavingGame,
						renderChildren = function(transparency)
							return {
								ButtonText = Roact.createElement(ThemedTextLabel, {
									themeKey = "SystemPrimaryContent",
									fontKey = "Header2",
									Size = UDim2.new(1, 0, 1, 0),
									Text = localized.leaveGame,
								}),

								KeyLabel = Roact.createElement(KeyLabel, {
									input = Enum.KeyCode.L,
									borderThemeKey = "UIDefault",
									textThemeKey = "SystemPrimaryContent",
									AnchorPoint = Vector2.new(1, 0.5),
									Position = UDim2.new(1, -16, 0.5, 0),
								})
							}
						end,
					}),
					MoreButton = self.props.respawnButtonVisible and Roact.createElement(SystemSecondaryButton, {
						Size = UDim2.new(0, 44, 0, 44),
						onActivated = function()
							self:setState({
								modalOpen = true,
							})
						end,
						renderChildren = function(transparency, isHovered, isPressed)
							local iconColor = isHovered and style.Theme.IconOnHover or style.Theme.IconDefault
							local iconColor3 = iconColor.Color
							local iconTransparency = divideTransparency(iconColor.Transparency, isPressed and 2 or 1)

							return {
								ButtonIcon = Roact.createElement(ImageSetLabel, {
									BackgroundTransparency = 1,
									Size = UDim2.new(0, 36, 0, 36),
									Position = UDim2.new(0.5, 0, 0.5, 0),
									AnchorPoint = Vector2.new(0.5, 0.5),
									Image = Assets.Images.MoreActions,
									ImageColor3 = iconColor3,
									ImageTransparency = iconTransparency,
								})
							}
						end,
					})
				})
			})
		end)
	end)
end

function MainPage:didUpdate(prevProps)
	if prevProps.open and not self.props.open then
		self:setState({
			modalOpen = false,
		})
	end
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		open = state.isMenuOpen,
		respawnButtonVisible = state.respawn.enabled,
	}
end, function(dispatch)
	return {
		startLeavingGame = function()
			dispatch(StartLeavingGame())
		end,
		startRespawning = function()
			dispatch(SetRespawning(true))
		end,
	}
end)(MainPage)