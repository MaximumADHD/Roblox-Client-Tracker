local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local Flags = require(Foundation.Utility.Flags)

local React = require(Packages.React)

local Motion = require(Packages.Motion)
local TransitionPreset = Motion.TransitionPreset
type TransitionConfig = Motion.TransitionConfig

type InputMotionConfig = {
	transparency: React.Binding<number>,
	backgroundColor: React.Binding<Color3>,
	transition: {
		default: TransitionConfig,
		[string]: TransitionConfig?,
	}?,
}

export type InputColors = {
	backgroundStyle: ColorStyleValue?,
	hoverStyle: ColorStyleValue?,
	checkedStyle: ColorStyleValue?,
	labelStyle: ColorStyleValue?,
	labelHoverStyle: ColorStyleValue?,
}

export type InputMotionStates = {
	Default: InputMotionConfig,
	Hover: InputMotionConfig,
	Checked: InputMotionConfig,
}

local function useInputMotionStates(
	tokens: Tokens,
	colorsOrCheckedStyle: (InputColors | ColorStyleValue)?
): InputMotionStates
	local defaultStyle: ColorStyleValue
	local hoverStyle: ColorStyleValue
	local checkedStyle: ColorStyleValue
	local labelStyle: ColorStyleValue
	local labelHoverStyle: ColorStyleValue
	local colors: InputColors? = colorsOrCheckedStyle :: InputColors?

	if Flags.FoundationToggleVisualUpdate then
		defaultStyle = if colors and colors.backgroundStyle
			then colors.backgroundStyle
			else tokens.Color.Content.Default
		hoverStyle = if colors and colors.hoverStyle then colors.hoverStyle else tokens.Color.Content.Emphasis
		checkedStyle = if colors and colors.checkedStyle
			then colors.checkedStyle
			else tokens.Color.ActionSubEmphasis.Background
		labelStyle = if colors and colors.labelStyle then colors.labelStyle else tokens.Color.Content.Default
		labelHoverStyle = if colors and colors.labelHoverStyle
			then colors.labelHoverStyle
			else tokens.Color.Content.Emphasis
	else
		local colorStyle: ColorStyleValue? = colorsOrCheckedStyle :: ColorStyleValue
		defaultStyle = tokens.Color.Content.Default
		hoverStyle = tokens.Color.Content.Emphasis
		labelStyle = tokens.Color.Content.Default
		labelHoverStyle = tokens.Color.Content.Emphasis
		checkedStyle = if colorStyle then colorStyle else tokens.Color.ActionSubEmphasis.Background
	end

	return {
		Default = Motion.createState({
			backgroundStyle = {
				Color3 = defaultStyle.Color3,
				Transparency = if colors and colors.backgroundStyle then colors.backgroundStyle.Transparency else 1,
			},
			strokeStyle = defaultStyle,
			labelStyle = labelStyle,
		}, {
			default = Motion.transition(TransitionPreset.Default, { duration = 0.2 }),
			transparency = Motion.transition({ easingStyle = Enum.EasingStyle.Linear, duration = 0.2 }),
		}),
		Hover = Motion.createState({
			backgroundStyle = {
				Color3 = hoverStyle.Color3,
				Transparency = if colors and colors.hoverStyle then colors.hoverStyle.Transparency else 1,
			},
			strokeStyle = hoverStyle,
			labelStyle = labelHoverStyle,
		}, {
			default = Motion.transition(TransitionPreset.Default, { duration = 0 }),
			transparency = Motion.transition({ easingStyle = Enum.EasingStyle.Linear, duration = 0 }),
		}),
		Checked = Motion.createState({
			-- Stroke and background color are the same for checked state
			backgroundStyle = checkedStyle,
			strokeStyle = checkedStyle,
			labelStyle = labelHoverStyle,
		}, {
			default = Motion.transition(TransitionPreset.Default, { duration = 0.2 }),
			transparency = Motion.transition({ easingStyle = Enum.EasingStyle.Linear, duration = 0.2 }),
		}),
	}
end

return useInputMotionStates
