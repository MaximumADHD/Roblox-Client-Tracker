local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Chip = require(Foundation.Components.Chip)
local ChipSize = require(Foundation.Enums.ChipSize)
local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
local Rating = require(Foundation.Components.Rating)
local RatingValue = require(Foundation.Enums.RatingValue)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local IconName = require(Packages.BuilderIcons).Icon

type RatingValue = RatingValue.RatingValue
type ChipSize = ChipSize.ChipSize

local TRUNCATION_TEXT = "99% of players liked this experience"

local VALUE_ORDER: { RatingValue } = {
	RatingValue.ThumbUp,
	RatingValue.ThumbDown,
	RatingValue.None,
}

local function PlaygroundStory(props: {
	controls: {
		text: string,
		size: ChipSize,
		value: RatingValue,
	},
}): React.ReactNode
	local controls = props.controls

	return React.createElement(Rating, {
		text = controls.text,
		size = controls.size,
		value = controls.value,
		onThumbUp = function()
			print("Thumb up")
		end,
		onThumbDown = function()
			print("Thumb down")
		end,
	})
end

local function Section(props: {
	layoutOrder: number,
	name: string,
	iconName: string?,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.layoutOrder,
	}, {
		Title = React.createElement(View, {
			tag = "row gap-xsmall align-y-center auto-xy",
			LayoutOrder = 1,
		}, {
			Icon = if props.iconName
				then React.createElement(Icon, {
					name = props.iconName,
					size = IconSize.Small,
					LayoutOrder = 1,
				})
				else nil,
			Label = React.createElement(Text, {
				Text = props.name,
				tag = "text-label-medium content-default auto-xy",
				LayoutOrder = 2,
			}),
		}),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large align-y-start auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function LabeledRating(props: {
	label: string,
	layoutOrder: number,
	size: ChipSize?,
	value: RatingValue,
	text: string?,
})
	return React.createElement(View, {
		tag = "col gap-small auto-xy",
		LayoutOrder = props.layoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Rating = React.createElement(Rating, {
			text = props.text or "99% liked",
			size = props.size,
			value = props.value,
			onThumbUp = function() end,
			onThumbDown = function() end,
			LayoutOrder = 2,
		}),
	})
end

local function ChipGroup(props: { children: React.ReactNode })
	return React.createElement(View, {
		tag = "row wrap gap-small size-full-0 auto-y",
	}, props.children)
end

local function SiblingRow(props: { layoutOrder: number, size: ChipSize })
	return React.createElement(View, {
		tag = "col gap-small size-full-0 auto-y",
		LayoutOrder = props.layoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.size :: string,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		ChipGroup = React.createElement(View, {
			tag = "size-full-0 auto-y",
			LayoutOrder = 2,
		}, {
			Group = React.createElement(ChipGroup, {}, {
				Rating = React.createElement(Rating, {
					text = "Rating",
					size = props.size,
					value = RatingValue.None,
					onThumbUp = function() end,
					onThumbDown = function() end,
					LayoutOrder = 1,
				}),
				Chip1 = React.createElement(Chip, {
					text = "Chip",
					size = props.size,
					onActivated = function() end,
					LayoutOrder = 2,
				}),
				Chip2 = React.createElement(Chip, {
					text = "Chip",
					size = props.size,
					onActivated = function() end,
					LayoutOrder = 3,
				}),
			}),
		}),
	})
end

local function StyleStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Sizes = React.createElement(
			Section,
			{
				layoutOrder = 1,
				name = "Sizes (static)",
				iconName = IconName.Image,
				contentTag = "row gap-large align-y-start auto-xy wrap",
			},
			Dash.map(ChipSize, function(size, index)
				return React.createElement(LabeledRating, {
					label = size,
					layoutOrder = index,
					size = size,
					value = RatingValue.None,
				})
			end)
		),
	})
end

local function ControlledImplementationExample(): React.ReactNode
	local value: RatingValue, setValue = React.useState(RatingValue.None :: RatingValue)
	local text, setText = React.useState("99% liked")

	return React.createElement(Rating, {
		text = text,
		value = value,
		onThumbUp = function()
			setValue(RatingValue.ThumbUp)
			setText("100% liked")
		end,
		onThumbDown = function()
			setValue(RatingValue.ThumbDown)
			setText("99% liked")
		end,
	})
end

local function ControlledStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		ControlledImplementation = React.createElement(Section, {
			layoutOrder = 1,
			name = "Controlled implementation (dynamic)",
			iconName = IconName.HandHalfEllipse,
			contentTag = "auto-xy",
		}, React.createElement(ControlledImplementationExample)),
		Values = React.createElement(
			Section,
			{
				layoutOrder = 2,
				name = "Value (static)",
				iconName = IconName.Image,
				contentTag = "row gap-large align-y-start auto-xy wrap",
			},
			Dash.map(VALUE_ORDER, function(value, index)
				return React.createElement(LabeledRating, {
					label = value,
					layoutOrder = index,
					value = value,
				})
			end)
		),
	})
end

local function TruncatedRating(props: { layoutOrder: number, size: ChipSize })
	return React.createElement(View, {
		tag = "col gap-small size-full-0 auto-y",
		LayoutOrder = props.layoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.size :: string,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Constrained = React.createElement(View, {
			tag = "size-full-0 auto-y padding-small radius-medium bg-surface-100",
			sizeConstraint = {
				MaxSize = Vector2.new(200, math.huge),
			},
			LayoutOrder = 2,
		}, {
			Rating = React.createElement(Rating, {
				text = TRUNCATION_TEXT,
				size = props.size,
				value = RatingValue.None,
				onThumbUp = function() end,
				onThumbDown = function() end,
			}),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Truncation = React.createElement(
			Section,
			{
				layoutOrder = 1,
				name = "Truncation (static)",
				iconName = IconName.Image,
				contentTag = "col gap-large size-full-0 auto-y",
			},
			Dash.map(ChipSize, function(size, index)
				return React.createElement(TruncatedRating, {
					layoutOrder = index,
					size = size,
				})
			end)
		),
	})
end

local function InContextStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Chips = React.createElement(Section, {
			layoutOrder = 1,
			name = "Chips (static)",
			iconName = IconName.Image,
			contentTag = "col gap-medium size-full-0 auto-y",
		}, {
			Small = React.createElement(SiblingRow, {
				layoutOrder = 1,
				size = ChipSize.Small,
			}),
			Medium = React.createElement(SiblingRow, {
				layoutOrder = 2,
				size = ChipSize.Medium,
			}),
			Large = React.createElement(SiblingRow, {
				layoutOrder = 3,
				size = ChipSize.Large,
			}),
		}),
	})
end

return {
	summary = 'Rating is a component that displays user voting feedback with upvote and downvote options. It shows a percentage of positive votes (e.g., "99% liked") and provides icon buttons for voting.',
	stories = {
		{
			name = "Controls output",
			story = PlaygroundStory,
		},
		{
			name = "Style",
			story = StyleStory,
		},
		{
			name = "Controlled component",
			story = ControlledStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
		{
			name = "In context",
			summary = "Rating should remain visually consistent with Chips.",
			story = InContextStory,
		},
	},
	controls = {
		text = "99% liked",
		size = Dash.values(ChipSize),
		value = Dash.values(RatingValue),
	},
}
