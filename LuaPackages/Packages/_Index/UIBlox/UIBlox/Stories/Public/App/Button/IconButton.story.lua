local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)
local FitFrame = require(Packages.FitFrame)

local Core = Packages.UIBlox.Core
local ControlState = require(Core.Control.Enum.ControlState)

local App = Packages.UIBlox.App
local IconButton = require(App.Button.IconButton)
local IconSize = require(App.ImageSet.Enum.IconSize)
local Images = require(App.ImageSet.Images)
local Badge = require(App.Indicator.Badge)

local LightTheme = require(App.Style.Themes.LightTheme)
local DarkTheme = require(App.Style.Themes.DarkTheme)

local AppStyleProvider = require(App.Style.AppStyleProvider)

local StyleConstants = require(App.Style.Constants)
local LIGHT_THEME = StyleConstants.ThemeName.Light
local DARK_THEME = StyleConstants.ThemeName.Dark
local DEFAULT_FONT = StyleConstants.FontName.Gotham

local withStyle = require(Packages.UIBlox.Style.withStyle)

local function Title(props)
	return withStyle(function(style)
		return Roact.createElement(FitFrame.FitTextLabel, {
			width = UDim.new(0, 200),
			TextColor3 = style.Theme.TextDefault.Color,
			TextTransparency = style.Theme.TextDefault.Transparency,
			BackgroundTransparency = 1,
			Text = tostring(props.Text):upper(),
			Font = Enum.Font.GothamBold,
			LayoutOrder = props.LayoutOrder,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextSize = 10,
		})
	end)
end

local function GoldRobuxIconButton(props)
	return Roact.createElement(IconButton, {
		anchorPoint = Vector2.new(0.5, 0.5),
		position = UDim2.fromScale(0.5, 0.5),
		icon = Images["icons/common/goldrobux"],
		iconColor3 = props.iconColor3 or nil,
		isDisabled = props.isDisabled,
		userInteractionEnabled = props.userInteractionEnabled,
	})
end

local function lightVsDarkTest(props)
	local titleTextWith = props.controlGroup and "without" or "with"
	local iconColor3 = not props.controlGroup and Color3.fromRGB(255, 255, 255) or nil

	return withStyle(function(style)
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(300, 100),
			LayoutOrder = props.LayoutOrder,
		}, {
			layout = Roact.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			title = Roact.createElement(Title, {
				Text = string.format("Light Theme vs Dark Theme\n(%s .iconColor3)", titleTextWith),
				style = style,
				LayoutOrder = 1,
			}),
			lightTheme = Roact.createElement("Frame", {
				BackgroundColor3 = LightTheme.BackgroundDefault.Color,
				Size = UDim2.fromScale(0.5, 1),
				LayoutOrder = 2,
			}, {
				styleProvider = Roact.createElement(AppStyleProvider, {
					style = {
						themeName = LIGHT_THEME,
						fontName = DEFAULT_FONT,
					},
				}, {
					button = Roact.createElement(GoldRobuxIconButton, {
						iconColor3 = iconColor3,
						isDisabled = props.isDisabled,
						userInteractionEnabled = props.userInteractionEnabled,
					}),
				}),
			}),
			darkTheme = Roact.createElement("Frame", {
				BackgroundColor3 = DarkTheme.BackgroundDefault.Color,
				Size = UDim2.fromScale(0.5, 1),
				LayoutOrder = 3,
			}, {
				styleProvider = Roact.createElement(AppStyleProvider, {
					style = {
						themeName = DARK_THEME,
						fontName = DEFAULT_FONT,
					},
				}, {
					button = Roact.createElement(GoldRobuxIconButton, {
						iconColor3 = iconColor3,
						isDisabled = props.isDisabled,
						userInteractionEnabled = props.userInteractionEnabled,
					}),
				}),
			}),
		})
	end)
end

local function createIconButtonWithTitle(props)
	return withStyle(function(style)
		return Roact.createElement(FitFrame.FitFrameVertical, {
			width = UDim.new(1, 0),
			BackgroundTransparency = 1,
			contentPadding = UDim.new(0, 12),
			VerticalAlignment = Enum.VerticalAlignment.Center,
			FillDirection = Enum.FillDirection.Horizontal,
			LayoutOrder = props.layoutOrder,
		}, {
			title = Roact.createElement(Title, {
				style = style,
				Text = tostring(props.title or props.iconSize):upper(),
			}),
			demo = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(200, props.height or 200),
			}, {
				iconButton = Roact.createElement(IconButton, {
					anchorPoint = Vector2.new(0.5, 0.5),
					position = UDim2.fromScale(0.5, 0.5),
					icon = props.icon or Images["icons/common/notificationOff"],
					iconColor3 = props.iconColor3 or nil,
					iconSize = props.iconSize,
					isDisabled = props.isDisabled,
					userInteractionEnabled = props.userInteractionEnabled,
					layoutOrder = props.layoutOrder,
					onActivated = function()
						print("Text Button Clicked!")
					end,
					onStateChanged = function(oldState, newState)
						if oldState ~= ControlState.Initialize then
							print("state changed \n oldState:", oldState, " newState:", newState)
						end
					end,
				}, props.displayingBadge and Roact.createElement(Badge, {
					position = UDim2.new(0.5, 0, 0.5, 0),
					anchorPoint = Vector2.new(0, 1),
					disabled = props.isDisabled,
					value = 1,
				} or {})),
			}),
		})
	end)
end

return {
	controls = {
		isDisabled = false,
		userInteractionEnabled = true,
	},
	stories = {
		{
			name = "Icon Size",
			summary = "prop = iconSize: IconSize",
			story = function(props)
				local isDisabled = props.controls.isDisabled
				local userInteractionEnabled = props.controls.userInteractionEnabled

				return Roact.createElement(FitFrame.FitFrameVertical, {
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					margin = {
						top = 0,
						bottom = 0,
						right = 0,
						left = 24,
					},
					contentPadding = UDim.new(0, 12),
					LayoutOrder = 2,
				}, {
					small = createIconButtonWithTitle({
						iconSize = IconSize.Small,
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
						layoutOrder = 1,
					}),
					medium = createIconButtonWithTitle({
						iconSize = IconSize.Medium,
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
						layoutOrder = 2,
					}),
					large = createIconButtonWithTitle({
						iconSize = IconSize.Large,
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
						layoutOrder = 3,
					}),
					xLarge = createIconButtonWithTitle({
						iconSize = IconSize.XLarge,
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
						layoutOrder = 4,
					}),
					xxLarge = createIconButtonWithTitle({
						iconSize = IconSize.XXLarge,
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
						layoutOrder = 5,
					}),
				})
			end,
		},
		{
			name = "Appearance Override",
			summary = "prop = iconColor3: Color3",
			story = function(props)
				local isDisabled = props.controls.isDisabled
				local userInteractionEnabled = props.controls.userInteractionEnabled

				return Roact.createElement(FitFrame.FitFrameVertical, {
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					margin = {
						top = 0,
						bottom = 0,
						right = 0,
						left = 24,
					},
					contentPadding = UDim.new(0, 12),
					LayoutOrder = 2,
				}, {
					yellow = createIconButtonWithTitle({
						iconColor3 = Color3.fromRGB(255, 255, 100),
						title = "(255, 255, 100)",
						iconSize = IconSize.Medium,
						height = 100,
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
						layoutOrder = 1,
					}),
					lightVsDarkWith = Roact.createElement(lightVsDarkTest, {
						controlGroup = false,
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
						LayoutOrder = 2,
					}),
					lightVsDarkWithout = Roact.createElement(lightVsDarkTest, {
						controlGroup = true,
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
						LayoutOrder = 3,
					}),
				})
			end,
		},
		{
			name = "Child Props Demo",
			summary = "prop = [Roact.Children]: table",
			story = function(props)
				local isDisabled = props.controls.isDisabled
				local userInteractionEnabled = props.controls.userInteractionEnabled

				return Roact.createElement(FitFrame.FitFrameVertical, {
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					margin = {
						top = 0,
						bottom = 0,
						right = 0,
						left = 24,
					},
					contentPadding = UDim.new(0, 12),
					LayoutOrder = 2,
				}, {
					notificationBadge = createIconButtonWithTitle({
						iconSize = IconSize.Medium,
						isDisabled = isDisabled,
						displayingBadge = true,
						userInteractionEnabled = userInteractionEnabled,
						layoutOrder = 1,
					}),
				})
			end,
		},
	},
}
