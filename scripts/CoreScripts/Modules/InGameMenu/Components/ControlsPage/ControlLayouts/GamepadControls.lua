local UserInputService = game:GetService("UserInputService")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox

local InGameMenu = script.Parent.Parent.Parent.Parent

local ControlLayoutContainer = require(script.Parent.Parent.ControlLayoutContainer)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

local Assets = require(InGameMenu.Resources.Assets)
local Controls = require(InGameMenu.Resources.Controls)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local ImageSetLabel = UIBlox.Core.ImageSet.Label

local GAMEPAD_IMAGE_HEIGHT = 465

local GAMEPAD_IMAGE_WIDTH = 473
local GAMEPAD_WIDTH = 440
local GAMEPAD_ICONS_WIDTH = GAMEPAD_IMAGE_WIDTH - GAMEPAD_WIDTH

-- Height and padding for gamepad button labels
local TEXT_HEIGHT = 22
local LIST_PADDING = 21

-- Offsets for labels
local TEXT_Y_OFFSET = 62
local TEXT_X_PADDING = 26

-- Text for camera controls needs be offset based on the other text on the right
-- side of the controller. We mutliply the number of control items by the total
-- size (height + padding) of each control label element.
local RIGHT_LABELS_HEIGHT = (#Controls.gamepadLabels.right * (TEXT_HEIGHT + LIST_PADDING))
local CONTROL_CAMERA_TEXT_Y_OFFSET = RIGHT_LABELS_HEIGHT + TEXT_Y_OFFSET

local function verticalControlsList(props)
	return withLocalization(props.controls)(function(localized)
		local listChildren = {}

		listChildren.ListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, LIST_PADDING),
		})

		for i, control in ipairs(localized) do
			listChildren["controlLabel_"..i] = Roact.createElement(ThemedTextLabel, {
				fontKey = "Header2",
				themeKey = "TextEmphasis",
				TextXAlignment = props.TextXAlignment,
				Size = UDim2.new(0, 1, 0, TEXT_HEIGHT),
				Text = control,
				LayoutOrder = i,
			})
		end

		return Roact.createElement("Frame", {
			Position = props.Position,

			Size = UDim2.new(0, 0, 1, 0),
			BackgroundTransparency = 1,
		}, listChildren)
	end)
end

local function GamepadControls()
	local platform = UserInputService:GetPlatform()
	local isXbox = platform == Enum.Platform.XBox360 or platform == Enum.Platform.XBoxOne

	return Roact.createElement(ControlLayoutContainer, {
		titleText = "CoreScripts.InGameMenu.Controls.GamepadTitle"
	}, {
		GamepadImage = Roact.createElement(ImageSetLabel, {
			BackgroundTransparency = 1,
			Image = isXbox and Assets.Images.GamepadXbox or Assets.Images.Gamepad,
			Size = UDim2.new(0, GAMEPAD_IMAGE_WIDTH, 0, GAMEPAD_IMAGE_HEIGHT),
			Position = UDim2.new(0.5, GAMEPAD_ICONS_WIDTH/2, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
		}, {
			LeftControlsList = Roact.createElement(verticalControlsList, {
				TextXAlignment = Enum.TextXAlignment.Right,
				Position = UDim2.new(0, -TEXT_X_PADDING, 0, TEXT_Y_OFFSET),
				controls = Controls.gamepadLabels.left
			}),
			RightControlsList = Roact.createElement(verticalControlsList, {
				TextXAlignment = Enum.TextXAlignment.Left,
				Position = UDim2.new(1, TEXT_X_PADDING-GAMEPAD_ICONS_WIDTH, 0, TEXT_Y_OFFSET),
				controls = Controls.gamepadLabels.right
			}),
			RightIconsControlslIst = Roact.createElement(verticalControlsList, {
				TextXAlignment = Enum.TextXAlignment.Left,
				Position = UDim2.new(1, TEXT_X_PADDING, 0, CONTROL_CAMERA_TEXT_Y_OFFSET),
				controls = Controls.gamepadLabels.camera
			})
		})
	})
end

return GamepadControls