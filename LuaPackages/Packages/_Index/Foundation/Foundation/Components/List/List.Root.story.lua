local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AccessoryType = require(Foundation.Enums.AccessoryType)
local Badge = require(Foundation.Components.Badge)
local BadgeVariant = require(Foundation.Enums.BadgeVariant)
local Dropdown = require(Foundation.Components.Dropdown)
local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)
local List = require(Foundation.Components.List)
local ListItemInputType = require(Foundation.Enums.ListItemInputType)
local Loading = require(Foundation.Components.Loading)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type InputSize = InputSize.InputSize
type IconSize = IconSize.IconSize
type ListItemInputType = ListItemInputType.ListItemInputType

local IconName = BuilderIcons.Icon

local INPUT_SIZE_TO_ICON_SIZE: { [InputSize]: IconSize } = {
	[InputSize.XSmall] = IconSize.XSmall,
	[InputSize.Small] = IconSize.Small,
	[InputSize.Medium] = IconSize.Medium,
	[InputSize.Large] = IconSize.Large,
}

-- Returns an onActivated handler that logs so it's obvious in the output when a row is activated.
local function logActivated(label: string?)
	return function()
		print(if label then `List.Item activated: {label}` else "List.Item activated")
	end
end

-- List container capabilities. These stories are about `List.Root` — dividers, containment, and
-- composing rows. Per-row capabilities (leading accessories, input types, activation, selection)
-- live in the ListItem story; here the rows are intentionally simple, representative content.

local DIVIDER_OPTIONS = {
	None = false :: boolean | { isInset: boolean },
	Inset = { isInset = true } :: boolean | { isInset: boolean },
	Full = { isInset = false } :: boolean | { isInset: boolean },
}

type ContainedOption = true | { isContained: false, hasMargin: boolean? }
local CONTAINED_OPTIONS = {
	Contained = true :: ContainedOption,
	["Full Width"] = { isContained = false :: false, hasMargin = false } :: ContainedOption,
	["Has Margin"] = { isContained = false :: false, hasMargin = true } :: ContainedOption,
}

-- A small, fixed set of plain chevron rows so container props (dividers, containment) are the focus.
local function sampleItems(): { [string]: React.ReactNode }
	return {
		Phone = React.createElement(List.Item, {
			title = "Phone number",
			description = "***-***-883",
			onActivated = logActivated("Phone number"),
			input = ListItemInputType.Chevron,
			LayoutOrder = 1,
		}),
		Language = React.createElement(List.Item, {
			title = "Language",
			description = "English",
			onActivated = logActivated("Language"),
			input = ListItemInputType.Chevron,
			LayoutOrder = 2,
		}),
		Email = React.createElement(List.Item, {
			title = "Email address",
			description = "rob*******@gmail.com",
			onActivated = logActivated("Email address"),
			input = ListItemInputType.Chevron,
			LayoutOrder = 3,
		}),
	}
end

local function LabeledList(props: {
	LayoutOrder: number,
	label: string,
	hasDivider: (boolean | { isInset: boolean })?,
	isContained: ContainedOption?,
}): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-small size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-label-medium content-default",
			LayoutOrder = 1,
		}),
		List = React.createElement(List.Root, {
			hasDivider = props.hasDivider :: any,
			isContained = props.isContained :: any,
			LayoutOrder = 2,
		}, sampleItems()),
	})
end

local function PlaygroundStory(props: {
	controls: {
		hasDivider: string,
		isContained: string,
		size: InputSize,
	},
}): React.ReactNode
	local controls = props.controls

	return React.createElement(List.Root, {
		hasDivider = DIVIDER_OPTIONS[controls.hasDivider],
		isContained = CONTAINED_OPTIONS[controls.isContained],
		size = controls.size,
	}, {
		Media = React.createElement(List.Item, {
			leading = { iconName = "rbxthumb://type=GameIcon&id=1818&w=150&h=150" },
			title = { title = "Media", metadata = "Metadata" },
			description = "Leading media thumbnail",
			onActivated = logActivated("Media"),
			input = ListItemInputType.Chevron,
			LayoutOrder = 1,
		}),
		Avatar = React.createElement(List.Item, {
			leading = { type = AccessoryType.Avatar, userId = 24813339 },
			title = { title = "Avatar", metadata = "Metadata" },
			description = "Leading avatar",
			onActivated = logActivated("Avatar"),
			input = ListItemInputType.Chevron,
			LayoutOrder = 2,
		}),
		Icon = React.createElement(List.Item, {
			leading = IconName.Robux,
			title = { title = "Icon", metadata = "Metadata" },
			description = "Leading icon",
			onActivated = logActivated("Icon"),
			input = ListItemInputType.Chevron,
			LayoutOrder = 3,
		}),
		NoLeading = React.createElement(List.Item, {
			title = { title = "No Leading", metadata = "Metadata" },
			description = "No leading accessory",
			onActivated = logActivated("No Leading"),
			input = ListItemInputType.Chevron,
			LayoutOrder = 4,
		}),
	})
end

local function DividersStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y",
	}, {
		None = React.createElement(LabeledList, {
			LayoutOrder = 1,
			label = "None",
			hasDivider = DIVIDER_OPTIONS.None,
		}),
		Inset = React.createElement(LabeledList, {
			LayoutOrder = 2,
			label = "Inset (default)",
			hasDivider = DIVIDER_OPTIONS.Inset,
		}),
		Full = React.createElement(LabeledList, {
			LayoutOrder = 3,
			label = "Full",
			hasDivider = DIVIDER_OPTIONS.Full,
		}),
	})
end

local function ContainmentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y",
	}, {
		Contained = React.createElement(LabeledList, {
			LayoutOrder = 1,
			label = "Contained (border)",
			isContained = CONTAINED_OPTIONS.Contained,
		}),
		FullWidth = React.createElement(LabeledList, {
			LayoutOrder = 2,
			label = "Full width",
			isContained = CONTAINED_OPTIONS["Full Width"],
		}),
		HasMargin = React.createElement(LabeledList, {
			LayoutOrder = 3,
			label = "Has margin",
			isContained = CONTAINED_OPTIONS["Has Margin"],
		}),
	})
end

-- A realistic composition: the list holds rows with varied trailing content (badge, dropdown, toggle).
local function SettingsStory(props): React.ReactNode
	local chatEnabled, setChatEnabled = React.useState(false)
	local languageId, setLanguageId = React.useState("en")

	local function toggleChat()
		print("List.Item toggled: Automatic chat translation")
		setChatEnabled(function(prev)
			return not prev
		end)
	end

	return React.createElement(List.Root, {
		hasDivider = DIVIDER_OPTIONS[props.controls.hasDivider],
		isContained = CONTAINED_OPTIONS[props.controls.isContained],
		size = props.controls.size,
	}, {
		PhoneNumber = React.createElement(List.Item, {
			title = "Phone number",
			description = "***-***-883",
			trailing = React.createElement(
				View,
				{ tag = "auto-xy" },
				React.createElement(Badge, {
					text = "Verified",
					icon = IconName.CircleCheck,
					variant = BadgeVariant.Primary,
				})
			) :: React.ReactNode,
			onActivated = logActivated("Phone number"),
			input = ListItemInputType.Chevron,
			LayoutOrder = 1,
		}),
		Language = React.createElement(List.Item, {
			title = "Language",
			trailing = React.createElement(Dropdown.Root, {
				label = "",
				value = languageId,
				items = {
					{ id = "en", text = "English" },
					{ id = "es", text = "Spanish" },
					{ id = "fr", text = "French" },
				},
				onItemChanged = function(id: string | number)
					print(`Language changed: {id}`)
					setLanguageId(id :: string)
				end,
				width = UDim.new(0, 140),
				LayoutOrder = 2,
			}) :: React.ReactNode,
		}),
		EmailAddress = React.createElement(List.Item, {
			title = "Email address",
			description = "rob*******@gmail.com",
			onActivated = logActivated("Email address"),
			input = ListItemInputType.Chevron,
			LayoutOrder = 3,
		}),
		Birthday = React.createElement(List.Item, {
			title = "Birthday",
			description = "Sep 27, 2000",
			onActivated = logActivated("Birthday"),
			input = ListItemInputType.Chevron,
			LayoutOrder = 4,
		}),
		AutoChatTranslation = React.createElement(List.Item, {
			leading = "speech-bubble-align-left",
			title = "Automatic chat translation",
			description = "Translate chat messages from others",
			onActivated = toggleChat,
			input = { type = ListItemInputType.Toggle, isChecked = chatEnabled },
			LayoutOrder = 5,
		}),
	})
end

type GameState = "attention" | "loading" | "done"

local BUILD_GAMES: { { id: string, title: string, status: string, badge: string, state: GameState } } = {
	{ id = "1818", title = "Miami Run", status = "Input needed", badge = "Draft", state = "attention" },
	{ id = "2788229376", title = "Magic Quest", status = "Building...", badge = "Public", state = "loading" },
	{ id = "1281960580", title = "Surf's Up Adventure", status = "Building...", badge = "Private", state = "loading" },
	{ id = "606849621", title = "Epic Battle", status = "v03 built · 10m ago", badge = "Friends", state = "done" },
}

local function GameTrailing(props: { badge: string, state: GameState, size: InputSize }): React.ReactNode
	local stateIcon: React.ReactNode = if props.state == "loading"
		then React.createElement(Loading, { size = INPUT_SIZE_TO_ICON_SIZE[props.size], LayoutOrder = 2 })
		else React.createElement(Icon, {
			name = if props.state == "done" then IconName.CircleCheck else IconName.TriangleExclamation,
			size = INPUT_SIZE_TO_ICON_SIZE[props.size],
			LayoutOrder = 2,
		})

	return React.createElement(View, {
		tag = "row items-center gap-small auto-xy",
	}, {
		Badge = React.createElement(Badge, {
			text = props.badge,
			variant = BadgeVariant.Neutral,
			LayoutOrder = 1,
		}),
		State = stateIcon,
	})
end

-- Another realistic composition: tappable game rows with rich trailing content and no chevron.
local function BuildGamesStory(props): React.ReactNode
	local size = props.controls.size

	local rows: { [string]: React.ReactNode } = {
		NewGame = React.createElement(List.Item, {
			leading = IconName.PlusLarge,
			title = "New Game",
			description = "Build a game with AI",
			onActivated = function()
				print("create new game")
			end,
			input = ListItemInputType.None,
			LayoutOrder = 1,
		}),
	}

	for index, game in BUILD_GAMES do
		rows[game.title] = React.createElement(List.Item, {
			leading = { iconName = `rbxthumb://type=GameIcon&id={game.id}&w=150&h=150` },
			title = game.title,
			description = game.status,
			trailing = React.createElement(GameTrailing, { badge = game.badge, state = game.state, size = size }) :: React.ReactNode,
			onActivated = function()
				print(`open {game.title}`)
			end,
			input = ListItemInputType.None,
			LayoutOrder = index + 1,
		})
	end

	return React.createElement(List.Root, {
		size = size,
		hasDivider = false,
	}, rows)
end

local stories: { { name: string, summary: string?, story: any } } = {
	{
		name = "Playground",
		story = PlaygroundStory :: unknown,
	},
	{
		name = "Dividers",
		summary = "`hasDivider` controls the divider between rows: none, inset (default), or full width.",
		story = DividersStory,
	},
	{
		name = "Containment",
		summary = "`isContained` wraps the list in a border; when not contained, `hasMargin` toggles horizontal padding.",
		story = ContainmentStory,
	},
	{
		name = "Settings",
		summary = "A realistic settings list — the container composes rows with varied trailing content (badge, dropdown, toggle).",
		story = SettingsStory,
	},
}

table.insert(stories, {
	name = "Build games",
	summary = "Tappable game rows with rich trailing content (status badge + state icon) and no chevron, mirroring the Build game list.",
	story = BuildGamesStory,
})

return {
	summary = "A vertical list container. It renders dividers between rows (`hasDivider`), an optional border "
		.. "(`isContained`), and propagates `size` to its rows.",
	stories = stories,
	controls = {
		hasDivider = Dash.keys(DIVIDER_OPTIONS),
		isContained = Dash.keys(CONTAINED_OPTIONS),
		size = Dash.values(InputSize),
	},
}
