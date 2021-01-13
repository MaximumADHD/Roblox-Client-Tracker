local UserInputService = game:GetService("UserInputService")

local key = Enum.KeyCode
local input = Enum.UserInputType

local ControlLayouts = {
	KEYBOARD = "Keyboard",
	GAMEPAD = "Gamepad",
	-- TOUCH = "Touch",
}

local inputToControlTypeMap = {
	[Enum.UserInputType.MouseButton2] = ControlLayouts.KEYBOARD,
	[Enum.UserInputType.MouseButton3] = ControlLayouts.KEYBOARD,
	[Enum.UserInputType.MouseWheel] = ControlLayouts.KEYBOARD,
	[Enum.UserInputType.MouseMovement] = ControlLayouts.KEYBOARD,
	[Enum.UserInputType.Keyboard] = ControlLayouts.KEYBOARD,

	[Enum.UserInputType.Gamepad1] = ControlLayouts.GAMEPAD,
	[Enum.UserInputType.Gamepad2] = ControlLayouts.GAMEPAD,
	[Enum.UserInputType.Gamepad3] = ControlLayouts.GAMEPAD,
	[Enum.UserInputType.Gamepad4] = ControlLayouts.GAMEPAD,
	[Enum.UserInputType.Gamepad5] = ControlLayouts.GAMEPAD,
	[Enum.UserInputType.Gamepad6] = ControlLayouts.GAMEPAD,
	[Enum.UserInputType.Gamepad7] = ControlLayouts.GAMEPAD,
	[Enum.UserInputType.Gamepad8] = ControlLayouts.GAMEPAD,

	--[Enum.UserInputType.Touch] = ControlLayouts.TOUCH,
}

--[[
	Single inputs separated by slashes are passed as-is into the `inputs` table.
	inputs = {key.Up, key.W}
	> [↑] / [W]

	Inputs requiring multiple keypresses (for example, Cmd + Shift + 3) need to wrapped in another table.
	inputs = {{key.Command, key.LeftShift, key.Three}}
	> [Cmd] + [Shift] + [3]

	Grouped inputs and singular inputs can be separated by slashes like so:
	inputs = {key.Up, {key.Command, key.LeftShift, key.Three}, key.W}
	> [↑] / [Cmd] + [Shift] + [3] / [W]
]]

local keybinds = {
	{
		title = "CoreScripts.InGameMenu.Controls.CharacterMovementTitle",
		controls = {
			{desc = "CoreScripts.InGameMenu.Controls.MoveForward", inputs = {key.Up, key.W}},
			{desc = "CoreScripts.InGameMenu.Controls.MoveBackward", inputs = {key.Down, key.S}},
			{desc = "CoreScripts.InGameMenu.Controls.MoveLeft", inputs = {key.A}},
			{desc = "CoreScripts.InGameMenu.Controls.MoveRight", inputs = {key.D}},
			{desc = "CoreScripts.InGameMenu.Controls.Jump", inputs = {key.Space}},
		}
	},
	{
		title = "CoreScripts.InGameMenu.Controls.CameraMovementTitle",
		controls = {
			{desc = "CoreScripts.InGameMenu.Controls.RotateCamera", inputs = {key.Left, key.Right, input.MouseButton2}},
			{desc = "CoreScripts.InGameMenu.Controls.ZoomInOutCamera", inputs = {input.MouseWheel}},
			{desc = "CoreScripts.InGameMenu.Controls.ZoomInCamera", inputs = {key.I}},
			{desc = "CoreScripts.InGameMenu.Controls.ZoomOutCamera", inputs = {key.O}},
			{desc = "CoreScripts.InGameMenu.Controls.MouseLock", inputs = {key.LeftShift}}
		}
	},
	{
		title = "CoreScripts.InGameMenu.Controls.AccessoriesTitle",
		controls = {
			-- The list property here causes the inputs to render without
			-- dividers and with an elipses at the end. ([1][2][3]...)
			{desc = "CoreScripts.InGameMenu.Controls.EquipUnequipTools", inputs = {key.One , key.Two, key.Three}, list = true},
			{desc = "CoreScripts.InGameMenu.Controls.DropTool", inputs = {key.Backspace}},
			{desc = "CoreScripts.InGameMenu.Controls.UseTool", inputs = {input.MouseButton1}},
		}
	},
	{
		title = "CoreScripts.InGameMenu.Controls.MenuItemsTitle",
		controls = {
			{desc = "CoreScripts.InGameMenu.Controls.RobloxMenu", inputs = {key.Escape}},
			{desc = "CoreScripts.InGameMenu.Controls.Backpack", inputs = {key.Tilde}},
			{desc = "CoreScripts.InGameMenu.Controls.Playerlist", inputs = {key.Tab}},
			{desc = "CoreScripts.InGameMenu.Controls.Chat", inputs = {key.Slash}},
		}
	},
}

local osxMiscKeybinds = {
	title = "CoreScripts.InGameMenu.Controls.MiscellaneousTitle",
	controls = {
		{desc = "CoreScripts.InGameMenu.Controls.Screenshot", inputs = {{key.LeftSuper, key.LeftShift, key.Three}}},
		{desc = "CoreScripts.InGameMenu.Controls.DevConsole", inputs = {{key.LeftMeta, key.F9}, key.F9}},
		{desc = "CoreScripts.InGameMenu.Controls.GraphicsLevelUp", inputs = {{key.LeftMeta, key.F10}, key.F10}},
		{desc = "CoreScripts.InGameMenu.Controls.GraphicsLevelDown", inputs = {
			{key.LeftMeta, key.LeftShift, key.F10}, {key.LeftShift, key.F10}}},
		{desc = "CoreScripts.InGameMenu.Controls.ToggleFullscreen", inputs = {{key.LeftMeta, key.F11}, key.F11}},
		{desc = "CoreScripts.InGameMenu.Controls.PerformanceStats", inputs =
			{{key.LeftMeta, key.LeftAlt, key.LeftSuper, key.F7}}},
	}
}

local pcMiscKeybinds = {
	title = "CoreScripts.InGameMenu.Controls.MiscellaneousTitle",
	controls = {
		{desc = "CoreScripts.InGameMenu.Controls.Screenshot", inputs = {key.Print}},
		{desc = "CoreScripts.InGameMenu.Controls.RecordVideo", inputs = {key.F12}},
		{desc = "CoreScripts.InGameMenu.Controls.DevConsole", inputs = {key.F9}},
		{desc = "CoreScripts.InGameMenu.Controls.GraphicsLevelUp", inputs = {key.F10}},
		{desc = "CoreScripts.InGameMenu.Controls.GraphicsLevelDown", inputs = {{key.LeftShift, key.F10}}},
		{desc = "CoreScripts.InGameMenu.Controls.ToggleFullscreen", inputs = {key.F11}},
		{desc = "CoreScripts.InGameMenu.Controls.PerformanceStats", inputs = {{key.LeftControl, key.LeftShift, key.F7}}}
	}
}

if UserInputService:GetPlatform() == Enum.Platform.OSX then
	table.insert(keybinds, osxMiscKeybinds)
else
	table.insert(keybinds, pcMiscKeybinds)
end

local gamepadLabels = {
	left = {
		"CoreScripts.InGameMenu.Controls.SwitchToolGamepad",
		"CoreScripts.InGameMenu.Controls.GameMenuToggleGamepad",
		"CoreScripts.InGameMenu.Controls.MoveGamepad",
		"CoreScripts.InGameMenu.Controls.MenuNavigationGamepad",
	},
	right = {
		"CoreScripts.InGameMenu.Controls.UseTool",
		"CoreScripts.InGameMenu.Controls.RobloxMenu",
		"CoreScripts.InGameMenu.Controls.BackGamepad",
		"CoreScripts.InGameMenu.Controls.Jump",
	},
	camera = {
		"CoreScripts.InGameMenu.Controls.RotateCameraGamepad",
		"CoreScripts.InGameMenu.Controls.CameraZoomGamepad",
	}
}

return {
	ControlLayouts = ControlLayouts,
	keybinds = keybinds,
	inputToControlTypeMap = inputToControlTypeMap,
	gamepadLabels = gamepadLabels,
}