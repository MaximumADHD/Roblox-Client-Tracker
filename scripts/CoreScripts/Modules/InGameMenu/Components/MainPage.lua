local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Style.withStyle

local InGameMenu = script.Parent.Parent

local withLocalization = require(InGameMenu.Localization.withLocalization)

local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local StartLeavingGame = require(InGameMenu.Actions.StartLeavingGame)
local Assets = require(InGameMenu.Resources.Assets)
local divideTransparency = require(InGameMenu.Utility.divideTransparency)

local ThemedTextLabel = require(script.Parent.ThemedTextLabel)
local SystemPrimaryButton = require(script.Parent.SystemPrimaryButton)
local ThemedButton = require(script.Parent.ThemedButton)
local PageNavigation = require(script.Parent.PageNavigation)
local GameIconHeader = require(script.Parent.GameIconHeader)

local ImageSetLabel = UIBlox.ImageSet.Label

local GlobalConfig = require(InGameMenu.GlobalConfig)

local validateProps = t.strictInterface({
	open = t.boolean,
	respawnButtonVisible = t.boolean,
	startLeavingGame = t.callback,
	startRespawning = t.callback,
})

local function MainPage(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	local leaveGameSizeOffset = props.respawnButtonVisible and -(44 + 12) or 0

	return withStyle(function(style)
		return withLocalization({
			leaveGame = "CoreScripts.InGameMenu.LeaveGame",
		})(function(localized)
			return Roact.createElement("TextButton", {
				Size = UDim2.new(0, 400, 1, 0),
				Position = UDim2.new(0, 100, 0, 0),
				BackgroundColor3 = style.Theme.BackgroundDefault.Color,
				BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				Visible = props.open,
			}, {
				GameIconHeader = Roact.createElement(GameIconHeader),
				PageNavigation = Roact.createElement(PageNavigation, {
					Position = UDim2.new(0, 0, 0, 148),
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
						onActivated = props.startLeavingGame,
						renderChildren = function(transparency)
							return {
								ButtonText = Roact.createElement(ThemedTextLabel, {
									themeKey = "SystemPrimaryContent",
									fontKey = "Header2",
									Size = UDim2.new(1, 0, 1, 0),
									Text = localized.leaveGame,
								})
							}
						end,
					}),
					RespawnButton = props.respawnButtonVisible and Roact.createElement(ThemedButton, {
						Size = UDim2.new(0, 44, 0, 44),
						onActivated = props.startRespawning,
						normalThemeKey = "UIEmphasis",
						hoverThemeKey = "UIEmphasis",
						renderChildren = function(transparency, isHovered, isPressed)
							local iconColor = isHovered and style.Theme.IconOnHover or style.Theme.IconDefault
							local iconColor3 = iconColor.Color
							local iconTransparency = divideTransparency(iconColor.Transparency, isPressed and 2 or 1)

							local borderColor = isHovered and style.Theme.SecondaryOnHover or style.Theme.SecondaryDefault
							local borderColor3 = borderColor.Color
							local borderTransparency = divideTransparency(borderColor.Transparency, isPressed and 2 or 1)

							return {
								Border = Roact.createElement(ImageSetLabel, {
									Size = UDim2.new(1, 0, 1, 0),
									BackgroundTransparency = 1,
									Image = Assets.Images.RoundedRectBorder.Image,
									SliceCenter = Assets.Images.RoundedRectBorder.SliceCenter,
									ScaleType = Assets.Images.RoundedRectBorder.ScaleType,
									ImageColor3 = borderColor3,
									ImageTransparency = borderTransparency,
								}),
								ButtonIcon = Roact.createElement(ImageSetLabel, {
									BackgroundTransparency = 1,
									Size = UDim2.new(0, 36, 0, 36),
									Position = UDim2.new(0.5, 0, 0.5, 0),
									AnchorPoint = Vector2.new(0.5, 0.5),
									Image = Assets.Images.RespawnIcon,
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