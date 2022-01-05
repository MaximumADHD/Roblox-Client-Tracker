local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Pane = UI.Pane

local UserInputService = game:GetService("UserInputService")

local gamepadSmallImages = {
	[Enum.KeyCode.ButtonX] = "rbxasset://textures/ui/Controls/xboxX.png",
	[Enum.KeyCode.ButtonY] = "rbxasset://textures/ui/Controls/xboxY.png",
	[Enum.KeyCode.ButtonA] = "rbxasset://textures/ui/Controls/xboxA.png",
	[Enum.KeyCode.ButtonB] = "rbxasset://textures/ui/Controls/xboxB.png",
	[Enum.KeyCode.ButtonSelect] = "rbxasset://textures/ui/Controls/xboxmenu.png",
	[Enum.KeyCode.ButtonL1] = "rbxasset://textures/ui/Controls/xboxLS.png",
	[Enum.KeyCode.ButtonR1] = "rbxasset://textures/ui/Controls/xboxRS.png",
}
local GAMEPAD_SMALL_IMAGE_SIZE = UDim2.fromOffset(28, 28)

local gamepadLargeImages = {
	[Enum.KeyCode.DPadLeft] = "rbxasset://textures/ui/Controls/dpadLeft.png",
	[Enum.KeyCode.DPadRight] = "rbxasset://textures/ui/Controls/dpadRight.png",
	[Enum.KeyCode.DPadUp] = "rbxasset://textures/ui/Controls/dpadUp.png",
	[Enum.KeyCode.DPadDown] = "rbxasset://textures/ui/Controls/dpadDown.png",
}
local GAMEPAD_LARGE_IMAGE_SIZE = UDim2.fromOffset(30, 30)

local keyboardButtonImage = {
	[Enum.KeyCode.Backspace] = "rbxasset://textures/ui/Controls/backspace.png",
	[Enum.KeyCode.Return] = "rbxasset://textures/ui/Controls/return.png",
	[Enum.KeyCode.LeftShift] = "rbxasset://textures/ui/Controls/shift.png",
	[Enum.KeyCode.RightShift] = "rbxasset://textures/ui/Controls/shift.png",
	[Enum.KeyCode.Tab] = "rbxasset://textures/ui/Controls/tab.png",
}
local KEYBOARD_BUTTON_IMAGE_SIZE = UDim2.fromOffset(45, 45)

local keyboardButtonIconMapping = {
	["'"] = "rbxasset://textures/ui/Controls/apostrophe.png",
	[","] = "rbxasset://textures/ui/Controls/comma.png",
	["`"] = "rbxasset://textures/ui/Controls/graveaccent.png",
	["."] = "rbxasset://textures/ui/Controls/period.png",
	[" "] = "rbxasset://textures/ui/Controls/spacebar.png",
}

local keyCodeToTextMapping = {
	[Enum.KeyCode.LeftControl] = "Ctrl",
	[Enum.KeyCode.RightControl] = "Ctrl",
	[Enum.KeyCode.LeftAlt] = "Alt",
	[Enum.KeyCode.RightAlt] = "Alt",
	[Enum.KeyCode.F1] = "F1",
	[Enum.KeyCode.F2] = "F2",
	[Enum.KeyCode.F3] = "F3",
	[Enum.KeyCode.F4] = "F4",
	[Enum.KeyCode.F5] = "F5",
	[Enum.KeyCode.F6] = "F6",
	[Enum.KeyCode.F7] = "F7",
	[Enum.KeyCode.F8] = "F8",
	[Enum.KeyCode.F9] = "F9",
	[Enum.KeyCode.F10] = "F10",
	[Enum.KeyCode.F11] = "F11",
	[Enum.KeyCode.F12] = "F12",
}

local KeyBarTile = Roact.PureComponent:extend("KeyBarTile")

function KeyBarTile:init(props)
	assert(props.KeyCode ~= nil)
end

function KeyBarTile:render()
	local props = self.props
	local style = props.Stylizer
	
	local keyCode = props.KeyCode
	local buttonTextImage = nil
	local buttonTextString = UserInputService:GetStringForKeyCode(keyCode)

	-- Try to find an image for this keyCode
	buttonTextImage = keyboardButtonImage[keyCode]
	local buttonImageSize = KEYBOARD_BUTTON_IMAGE_SIZE
	if buttonTextImage == nil then
		buttonTextImage = keyboardButtonIconMapping[buttonTextString]
	end
	if buttonTextImage == nil then
		buttonTextImage = gamepadLargeImages[keyCode]
		buttonImageSize = GAMEPAD_LARGE_IMAGE_SIZE
	end

	if buttonTextImage == nil then
		buttonTextImage = gamepadSmallImages[keyCode]
		buttonImageSize = GAMEPAD_SMALL_IMAGE_SIZE
	end

	-- Try to use the actual character instead of the keycode name:
	local keyCodeMappedText = keyCodeToTextMapping[keyCode]
	if keyCodeMappedText then
		buttonTextString = keyCodeMappedText
	end
	if not buttonTextString or string.len(buttonTextString) == 0 then
		buttonTextString = keyCode.Name
	end
	
	if buttonTextImage then
		return Roact.createElement(Pane, {
			Style = "KeyTileBox",
			Size = props.Size,
			BackgroundTransparency = props.BackgroundTransparency,
			LayoutOrder = props.LayoutOrder,
		}, {
			Image = Roact.createElement("ImageLabel", {
				Image = buttonTextImage,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				BackgroundTransparency = 1,
				Size = buttonImageSize,
				ImageTransparency = props.ForegroundTransparency,
			}),
		})
	else
		return Roact.createElement(Pane, {
			Style = "KeyTileBox",
			Size = props.Size,
			BackgroundTransparency = props.BackgroundTransparency,
			LayoutOrder = props.LayoutOrder,
		}, {
			TextLabel = Roact.createElement("TextLabel", {
				Text = buttonTextString,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				TextScaled = true,
				Font = Enum.Font.SourceSansBold,
				TextSize = 25,
				TextColor3 = style.TextColor,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				TextTransparency = props.ForegroundTransparency,
			}, {
				SizeConstraint = Roact.createElement("UITextSizeConstraint", {
					MaxTextSize = 25,
					MinTextSize = 5,
				}),
			}),
		})
	end
end

KeyBarTile = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
})(KeyBarTile)

return KeyBarTile
