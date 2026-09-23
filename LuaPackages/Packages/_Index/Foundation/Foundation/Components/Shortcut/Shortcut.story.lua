local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Chip = require(Foundation.Components.Chip)
local Shortcut = require(Foundation.Components.Shortcut)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local ChipSize = require(Foundation.Enums.ChipSize)
local InputPlatform = require(Foundation.Enums.InputPlatform)
local InputSize = require(Foundation.Enums.InputSize)
local Placement = require(Foundation.Enums.Placement)
local ShortcutSeparator = require(Foundation.Enums.ShortcutSeparator)
local ShortcutVariant = require(Foundation.Enums.ShortcutVariant)

local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel
type MatrixGridRow = MatrixGridShared.MatrixGridRow
local KeyCodeCategories = require(Foundation.Utility.Stories.Shared.KeyCodeCategories)
local useInputPlatform = require(Foundation.Utility.useInputPlatform)
local useTokens = require(Foundation.Providers.Style.useTokens)

local keyDisplay = require(script.Parent.keyDisplay)

type InputPlatform = InputPlatform.InputPlatform
type Placement = Placement.Placement
type ShortcutKey = Shortcut.ShortcutKey
type ShortcutSeparator = ShortcutSeparator.ShortcutSeparator
type ShortcutSize = Shortcut.ShortcutSize
type ShortcutVariant = ShortcutVariant.ShortcutVariant

local SIZE_ORDER: { ShortcutSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
}

local VARIANT_ORDER: { ShortcutVariant } = {
	ShortcutVariant.Standard,
	ShortcutVariant.Contrast,
}

local PLACEMENT_ORDER: { Placement } = {
	Placement.Start,
	Placement.End,
}

-- Adjacency is the common case, so the control has to be able to say "no entry".
-- Not a ShortcutSeparator: the array expresses this by leaving the entry out.
local NO_SEPARATOR = "None"

local SEPARATOR_ORDER: { string } = {
	NO_SEPARATOR,
	ShortcutSeparator.Or,
	ShortcutSeparator.More,
}

-- Shared cap shapes; every cap comes from a KeyCode.
local ICON: ShortcutKey = { keyCode = Enum.KeyCode.LeftMeta }
-- An icon from a gamepad rather than a keyboard
local GAMEPAD_ICON: ShortcutKey = { keyCode = Enum.KeyCode.ButtonA }
local SECOND_GAMEPAD_ICON: ShortcutKey = { keyCode = Enum.KeyCode.ButtonB }
local ONE_CHARACTER: ShortcutKey = { keyCode = Enum.KeyCode.C }
-- Two and three characters together: the cap grows with the label from the
-- second character on, so the step between these two is the whole point.
local TWO_CHARACTERS: ShortcutKey = { keyCode = Enum.KeyCode.F7 }
local THREE_CHARACTERS: ShortcutKey = { keyCode = Enum.KeyCode.F10 }
-- The widest a cap gets, and the reason a cap is allowed to stop being square
local WORD: ShortcutKey = { keyCode = Enum.KeyCode.Insert }

local OR: ShortcutKey = { separator = ShortcutSeparator.Or }
local MORE: ShortcutKey = { separator = ShortcutSeparator.More }

-- Neutral example so other axes can vary without the label competing.
local META_KEY: { ShortcutKey } = { ICON }

-- One keyboard pair and one gamepad pair, reused by every story so a difference
-- between two of them is always the axis under test rather than the keys.
local KEYBOARD_PAIR: { ShortcutKey } = { ICON, ONE_CHARACTER }
local GAMEPAD_PAIR: { ShortcutKey } = { GAMEPAD_ICON, SECOND_GAMEPAD_ICON }

type VocabularyEntry = { label: string, keys: { ShortcutKey } }

-- A lone separator says little, so each one is shown against a pair of keys.
-- Or stands between the alternatives it offers; More trails the set it truncates.
local SEPARATORS: { VocabularyEntry } = {
	{
		label = "Or",
		keys = { ICON, OR, ONE_CHARACTER },
	},
	{
		label = "More",
		keys = { ICON, ONE_CHARACTER, MORE },
	},
}

-- Playground picks a KeyCode by name; the audit story has the full enum.
local KEYCODES_BY_NAME: { [string]: Enum.KeyCode } = {
	LeftMeta = Enum.KeyCode.LeftMeta,
	ButtonA = Enum.KeyCode.ButtonA,
	C = Enum.KeyCode.C,
	Slash = Enum.KeyCode.Slash,
	One = Enum.KeyCode.One,
	F9 = Enum.KeyCode.F9,
	Insert = Enum.KeyCode.Insert,
	PageUp = Enum.KeyCode.PageUp,
}

local KEYCODE_ORDER: { string } = {
	"LeftMeta",
	"ButtonA",
	"C",
	"Slash",
	"One",
	"F9",
	"Insert",
	"PageUp",
}

local function StoryShortcut(props: {
	LayoutOrder: number?,
	keys: { ShortcutKey },
	keybinding: string?,
	placement: Placement?,
	size: ShortcutSize?,
	variant: ShortcutVariant?,
})
	return React.createElement(Shortcut, {
		LayoutOrder = props.LayoutOrder,
		shortcut = props.keys,
		keybinding = props.keybinding,
		placement = props.placement,
		size = props.size,
		variant = props.variant,
	})
end

local function Section(props: {
	LayoutOrder: number,
	name: string,
	description: string?,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Heading = React.createElement(View, {
			tag = "col align-x-left gap-xsmall size-full-0 auto-y",
			LayoutOrder = 1,
		}, {
			Title = React.createElement(Text, {
				Text = props.name,
				tag = "auto-xy text-label-medium content-default",
				LayoutOrder = 1,
			}),
			Description = if props.description ~= nil
				then React.createElement(Text, {
					Text = props.description,
					tag = "size-full-0 auto-y text-caption-medium text-wrap text-align-x-left content-muted",
					LayoutOrder = 2,
				})
				else nil,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large align-y-center auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function Labeled(props: {
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
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = "auto-xy",
			LayoutOrder = 2,
		}, props.children),
	})
end

-- Playground: two keys, with or without a connector between them.
local function PlaygroundStory(props: {
	controls: {
		keyCode: string,
		separator: string,
		size: ShortcutSize,
		variant: ShortcutVariant,
		keybinding: string,
		placement: Placement,
	},
}): React.ReactNode
	local controls = props.controls

	-- An empty control clears the label rather than drawing a blank one
	local keybinding = if controls.keybinding ~= "" then controls.keybinding else nil

	local firstKey: ShortcutKey = { keyCode = KEYCODES_BY_NAME[controls.keyCode] }
	local keys: { ShortcutKey } = if controls.separator == NO_SEPARATOR
		then { firstKey, ONE_CHARACTER }
		else { firstKey, { separator = controls.separator :: ShortcutSeparator }, ONE_CHARACTER }

	return React.createElement(View, {
		tag = "row align-x-left align-y-top size-full-2000 padding-large bg-surface-0",
	}, {
		Shortcut = React.createElement(StoryShortcut, {
			keys = keys,
			keybinding = keybinding,
			placement = controls.placement,
			size = controls.size,
			variant = controls.variant,
		}),
	})
end

local SIZE_LABEL_COLUMN_WIDTH = 80
local KEY_CELL_COLUMN_WIDTH = 140
local SEPARATOR_CELL_COLUMN_WIDTH = 180

-- Square content, plus labels that force the cap to grow.
local KEY_SIZING_EXAMPLES: { { header: string, keys: { ShortcutKey } } } = {
	-- Same size, capped keyboard vs capless gamepad.
	{ header = "Keyboard icon", keys = META_KEY },
	{ header = "Gamepad icon", keys = { GAMEPAD_ICON } },
	-- Named for how keyDisplay resolves them, matching the Keycode library chips.
	{ header = "Text: 1 character", keys = { ONE_CHARACTER } },
	{ header = "Text: 2-3 characters", keys = { TWO_CHARACTERS, THREE_CHARACTERS } },
	{ header = "Text: Word", keys = { WORD } },
}

local COMPOSITION_CELL_COLUMN_WIDTH = 180

-- A bare pair, then the same pair carrying both separators, on each input in
-- turn: composition is the same array either way.
local COMPOSITION_EXAMPLES: { { header: string, keys: { ShortcutKey } } } = {
	{ header = "Two keys", keys = KEYBOARD_PAIR },
	{ header = "Two buttons", keys = GAMEPAD_PAIR },
	{
		header = "Keys and separators",
		keys = { ICON, OR, ONE_CHARACTER, MORE },
	},
	{
		header = "Buttons and separators",
		keys = { GAMEPAD_ICON, OR, SECOND_GAMEPAD_ICON, MORE },
	},
}

local function sizeMatrix(
	examples: { { header: string, keys: { ShortcutKey } } },
	cellColumnWidth: number
): React.ReactNode
	local rows: { MatrixGridRow } = Dash.map(SIZE_ORDER, function(size): MatrixGridRow
		return {
			label = matrixLabel(size),
			cells = Dash.map(examples, function(example)
				return React.createElement(StoryShortcut, { keys = example.keys, size = size })
			end),
		}
	end)

	return React.createElement(MatrixGrid, {
		labelColumnWidth = SIZE_LABEL_COLUMN_WIDTH,
		cellColumnWidth = cellColumnWidth,
		columnHeaders = Dash.map(examples, function(example)
			return example.header
		end),
		headerTextAlign = "left",
		cellAlign = "left",
		rows = rows,
	})
end

-- One cap per size, side by side, so the step between them is the whole subject.
-- How each entry kind scales is the Content story's job.
local function SizingStory(): React.ReactNode
	return React.createElement(
		View,
		{ tag = "row align-y-top gap-xxlarge auto-xy padding-large bg-surface-0" },
		Dash.map(SIZE_ORDER, function(size, index)
			return React.createElement(Labeled, { LayoutOrder = index, label = size }, {
				Shortcut = React.createElement(StoryShortcut, { keys = META_KEY, size = size }),
			})
		end)
	)
end

-- Variant down, input kind across, one entry either side of a separator. The
-- Gamepad column repeating itself is the subject: the variant reaches the cap,
-- and neither a gamepad glyph nor a separator has one.
local VARIANT_INPUTS: { { header: string, keys: { ShortcutKey } } } = {
	{
		header = "Keyboard",
		keys = { ICON, OR, ONE_CHARACTER },
	},
	{
		header = "Gamepad",
		keys = { GAMEPAD_ICON, OR, SECOND_GAMEPAD_ICON },
	},
}

local VARIANT_CELL_COLUMN_WIDTH = 140

local function VariantsStory(): React.ReactNode
	local rows: { MatrixGridRow } = Dash.map(VARIANT_ORDER, function(variant): MatrixGridRow
		return {
			label = matrixLabel(variant),
			cells = Dash.map(VARIANT_INPUTS, function(input)
				return React.createElement(StoryShortcut, {
					keys = input.keys,
					size = InputSize.Medium,
					variant = variant,
				})
			end),
		}
	end)

	return React.createElement(View, { tag = "col auto-xy padding-large bg-surface-0" }, {
		Matrix = React.createElement(MatrixGrid, {
			cellColumnWidth = VARIANT_CELL_COLUMN_WIDTH,
			columnHeaders = Dash.map(VARIANT_INPUTS, function(input): string
				return input.header
			end),
			headerTextAlign = "left",
			cellAlign = "left",
			rows = rows,
		}),
	})
end

local ALL_KEYCODES = Enum.KeyCode:GetEnumItems()
table.sort(ALL_KEYCODES, function(a, b)
	return KeyCodeCategories.getKeyCodeName(a) < KeyCodeCategories.getKeyCodeName(b)
end)

local KEYCODES_BY_CATEGORY = KeyCodeCategories.groupByCategory(ALL_KEYCODES)
local NON_EMPTY_CATEGORIES = KeyCodeCategories.getNonEmptyCategories(KEYCODES_BY_CATEGORY)

local ALL_CATEGORIES = "All"

local CATEGORY_OPTIONS: { string } = { ALL_CATEGORIES }
for _, categoryName in NON_EMPTY_CATEGORIES do
	table.insert(CATEGORY_OPTIONS, categoryName)
end

local KEYCODE_COLUMN_WIDTH = 200
local CAP_COLUMN_WIDTH = 140
local RESOLUTION_COLUMN_WIDTH = 80

local NOT_A_KEY = "Not a key"
local ALL_OUTCOMES = "All"

-- Filter by how a KeyCode resolves: icon, gamepad, text, or not a key.
local OUTCOME_OPTIONS: { string } = { ALL_OUTCOMES, "Icon", "GamepadIcon", "Text", NOT_A_KEY }

local function getResolution(keyCode: Enum.KeyCode, platform: InputPlatform): string
	local resolved = keyDisplay.resolveKey(keyCode, platform)
	if resolved == nil then
		return NOT_A_KEY
	end

	return resolved.kind
end

type Outcomes = { [Enum.KeyCode]: string }

local function getOutcomes(platform: InputPlatform): Outcomes
	local outcomes: Outcomes = {}
	for _, keyCode in ALL_KEYCODES do
		outcomes[keyCode] = getResolution(keyCode, platform)
	end
	return outcomes
end

local function filterByOutcome(keyCodes: { Enum.KeyCode }, outcome: string, outcomes: Outcomes): { Enum.KeyCode }
	if outcome == ALL_OUTCOMES then
		return keyCodes
	end

	return Dash.filter(keyCodes, function(keyCode: Enum.KeyCode)
		return outcomes[keyCode] == outcome
	end)
end

local function CategoryTable(props: {
	LayoutOrder: number,
	categoryName: string,
	keyCodes: { Enum.KeyCode },
	outcomes: Outcomes,
}): React.ReactNode
	local rows = Dash.map(props.keyCodes, function(keyCode): MatrixGridRow
		return {
			label = React.createElement(Text, {
				Text = KeyCodeCategories.getKeyCodeName(keyCode),
				tag = "auto-xy text-caption-small text-align-x-left content-default",
			}),
			cells = {
				-- Non-keys show a dash instead of a cap.
				if props.outcomes[keyCode] == NOT_A_KEY
					then React.createElement(Text, {
						Text = "\u{2014}",
						tag = "auto-xy text-caption-small text-align-x-left content-muted",
					})
					else React.createElement(StoryShortcut, { keys = { { keyCode = keyCode } } }),
				React.createElement(Text, {
					Text = props.outcomes[keyCode],
					tag = "auto-xy text-caption-small text-align-x-left content-muted",
				}),
			},
		}
	end)

	return React.createElement(
		Section,
		{
			LayoutOrder = props.LayoutOrder,
			name = `{props.categoryName} ({#props.keyCodes})`,
			contentTag = "auto-xy",
		},
		React.createElement(MatrixGrid, {
			labelColumnWidth = KEYCODE_COLUMN_WIDTH,
			labelColumnHeader = "KeyCode",
			cellColumnWidths = { CAP_COLUMN_WIDTH, RESOLUTION_COLUMN_WIDTH },
			columnHeaders = { "Cap", "Kind" },
			headerTextAlign = "left",
			cellAlign = "left",
			rows = rows,
		})
	)
end

local function FilterChips(props: {
	LayoutOrder: number,
	options: { string },
	getCount: (string) -> number?,
	selected: string,
	onSelect: (string) -> (),
})
	return React.createElement(
		View,
		{ tag = "row wrap gap-small size-full-0 auto-y", LayoutOrder = props.LayoutOrder },
		Dash.map(props.options, function(option, index)
			local count = props.getCount(option)

			return React.createElement(Chip, {
				text = if count ~= nil then `{option} ({count})` else option,
				size = ChipSize.Small,
				isChecked = props.selected == option,
				onActivated = function()
					props.onSelect(option)
				end,
				LayoutOrder = index,
			})
		end)
	)
end

local function KeyCodeLibrarySection(props: { LayoutOrder: number })
	local tokens = useTokens()
	-- Same platform detection as the component.
	local platform: InputPlatform = useInputPlatform()
	local selectedCategory, setSelectedCategory = React.useState(ALL_CATEGORIES)
	local selectedOutcome, setSelectedOutcome = React.useState(ALL_OUTCOMES)

	-- Resolve the enum once per platform, not per chip.
	local outcomes = React.useMemo(function()
		return getOutcomes(platform)
	end, { platform })

	-- Annotated so both branches share one array type.
	local categoryNames: { string } = if selectedCategory == ALL_CATEGORIES
		then NON_EMPTY_CATEGORIES
		else { selectedCategory }

	-- Counts reflect the other filter; "All" has none.
	local function getCategoryCount(categoryName: string): number?
		if categoryName == ALL_CATEGORIES then
			return nil
		end
		return #filterByOutcome(KEYCODES_BY_CATEGORY[categoryName], selectedOutcome, outcomes)
	end

	local function getOutcomeCount(outcome: string): number?
		if outcome == ALL_OUTCOMES then
			return nil
		end

		local count = 0
		for _, categoryName in categoryNames do
			count += #filterByOutcome(KEYCODES_BY_CATEGORY[categoryName], outcome, outcomes)
		end
		return count
	end

	local tables: { [string]: React.ReactNode } = {}
	local LayoutOrder = 1
	for _, categoryName in categoryNames do
		local keyCodes = filterByOutcome(KEYCODES_BY_CATEGORY[categoryName], selectedOutcome, outcomes)
		if #keyCodes > 0 then
			tables[categoryName] = React.createElement(CategoryTable, {
				LayoutOrder = LayoutOrder,
				categoryName = categoryName,
				keyCodes = keyCodes,
				outcomes = outcomes,
			})
			LayoutOrder += 1
		end
	end

	return React.createElement(Section, {
		LayoutOrder = props.LayoutOrder,
		name = "Keycode library",
		contentTag = "col gap-xlarge size-full-0 auto-y",
	}, {
		-- Both filters share one bordered bucket, so the controls read as a
		-- toolbar rather than as two loose rows above the results.
		Filters = React.createElement(View, {
			tag = "col gap-medium size-full-0 auto-y padding-medium radius-medium",
			stroke = {
				Color = tokens.Color.Stroke.Default.Color3,
				Transparency = tokens.Color.Stroke.Default.Transparency,
				Thickness = tokens.Stroke.Standard,
			},
			LayoutOrder = 1,
		}, {
			Categories = React.createElement(FilterChips, {
				LayoutOrder = 1,
				options = CATEGORY_OPTIONS,
				getCount = getCategoryCount,
				selected = selectedCategory,
				onSelect = setSelectedCategory,
			}),
			Outcomes = React.createElement(FilterChips, {
				LayoutOrder = 2,
				options = OUTCOME_OPTIONS,
				getCount = getOutcomeCount,
				selected = selectedOutcome,
				onSelect = setSelectedOutcome,
			}),
		}),
		Tables = React.createElement(View, {
			tag = "col gap-xxlarge size-full-0 auto-y",
			LayoutOrder = 2,
		}, tables),
	})
end

-- Keybinding is required so start vs end alignment is visible.
local function PlacementStory(): React.ReactNode
	return React.createElement(
		View,
		{ tag = "row align-y-top gap-xxlarge auto-xy padding-large bg-surface-0" },
		Dash.map(PLACEMENT_ORDER, function(placement, index)
			return React.createElement(Labeled, { LayoutOrder = index, label = placement }, {
				Shortcut = React.createElement(StoryShortcut, {
					keys = KEYBOARD_PAIR,
					keybinding = "Keybinding",
					placement = placement,
				}),
			})
		end)
	)
end

local function KeybindingSection(props: { LayoutOrder: number })
	return React.createElement(
		Section,
		{
			LayoutOrder = props.LayoutOrder,
			name = "Keybinding",
			contentTag = "row gap-xxlarge align-y-top auto-xy",
		},
		Dash.map(SIZE_ORDER, function(size, index)
			return React.createElement(Labeled, { LayoutOrder = index, label = size }, {
				Shortcut = React.createElement(StoryShortcut, {
					keys = KEYBOARD_PAIR,
					keybinding = "Keybinding",
					size = size,
				}),
			})
		end)
	)
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Keybinding = React.createElement(KeybindingSection, { LayoutOrder = 1 }),
		Keys = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Keys",
			contentTag = "auto-xy",
		}, sizeMatrix(KEY_SIZING_EXAMPLES, KEY_CELL_COLUMN_WIDTH)),
		Separators = React.createElement(
			Section,
			{
				LayoutOrder = 3,
				name = "Separators",
				contentTag = "auto-xy",
			},
			sizeMatrix(
				Dash.map(SEPARATORS, function(entry)
					return { header = entry.label, keys = entry.keys }
				end),
				SEPARATOR_CELL_COLUMN_WIDTH
			)
		),
		Composition = React.createElement(Section, {
			LayoutOrder = 4,
			name = "Composition",
			contentTag = "auto-xy",
		}, sizeMatrix(COMPOSITION_EXAMPLES, COMPOSITION_CELL_COLUMN_WIDTH)),
		KeyCodeLibrary = React.createElement(KeyCodeLibrarySection, { LayoutOrder = 5 }),
	})
end

return {
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
			name = "Placement",
			story = PlacementStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		keyCode = KEYCODE_ORDER,
		separator = SEPARATOR_ORDER,
		size = SIZE_ORDER,
		variant = VARIANT_ORDER,
		keybinding = "Keybinding",
		placement = PLACEMENT_ORDER,
	},
}
