local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Chip = require(Foundation.Components.Chip)
local ChipGroup = require(Foundation.Components.ChipGroup)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local ChipGroupVariant = require(Foundation.Enums.ChipGroupVariant)
type ChipGroupVariant = ChipGroupVariant.ChipGroupVariant
local ChipSize = require(Foundation.Enums.ChipSize)
type ChipSize = ChipSize.ChipSize

type ChipGroupItem = ChipGroup.ChipGroupItem
type ChipGroupSize = ChipGroup.ChipGroupSize

local STORY_FRAME_TAG = "padding-y-large bg-surface-0"
local HARNESS_TAG = "size-full-0 auto-y padding-large radius-medium bg-surface-100"

-- ChipGroup omits ChipSize.Large; these are the two sizes it and Chip share.
local SIZE_ORDER: { ChipGroupSize } = {
	ChipSize.Small,
	ChipSize.Medium,
}

local VARIANT_ORDER: { ChipGroupVariant } = {
	ChipGroupVariant.Row,
	ChipGroupVariant.Wrap,
}

local HARNESS_WIDTH = 320
local OVERFLOW_WIDTH = 500
local CHIP_COUNT = 7

local function noop() end

local function Section(props: {
	LayoutOrder: number,
	name: string,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "auto-xy text-label-medium content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag or "col gap-large auto-xy",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function LabeledCell(props: {
	LayoutOrder: number,
	label: string,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = "auto-xy",
			LayoutOrder = 2,
		}, props.children),
	})
end

-- ChipGroup fills its parent's width, so every cell needs a parent of definite length. The surface
-- paints that parent so the width the group lays itself out against is visible.
local function Harness(props: {
	LayoutOrder: number?,
	width: number?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = HARNESS_TAG,
		Size = UDim2.fromOffset(props.width or HARNESS_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, props.children)
end

-- A Row group's root does not clip, and its scroll container anchors the scrims and paging arrows
-- to the nearest clipping ancestor. Only the In context cell supplies one, so the rest of the page
-- shows what a caller gets without it.
local function ClippedGroup(props: {
	chips: { ChipGroupItem },
	size: ChipGroupSize?,
	variant: ChipGroupVariant?,
})
	return React.createElement(View, {
		tag = "size-full-0 auto-y",
		ClipsDescendants = true,
	}, {
		Group = React.createElement(ChipGroup, {
			chips = props.chips,
			size = props.size,
			variant = props.variant,
		}),
	})
end

local function buildChips(count: number): { ChipGroupItem }
	local chips: { ChipGroupItem } = {}
	for index = 1, count do
		table.insert(chips, {
			text = `Chip {index}`,
			onActivated = noop,
		})
	end
	return chips
end

local STATIC_CHIPS = buildChips(CHIP_COUNT)
local OVERFLOW_CHIPS = buildChips(CHIP_COUNT + 10)
local TRIO_CHIPS = buildChips(3)

type PlaygroundControls = {
	size: ChipGroupSize,
	variant: ChipGroupVariant,
}

local function PlaygroundStory(props: { controls: PlaygroundControls })
	local controls = props.controls

	return React.createElement(View, {
		tag = `auto-xy {STORY_FRAME_TAG}`,
	}, {
		Frame = React.createElement(Harness, {}, {
			Group = React.createElement(ChipGroup, {
				chips = STATIC_CHIPS,
				size = controls.size,
				variant = controls.variant,
			}),
		}),
	})
end

local function VariantsStory()
	return React.createElement(
		View,
		{
			tag = `col gap-xxlarge auto-xy {STORY_FRAME_TAG}`,
		},
		Dash.map(VARIANT_ORDER, function(variant, index)
			return React.createElement(LabeledCell, {
				LayoutOrder = index,
				label = variant,
			}, {
				Frame = React.createElement(Harness, {}, {
					Group = React.createElement(ChipGroup, {
						chips = STATIC_CHIPS,
						variant = variant,
					}),
				}),
			})
		end)
	)
end

local function SizingStory()
	return React.createElement(View, {
		tag = `col auto-xy {STORY_FRAME_TAG}`,
	}, {
		Size = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Size",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = size,
				}, {
					Frame = React.createElement(Harness, {}, {
						Group = React.createElement(ChipGroup, {
							chips = TRIO_CHIPS,
							size = size,
							variant = ChipGroupVariant.Wrap,
						}),
					}),
				})
			end)
		),
	})
end

local function SelectionExample(props: {
	LayoutOrder: number,
})
	local checked, setChecked = React.useState({} :: { [number]: boolean })

	local chips: { ChipGroupItem } = {}
	for index = 1, 3 do
		table.insert(chips, {
			text = `Chip {index}`,
			isChecked = checked[index] == true,
			onActivated = function()
				setChecked(function(previous)
					local updated = table.clone(previous)
					updated[index] = not updated[index]
					return updated
				end)
			end,
		})
	end

	return React.createElement(Harness, {
		LayoutOrder = props.LayoutOrder,
	}, {
		Group = React.createElement(ChipGroup, {
			chips = chips,
			variant = ChipGroupVariant.Wrap,
		}),
	})
end

local function ControlledStory()
	return React.createElement(View, {
		tag = `col gap-xxlarge auto-xy {STORY_FRAME_TAG}`,
	}, {
		Selection = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Selection",
		}, {
			Example = React.createElement(SelectionExample, { LayoutOrder = 1 }),
		}),
	})
end

local function InContextStory()
	return React.createElement(View, {
		tag = `col gap-xxlarge auto-xy {STORY_FRAME_TAG}`,
	}, {
		Pairing = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Chip",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = size,
				}, {
					Pair = React.createElement(View, {
						tag = "row align-y-center gap-xlarge auto-xy",
					}, {
						Chip = React.createElement(Chip, {
							LayoutOrder = 1,
							text = "Chip 1",
							size = size :: ChipSize,
							onActivated = noop,
						}),
						Frame = React.createElement(Harness, {
							LayoutOrder = 2,
						}, {
							Group = React.createElement(ChipGroup, {
								chips = TRIO_CHIPS,
								size = size,
								variant = ChipGroupVariant.Wrap,
							}),
						}),
					}),
				})
			end)
		),
		OverflowScrollContainer = React.createElement(Section, {
			LayoutOrder = 2,
			name = "OverflowScrollContainer",
		}, {
			Frame = React.createElement(Harness, {
				LayoutOrder = 1,
				width = OVERFLOW_WIDTH,
			}, {
				Clip = React.createElement(ClippedGroup, {
					chips = OVERFLOW_CHIPS,
					variant = ChipGroupVariant.Row,
				}),
			}),
		}),
	})
end

return {
	summary = "ChipGroup lays a set of Chips out as one scrolling row or a wrapped block at a shared size.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Variants",
			story = VariantsStory,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "Controlled component",
			story = ControlledStory,
		},
		{
			name = "In context",
			story = InContextStory,
		},
	},
	controls = {
		size = SIZE_ORDER,
		variant = VARIANT_ORDER,
	},
}
