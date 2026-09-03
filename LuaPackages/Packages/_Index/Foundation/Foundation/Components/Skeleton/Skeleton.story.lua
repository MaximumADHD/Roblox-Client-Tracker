local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Radius = require(Foundation.Enums.Radius)
type Radius = Radius.Radius
local Avatar = require(Foundation.Components.Avatar)
local AvatarSize = require(Foundation.Enums.AvatarSize)
local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local InputSize = require(Foundation.Enums.InputSize)
local PreferencesProvider = require(Foundation.Providers.Preferences)
local Skeleton = require(Foundation.Components.Skeleton)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type StorySize = {
	size: UDim2,
	title: string,
}

type StoryControlGroup = {
	label: string,
	controls: { string },
}

local EXAMPLE_SIZE_CONTROL = "Size (examples)"
local CUSTOM_SIZE_CONTROL = "Size (custom)"

local SIZE_CONTROL_GROUP: StoryControlGroup = {
	label = "Size",
	controls = { EXAMPLE_SIZE_CONTROL, CUSTOM_SIZE_CONTROL },
}

local SKELETON_SIZE_EXAMPLES: { StorySize } = {
	{
		size = UDim2.fromOffset(48, 48),
		title = "Small square",
	},
	{
		size = UDim2.fromOffset(200, 16),
		title = "Wide bar",
	},
	{
		size = UDim2.fromOffset(120, 120),
		title = "Medium square",
	},
	{
		size = UDim2.fromOffset(280, 140),
		title = "Wide rectangle",
	},
}

local EMPTY_EXAMPLE_SIZE = ""
local CUSTOM_SIZE_PLACEHOLDER = "e.g. 120, 120"
local DEFAULT_SIZE = UDim2.fromScale(1, 1)

local function trim(value: string): string
	return (string.gsub(string.gsub(value, "^%s+", ""), "%s+$", ""))
end

local function formatSizeString(size: UDim2): string
	return `UDim2.fromOffset({size.X.Offset}, {size.Y.Offset})`
end

local function parseSizeString(value: string): UDim2?
	local trimmed = trim(value)
	if trimmed == "" then
		return nil
	end

	local width, height = string.match(trimmed, "^(%d+)%s*,%s*(%d+)$")
	if width and height then
		return UDim2.fromOffset(tonumber(width) :: number, tonumber(height) :: number)
	end

	width, height = string.match(trimmed, "^(%d+)%s*[x×]%s*(%d+)$")
	if width and height then
		return UDim2.fromOffset(tonumber(width) :: number, tonumber(height) :: number)
	end

	return nil
end

local function isInactiveCustomSize(customSize: string): boolean
	local trimmed = trim(customSize)
	return trimmed == "" or trimmed == CUSTOM_SIZE_PLACEHOLDER
end

local function formatDisplayLabel(example: StorySize): string
	return `{example.title} ({formatSizeString(example.size)})`
end

local function toExampleSizeOptions(examples: { StorySize }): { [string]: UDim2 }
	local options: { [string]: UDim2 } = {}
	for _, example in examples do
		options[formatSizeString(example.size)] = example.size
	end
	return options
end

local function toExampleSizeLabels(examples: { StorySize }): { string }
	local labels: { string } = {}
	for _, example in examples do
		table.insert(labels, formatSizeString(example.size))
	end
	table.insert(labels, EMPTY_EXAMPLE_SIZE)
	return labels
end

local function resolveSize(
	exampleSize: string,
	customSize: string,
	exampleOptions: { [string]: UDim2 },
	fallback: UDim2
): UDim2
	local parsedCustomSize = if isInactiveCustomSize(customSize) then nil else parseSizeString(customSize)
	if parsedCustomSize then
		return parsedCustomSize
	end

	if exampleSize ~= EMPTY_EXAMPLE_SIZE then
		local example = exampleOptions[exampleSize]
		if example then
			return example
		end
	end

	return fallback
end

local EXAMPLE_SIZE_OPTIONS = toExampleSizeOptions(SKELETON_SIZE_EXAMPLES)
local EXAMPLE_SIZE_LABELS = toExampleSizeLabels(SKELETON_SIZE_EXAMPLES)

local IN_CONTEXT_AVATAR_USER_ID = 24813339
local IN_CONTEXT_BUTTON_SIZE = UDim2.fromOffset(140, 36)
local REDUCED_MOTION_EXAMPLE_SIZE = UDim2.fromOffset(160, 160)

local RADIUS_OPTIONS = {
	Radius.None,
	Radius.XSmall,
	Radius.Small,
	Radius.Medium,
	Radius.Large,
	Radius.Circle,
} :: { Radius }

type StoryControls = {
	[string]: string | { string } | { Radius },
}

local DEFAULT_CONTROLS: StoryControls = {
	radius = RADIUS_OPTIONS,
	[EXAMPLE_SIZE_CONTROL] = EXAMPLE_SIZE_LABELS,
	[CUSTOM_SIZE_CONTROL] = CUSTOM_SIZE_PLACEHOLDER,
}

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
			tag = props.contentTag or "row gap-large auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function LabeledSkeleton(props: {
	label: string,
	LayoutOrder: number,
	radius: Radius?,
	size: UDim2?,
})
	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Skeleton = React.createElement(Skeleton, {
			radius = props.radius,
			Size = props.size or UDim2.fromOffset(100, 100),
			LayoutOrder = 2,
		}),
	})
end

local function InContextPair(props: {
	label: string,
	LayoutOrder: number,
	content: React.ReactNode,
	skeletonRadius: Radius,
	skeletonSize: UDim2,
})
	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Row = React.createElement(View, {
			tag = "row align-y-center gap-xlarge auto-xy",
			LayoutOrder = 2,
		}, {
			Content = React.createElement(View, {
				tag = "auto-xy",
				LayoutOrder = 1,
			}, props.content),
			Skeleton = React.createElement(Skeleton, {
				radius = props.skeletonRadius,
				Size = props.skeletonSize,
				LayoutOrder = 2,
			}),
		}),
	})
end

local function MotionExample(props: {
	label: string,
	description: string,
	LayoutOrder: number,
	reducedMotion: boolean,
})
	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Description = React.createElement(Text, {
			Text = props.description,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			LayoutOrder = 2,
		}),
		Provider = React.createElement(PreferencesProvider, {
			reducedMotion = props.reducedMotion,
		}, {
			Skeleton = React.createElement(Skeleton, {
				radius = Radius.Small,
				Size = REDUCED_MOTION_EXAMPLE_SIZE,
			}),
		}),
	})
end

local function PlaygroundStory(props)
	local controls = props.controls

	return React.createElement(Skeleton, {
		radius = controls.radius,
		Size = resolveSize(
			controls[EXAMPLE_SIZE_CONTROL],
			controls[CUSTOM_SIZE_CONTROL],
			EXAMPLE_SIZE_OPTIONS,
			DEFAULT_SIZE
		),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		Size = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Size (these are example sizes)",
				contentTag = "row gap-xlarge auto-xy wrap",
			},
			Dash.map(SKELETON_SIZE_EXAMPLES, function(entry: StorySize, index)
				return React.createElement(LabeledSkeleton, {
					label = formatDisplayLabel(entry),
					LayoutOrder = index,
					radius = Radius.Small,
					size = entry.size,
				})
			end)
		),
	})
end

local function RoundingStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = "row wrap gap-large auto-xy padding-large bg-surface-0",
		},
		Dash.map(RADIUS_OPTIONS, function(radius, index)
			return React.createElement(LabeledSkeleton, {
				label = radius,
				LayoutOrder = index,
				radius = radius,
				size = UDim2.fromOffset(80, 80),
			})
		end)
	)
end

local function InContextStory(): React.ReactNode
	local avatarExample = SKELETON_SIZE_EXAMPLES[1]
	local textExample = SKELETON_SIZE_EXAMPLES[2]

	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		InContext = React.createElement(Section, {
			LayoutOrder = 1,
			name = "In context",
			contentTag = "col gap-xlarge align-x-left auto-xy",
		}, {
			Avatar = React.createElement(InContextPair, {
				label = "Avatar",
				LayoutOrder = 1,
				skeletonRadius = Radius.Circle,
				skeletonSize = avatarExample.size,
				content = React.createElement(Avatar, {
					userId = IN_CONTEXT_AVATAR_USER_ID,
					size = AvatarSize.Medium,
				}) :: React.ReactNode,
			}),
			Text = React.createElement(InContextPair, {
				label = "Text",
				LayoutOrder = 2,
				skeletonRadius = Radius.Small,
				skeletonSize = textExample.size,
				content = React.createElement(Text, {
					Text = "Display name",
					tag = "auto-xy text-body-medium content-default",
				}) :: React.ReactNode,
			}),
			Button = React.createElement(InContextPair, {
				label = "Button",
				LayoutOrder = 3,
				skeletonRadius = Radius.Small,
				skeletonSize = IN_CONTEXT_BUTTON_SIZE,
				content = React.createElement(Button, {
					text = "Button",
					variant = ButtonVariant.Emphasis,
					size = InputSize.Medium,
					onActivated = function() end,
				}) :: React.ReactNode,
			}),
		}),
	})
end

local function ReducedMotionStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		ReducedMotion = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Reduced motion",
			contentTag = "row gap-xlarge auto-xy wrap",
		}, {
			Shimmer = React.createElement(MotionExample, {
				label = "Default",
				description = "Scrolling shimmer gradient",
				LayoutOrder = 1,
				reducedMotion = false,
			}),
			Pulse = React.createElement(MotionExample, {
				label = "Reduced motion",
				description = "Pulsating opacity, no gradient",
				LayoutOrder = 2,
				reducedMotion = true,
			}),
		}),
	})
end

return {
	summary = "A placeholder shape shown in place of content while it loads.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "Rounding",
			story = RoundingStory,
		},
		{
			name = "Reduced motion",
			summary = "Compares the default scrolling shimmer with the reduced-motion pulse behavior.",
			story = ReducedMotionStory,
		},
		{
			name = "In context",
			summary = "Common components shown alongside skeleton placeholders that match their dimensions.",
			story = InContextStory,
		},
	},
	controls = DEFAULT_CONTROLS,
	controlGroups = {
		SIZE_CONTROL_GROUP,
	},
}
