local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local IconName = BuilderIcons.Icon

local getBuilderIconForKeycode = require(Foundation.Utility.getBuilderIconForKeycode)

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local VariantsContext = require(Foundation.Providers.Style.VariantsContext)

local START_GRADIENT = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.25, 0),
	NumberSequenceKeypoint.new(1, 1),
})

local START_GRADIENT_HOVER = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.4, 0),
	NumberSequenceKeypoint.new(1, 1),
})

local END_GRADIENT = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1),
	NumberSequenceKeypoint.new(0.75, 0),
	NumberSequenceKeypoint.new(1, 0),
})

local END_GRADIENT_HOVER = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1),
	NumberSequenceKeypoint.new(0.6, 0),
	NumberSequenceKeypoint.new(1, 0),
})

export type ScrimVariants = {
	fade: number,
	gradient: NumberSequence,
	hoverGradient: NumberSequence,
	directionIcon: string,
	iconAlignmentTag: string,
}

local function variantsFactory(tokens: Tokens)
	-- A scrim is the square its chevron sits in, taken from the row it overlays, plus this much
	-- fade running back over the content.
	local fade = tokens.Size.Size_1000

	local gradient: { [Enum.HorizontalAlignment]: { [boolean]: NumberSequence } } = {
		[Enum.HorizontalAlignment.Right] = {
			[true] = END_GRADIENT_HOVER,
			[false] = END_GRADIENT,
		},
		[Enum.HorizontalAlignment.Left] = {
			[true] = START_GRADIENT_HOVER,
			[false] = START_GRADIENT,
		},
	}

	local directionIcon: { [Enum.HorizontalAlignment]: { [Enum.PreferredInput]: string } } = {
		[Enum.HorizontalAlignment.Right] = {
			[Enum.PreferredInput.Gamepad] = getBuilderIconForKeycode(Enum.KeyCode.ButtonR1)
				or IconName.ChevronSmallRight,
			[Enum.PreferredInput.KeyboardAndMouse] = IconName.ChevronSmallRight,
			[Enum.PreferredInput.Touch] = IconName.ChevronSmallRight,
		},
		[Enum.HorizontalAlignment.Left] = {
			[Enum.PreferredInput.Gamepad] = getBuilderIconForKeycode(Enum.KeyCode.ButtonL1)
				or IconName.ChevronSmallLeft,
			[Enum.PreferredInput.KeyboardAndMouse] = IconName.ChevronSmallLeft,
			[Enum.PreferredInput.Touch] = IconName.ChevronSmallLeft,
		},
	}

	local iconAlignmentTag: { [Enum.HorizontalAlignment]: string } = {
		[Enum.HorizontalAlignment.Right] = "anchor-center-right position-center-right",
		[Enum.HorizontalAlignment.Left] = "anchor-center-left position-center-left",
	}

	return {
		fade = fade,
		directionIcon = directionIcon,
		gradient = gradient,
		iconAlignmentTag = iconAlignmentTag,
	}
end

return function(tokens: Tokens, alignment: Enum.HorizontalAlignment, preferredInput: Enum.PreferredInput): ScrimVariants
	local variants = VariantsContext.useVariants("OverflowScrollContainerScrim", variantsFactory, tokens)

	return {
		fade = variants.fade,
		gradient = variants.gradient[alignment][false],
		hoverGradient = variants.gradient[alignment][true],
		directionIcon = variants.directionIcon[alignment][preferredInput],
		iconAlignmentTag = variants.iconAlignmentTag[alignment],
	}
end
