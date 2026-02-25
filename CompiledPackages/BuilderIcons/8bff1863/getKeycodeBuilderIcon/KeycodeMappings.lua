local Platform = require(script.Parent.Platform)
local BuilderIcons = require(script.Parent.Parent.Icon)

local function merge(t1: { any }, t2: { any })
	for k, v in t2 do
		t1[k] = v
	end
	return t1
end

local psMappings = {
	ButtonA = BuilderIcons.PsX,
	ButtonB = BuilderIcons.PsCircle,
	ButtonX = BuilderIcons.PsSquare,
	ButtonY = BuilderIcons.PsTriagle,
	ButtonL1 = BuilderIcons.PsL1,
	ButtonL2 = BuilderIcons.PsL2,
	ButtonL3 = BuilderIcons.PsL3,
	ButtonR1 = BuilderIcons.PsR1,
	ButtonR2 = BuilderIcons.PsR2,
	ButtonR3 = BuilderIcons.PsR3,
	Thumbstick1 = BuilderIcons.PsStickLeft,
	Thumbstick2 = BuilderIcons.PsStickRight,
	DPadDown = BuilderIcons.PsDpadDown,
	DPadUp = BuilderIcons.PsDpadUp,
	DPadLeft = BuilderIcons.PsDpadLeft,
	DPadRight = BuilderIcons.PsDpadRight,
}

return {
	[Platform.PS4] = merge(psMappings, {
		ButtonStart = BuilderIcons.Ps4Options,
		ButtonSelect = BuilderIcons.Ps4Share,
	}),
	[Platform.PS5] = merge(psMappings, {
		ButtonStart = BuilderIcons.Ps5Options,
		ButtonSelect = BuilderIcons.Ps5Share,
	}),
	[Platform.Xbox] = {
		ButtonA = BuilderIcons.XboxA,
		ButtonB = BuilderIcons.XboxB,
		ButtonX = BuilderIcons.XboxX,
		ButtonY = BuilderIcons.XboxY,
		ButtonL1 = BuilderIcons.XboxLb,
		ButtonL2 = BuilderIcons.XboxLt,
		ButtonL3 = BuilderIcons.XboxStickLeft,
		ButtonR1 = BuilderIcons.XboxRb,
		ButtonR2 = BuilderIcons.XboxRt,
		ButtonR3 = BuilderIcons.XboxStickRight,
		ButtonStart = BuilderIcons.XboxMenu,
		ButtonSelect = BuilderIcons.XboxView,
		Thumbstick1 = BuilderIcons.XboxStickLeftDirectional,
		Thumbstick2 = BuilderIcons.XboxStickRightDirectional,
		DPadDown = BuilderIcons.XboxDpadDown,
		DPadUp = BuilderIcons.XboxDpadUp,
		DPadLeft = BuilderIcons.XboxDpadLeft,
		DPadRight = BuilderIcons.XboxDpadRight,
	},
	[Platform.Default] = {
		LeftAlt = BuilderIcons.KeyAlt,
		RightAlt = BuilderIcons.KeyAlt,
		Down = BuilderIcons.KeyArrowDown,
		Up = BuilderIcons.KeyArrowUp,
		Left = BuilderIcons.KeyArrowLeft,
		Right = BuilderIcons.KeyArrowRight,
		Asterisk = BuilderIcons.KeyAsterisk,
		Backspace = BuilderIcons.KeyBackspace,
		CapsLock = BuilderIcons.KeyCapsLock,
		Caret = BuilderIcons.KeyCaret,
		Comma = BuilderIcons.KeyComma,
		LeftControl = BuilderIcons.KeyControl,
		RightControl = BuilderIcons.KeyControl,
		Backquote = BuilderIcons.KeyGraveAccent,
		Period = BuilderIcons.KeyPeriod,
		Return = BuilderIcons.KeyReturn,
		LeftShift = BuilderIcons.KeyShift,
		RightShift = BuilderIcons.KeyShift,
		Space = BuilderIcons.KeySpace,
		Tab = BuilderIcons.KeyTab,
	},
	-- add more keys as icons are added
}
