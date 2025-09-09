--!nonstrict
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox

local InGameMenu = script:FindFirstAncestor("InGameMenu")
local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)
local Array = LuauPolyfill.Array

local ControlLayoutContainer = require(script.Parent.Parent.ControlLayoutContainer)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

local Assets = require(InGameMenu.Resources.Assets)
local Controls = require(InGameMenu.Resources.Controls)
local React = require(CorePackages.Packages.React)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local GAMEPAD_IMAGE_WIDTH = 473
local GAMEPAD_WIDTH = 440
local GAMEPAD_ICONS_WIDTH = GAMEPAD_IMAGE_WIDTH - GAMEPAD_WIDTH

local RELATIVE_TEXT_HEIGHT = 0.026

local GAMEPAD_LABEL_KEYS = {
	["ResetCameraLabel"] = "CoreScripts.InGameMenu.Controls.ResetCameraLabel",
	["MenuLabel"] = "CoreScripts.InGameMenu.Controls.MenuLabel",
	["SelectItemLabel"] = "CoreScripts.InGameMenu.Controls.SelectItemLabel",
	["BackExitLabel"] = "CoreScripts.InGameMenu.Controls.BackExitLabel",
	["FirstPersonCameraLabel"] = "CoreScripts.InGameMenu.Controls.FirstPersonCameraLabel",
	["JumpSelectLabel"] = "CoreScripts.InGameMenu.Controls.JumpSelectLabel",
}

local function GamepadControls(props)
	return Roact.createElement(ControlLayoutContainer, {
		titleText = "CoreScripts.InGameMenu.Controls.GamepadTitle",
	}, {
		GamepadImage = Roact.createElement(ImageSetLabel, {
			BackgroundTransparency = 1,
			Image = Assets.Images.GamepadQuest,
			Size = UDim2.new(1, 0, 0.6, 0),
			Position = UDim2.new(0.5, GAMEPAD_ICONS_WIDTH / 2, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			SizeConstraint = Enum.SizeConstraint.RelativeXX,
			[React.Tag] = "data-testid=VRGamepadInstructions",
		}, {
			Array.map(Controls.questGamepadLabels, function(item, index)
				local localizationKey = GAMEPAD_LABEL_KEYS[item.labelKey]

				return withLocalization({ localizationKey })(function(localized)
					return Roact.createElement(ThemedTextLabel, {
						key = item.labelKey,
						fontKey = "Header2",
						themeKey = "TextEmphasis",
						TextXAlignment = item.xAlignment or Enum.TextXAlignment.Right,
						Size = UDim2.new(item.width, 0, RELATIVE_TEXT_HEIGHT, 0),
						Text = localized[1],
						LayoutOrder = index,
						Position = UDim2.new(item.xPosition, 0, item.yPosition, 0),
						TextScaled = true,
					})
				end)
			end),
		}),
	})
end

return GamepadControls
