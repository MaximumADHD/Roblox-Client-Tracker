local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local ChipGroup = require(Foundation.Components.ChipGroup)
local ChipGroupVariant = require(Foundation.Enums.ChipGroupVariant)
local ChipSize = require(Foundation.Enums.ChipSize)

type ChipGroupVariant = ChipGroupVariant.ChipGroupVariant
type ChipGroupSize = ChipGroup.ChipGroupSize
type ChipGroupItem = ChipGroup.ChipGroupItem

type Controls = {
	size: ChipGroupSize,
	variant: ChipGroupVariant,
}

local GENRE_LABELS = {
	"Literary Fiction",
	"Historical Fiction",
	"Science Fiction",
	"Fantasy",
	"Magical Realism",
	"Speculative Fiction",
	"Mystery",
	"Thriller",
	"Crime Fiction",
	"Suspense",
	"Horror",
	"Gothic Fiction",
	"Romance",
	"Contemporary Fiction",
	"Adventure",
	"Western",
	"Dystopian",
	"Utopian",
	"Cyberpunk",
	"Steampunk",
	"Alternate History",
	"Psychological Fiction",
	"Satire",
	"Urban Fiction",
}

local function activated(label: string)
	return function()
		print(`ChipGroup: "{label}" activated`)
	end
end

local chips: { ChipGroupItem } = {}
for index, label in GENRE_LABELS do
	chips[index] = {
		text = label,
		isChecked = index == 1,
		onActivated = activated(label),
	}
end

local function PlaygroundStory(props: { controls: Controls }): React.ReactNode
	return React.createElement(ChipGroup, {
		size = props.controls.size,
		variant = props.controls.variant,
		chips = chips,
	})
end

local function RowStory(): React.ReactNode
	return React.createElement(ChipGroup, {
		size = ChipSize.Medium,
		variant = ChipGroupVariant.Row,
		chips = chips,
	})
end

local function WrapStory(): React.ReactNode
	return React.createElement(ChipGroup, {
		size = ChipSize.Medium,
		variant = ChipGroupVariant.Wrap,
		chips = chips,
	})
end

return {
	summary = "ChipGroup",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory,
		},
		{
			name = "Row",
			story = RowStory,
		},
		{
			name = "Wrap",
			story = WrapStory,
		},
	},
	controls = {
		size = {
			ChipSize.Medium,
			ChipSize.Small,
		} :: { ChipGroupSize },
		variant = {
			ChipGroupVariant.Row,
			ChipGroupVariant.Wrap,
		} :: { ChipGroupVariant },
	},
}
