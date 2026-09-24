local Framework = script:FindFirstAncestor("UI").Parent

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local StyleKey = require(Framework.Style.StyleKey)

local StyleModifier = require(Framework.Util.StyleModifier)

local box = {
	Background = StyleKey.MainBackground,
	[StyleModifier.Hover] = {
		Background = StyleKey.ButtonHover,
	},
	[StyleModifier.Selected] = {
		Background = StyleKey.DialogMainButton,
	},
}
local subtleBox = join(box, {
	Background = StyleKey.SubBackground,
})
local subtleBorderBox = join(subtleBox, {
	Border = {
		Color = StyleKey.Border,
	},
})
local roundBox = join(box, {
	Image = "rbxasset://textures/StudioToolbox/RoundedBackground.png",
	SliceCenter = Rect.new(3, 3, 13, 13),
})
local borderBox = join(roundBox, {
	Border = {
		Background = StyleKey.Border,
		Image = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
		SliceCenter = Rect.new(3, 3, 13, 13),
	},
})

local cornerBox = join(box, {
	CornerRadius = UDim.new(0, 4),
})
local inputBox = join(borderBox, {
	Background = StyleKey.InputFieldBackground,
})

local errorBorderBox = join(borderBox, {
	BorderColor = StyleKey.ErrorText,
})

return {
	["&None"] = {
		Transparency = 1,
	},
	["&Box"] = box,
	["&SubtleBox"] = subtleBox,
	["&SubtleBorderBox"] = subtleBorderBox,
	["&RoundBox"] = roundBox,
	["&InputBox"] = inputBox,
	["&BorderBox"] = borderBox,
	["&ErrorBorderBox"] = errorBorderBox,
	["&CornerBox"] = cornerBox,
}
