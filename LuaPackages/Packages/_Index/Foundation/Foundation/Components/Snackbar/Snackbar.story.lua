local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local Snackbar = require(Foundation.Components.Snackbar)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection).StorySection
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local IconName = BuilderIcons.Icon
local IconVariant = BuilderIcons.IconVariant
local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel

local DEFAULT_TITLE = "Title"
local THREE_LINE_TITLE =
	"This is a much longer title that would take three lines on a hugging snackbar if it were not clamped and ellipsized"
local ACTION_TEXT = "Action"
local EXAMPLE_ICON = IconName.House

local LABEL_COLUMN_WIDTH = 200
local INFO_COLUMN_WIDTH = 240
local CELL_COLUMN_WIDTH = 380

local ICON_CONTROL_OPTIONS: { string } = { "", EXAMPLE_ICON }

type OccupancyCase = {
	label: string,
	icon: string?,
	hasAction: boolean,
	hasClose: boolean,
}

local OCCUPANCY_CASES: { OccupancyCase } = {
	{ label = "Title", hasAction = false, hasClose = false },
	{ label = "Icon + title", icon = EXAMPLE_ICON, hasAction = false, hasClose = false },
	{ label = "Title + action", hasAction = true, hasClose = false },
	{ label = "Title + close", hasAction = false, hasClose = true },
	{ label = "Title + action + close", hasAction = true, hasClose = true },
	{ label = "Icon + title + action + close", icon = EXAMPLE_ICON, hasAction = true, hasClose = true },
}

local function noop() end

local function noopAction(): nil
	return nil
end

local function GridBlock(props: {
	LayoutOrder: number,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, props.children)
end

local function PlaygroundStory(props: {
	controls: {
		title: string,
		icon: string,
		actionText: string,
		hasCloseAffordance: boolean,
	},
}): React.ReactNode
	local controls = props.controls

	return React.createElement(View, {
		tag = "col auto-xy padding-y-large bg-surface-0",
	}, {
		Snackbar = React.createElement(Snackbar, {
			LayoutOrder = 1,
			title = controls.title,
			icon = StoryIcons.parseIconControl(controls.icon),
			action = if controls.actionText ~= ""
				then { text = controls.actionText, onActivated = noopAction }
				else nil,
			onClose = if controls.hasCloseAffordance then noop else nil,
		}),
	})
end

local function ActionExample(props: {
	LayoutOrder: number,
}): React.ReactNode
	local activationCount, setActivationCount = React.useState(0)

	return React.createElement(StorySection, {
		LayoutOrder = props.LayoutOrder,
		caption = "Action",
		note = "Activating the action leaves the snackbar mounted; what it does is the consumer's.",
		contentTag = "col gap-medium auto-xy",
	}, {
		Snackbar = React.createElement(Snackbar, {
			LayoutOrder = 1,
			title = DEFAULT_TITLE,
			action = {
				text = ACTION_TEXT,
				onActivated = function(): nil
					setActivationCount(function(count)
						return count + 1
					end)
					return nil
				end,
			},
		}),
		Readout = React.createElement(Text, {
			LayoutOrder = 2,
			Text = `Action activated {activationCount} times`,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
		}),
	})
end

local function DismissalExample(props: {
	LayoutOrder: number,
}): React.ReactNode
	local isVisible, setIsVisible = React.useState(true)

	return React.createElement(StorySection, {
		LayoutOrder = props.LayoutOrder,
		caption = "Dismissal",
		note = "Snackbar holds no open state, so onClose only reports the press and the consumer unmounts it.",
		contentTag = "col gap-medium auto-xy",
	}, {
		Body = if isVisible
			then React.createElement(Snackbar, {
				LayoutOrder = 1,
				title = DEFAULT_TITLE,
				onClose = function()
					setIsVisible(false)
				end,
			})
			else React.createElement(Button, {
				LayoutOrder = 1,
				text = "Show snackbar",
				variant = ButtonVariant.Standard,
				onActivated = function()
					setIsVisible(true)
				end,
			}),
	})
end

local function ControlledStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Action = React.createElement(ActionExample, { LayoutOrder = 1 }),
		Dismissal = React.createElement(DismissalExample, { LayoutOrder = 2 }),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Occupancy = React.createElement(View, {
			tag = "col gap-medium size-full-0 auto-y",
			LayoutOrder = 1,
		}, {
			Note = React.createElement(Text, {
				Text = "Either button switches the snackbar from hugging its title to a fixed width.",
				tag = "auto-xy text-body-small text-wrap text-align-x-left content-muted",
				LayoutOrder = 1,
			}),
			Grid = React.createElement(GridBlock, { LayoutOrder = 2 }, {
				Matrix = React.createElement(MatrixGrid, {
					labelColumnWidth = LABEL_COLUMN_WIDTH,
					showHeader = false,
					columnHeaders = {},
					cellColumnWidth = CELL_COLUMN_WIDTH,
					cellAlign = "left",
					rowGap = "xxlarge",
					rows = Dash.map(OCCUPANCY_CASES, function(occupancyCase)
						return {
							label = matrixLabel(occupancyCase.label),
							cells = {
								React.createElement(Snackbar, {
									title = DEFAULT_TITLE,
									icon = occupancyCase.icon,
									action = if occupancyCase.hasAction
										then { text = ACTION_TEXT, onActivated = noopAction }
										else nil,
									onClose = if occupancyCase.hasClose then noop else nil,
								}),
							},
						}
					end),
				}),
			}),
		}),
		IconByType = React.createElement(StorySection, {
			LayoutOrder = 2,
			caption = "Icon by type",
			contentTag = "col auto-xy",
		}, {
			Grid = React.createElement(GridBlock, { LayoutOrder = 1 }, {
				Matrix = React.createElement(MatrixGrid, {
					labelColumnWidth = INFO_COLUMN_WIDTH,
					showHeader = false,
					columnHeaders = {},
					cellColumnWidth = CELL_COLUMN_WIDTH,
					cellAlign = "left",
					rowGap = "xxlarge",
					rows = StoryIcons.buildIconTypeMatrixRows(function(iconExample)
						return {
							React.createElement(Snackbar, {
								title = DEFAULT_TITLE,
								icon = iconExample.name,
							}),
						}
					end),
				}),
			}),
		}),
		IconVariant = React.createElement(StorySection, {
			LayoutOrder = 3,
			caption = "Icon by variant",
			note = "A string icon is rendered as the Regular variant; the table arm is the only way to pass another.",
			contentTag = "col auto-xy",
		}, {
			Grid = React.createElement(GridBlock, { LayoutOrder = 1 }, {
				Matrix = React.createElement(MatrixGrid, {
					showLabelColumn = false,
					columnHeaders = { "icon = string", "icon = { name, variant = Filled }" },
					cellColumnWidth = CELL_COLUMN_WIDTH,
					headerTextAlign = "left",
					cellAlign = "left",
					rows = {
						{
							cells = {
								React.createElement(Snackbar, {
									title = DEFAULT_TITLE,
									icon = EXAMPLE_ICON,
								}),
								React.createElement(Snackbar, {
									title = DEFAULT_TITLE,
									icon = { name = EXAMPLE_ICON, variant = IconVariant.Filled },
								}),
							},
						},
					},
				}),
			}),
		}),
		Truncation = React.createElement(StorySection, {
			LayoutOrder = 4,
			caption = "Truncation",
			contentTag = "col auto-xy",
		}, {
			Snackbar = React.createElement(Snackbar, {
				LayoutOrder = 1,
				title = THREE_LINE_TITLE,
			}),
		}),
	})
end

return {
	summary = "Snackbar is a compact message with a title and an optional icon, action, and close affordance.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Controlled component",
			summary = "Both callbacks are consumer-owned: the snackbar neither counts activations nor dismisses itself.",
			story = ControlledStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		title = DEFAULT_TITLE,
		icon = ICON_CONTROL_OPTIONS,
		actionText = ACTION_TEXT,
		hasCloseAffordance = true,
	},
}
