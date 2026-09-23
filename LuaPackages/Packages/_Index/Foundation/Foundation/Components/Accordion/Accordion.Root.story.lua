local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Accordion = require(Foundation.Components.Accordion)
local InputPlacement = require(Foundation.Enums.InputPlacement)
local InputSize = require(Foundation.Enums.InputSize)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel

local IconName = BuilderIcons.Icon

type AccordionProps = Accordion.AccordionProps
type InputPlacement = InputPlacement.InputPlacement
type InputSize = InputSize.InputSize
type ItemId = Types.ItemId

type RootElementProps = AccordionProps & { key: string? }

type PlaygroundControls = {
	size: InputSize,
	isContained: boolean?,
	chevronPosition: InputPlacement?,
	widthPreset: string,
}

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local CHEVRON_POSITION_ORDER: { InputPlacement } = {
	InputPlacement.End,
	InputPlacement.Start,
}

local WIDTH_PRESET_ORDER = { "Fill", "400", "240" }

local MATRIX_WIDTH = UDim.new(0, 260)
local MATRIX_COLUMN_WIDTH = 260
local TIGHT_WIDTH = UDim.new(0, 240)

local function resolveWidth(preset: string): UDim
	if preset == "Fill" then
		return UDim.new(1, 0)
	elseif preset == "240" then
		return UDim.new(0, 240)
	end
	return UDim.new(0, 400)
end

local function Section(props: {
	LayoutOrder: number,
	name: string,
	note: string?,
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
		Note = if props.note
			then React.createElement(Text, {
				Text = props.note,
				tag = "auto-xy text-caption-small text-wrap text-align-x-left content-muted",
				LayoutOrder = 2,
			})
			else nil,
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large align-y-top auto-xy wrap",
			LayoutOrder = 3,
		}, props.children),
	})
end

local function ItemBody(props: { LayoutOrder: number?, text: string? })
	return React.createElement(View, {
		tag = "row align-x-center align-y-center size-full-0 auto-y padding-small stroke-default radius-medium bg-shift-200",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			LayoutOrder = 1,
			Text = props.text or "Content area",
			tag = "auto-xy text-caption-small content-muted",
		}),
	})
end

local function makeItems(props: {
	count: number?,
	controlled: boolean?,
	isExpandedId: ItemId?,
	icon: string?,
	description: string?,
	text: string?,
}): { [string]: React.ReactNode }
	local count = props.count or 2
	local items: { [string]: React.ReactNode } = {}

	for index = 1, count do
		items[`Item-{index}`] = React.createElement(Accordion.Item, {
			LayoutOrder = index,
			id = index,
			text = props.text or "Title",
			description = props.description,
			icon = props.icon,
			isExpanded = if props.controlled then props.isExpandedId == index else nil,
		}, React.createElement(ItemBody, {}))
	end

	return items
end

local function StaticAccordion(props: AccordionProps): React.ReactNode
	local remountKey, setRemountKey = React.useState(0)

	return React.createElement(
		Accordion.Root,
		Dash.join(props, {
			key = tostring(remountKey),
			onActivated = function(): () -> ()
				return function()
					setRemountKey(function(key)
						return key + 1
					end)
				end
			end,
		}) :: RootElementProps
	)
end

local function PlaygroundStory(props: { controls: PlaygroundControls })
	local controls = props.controls

	return React.createElement(View, {
		tag = "col size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Accordion = React.createElement(Accordion.Root, {
			LayoutOrder = 1,
			size = controls.size,
			isContained = controls.isContained,
			chevronPosition = controls.chevronPosition,
			width = resolveWidth(controls.widthPreset),
		}, makeItems({})),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Size = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Size",
			note = "The first item is expanded so content padding at each size is visible.",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = Dash.map(SIZE_ORDER, function(value): string
					return value
				end),
				headerTextAlign = "left",
				cellAlign = "left",
				cellColumnWidth = MATRIX_COLUMN_WIDTH,
				rows = {
					{
						cells = Dash.map(SIZE_ORDER, function(size)
							return React.createElement(
								StaticAccordion,
								{
									size = size,
									width = MATRIX_WIDTH,
								},
								makeItems({
									controlled = true,
									isExpandedId = 1,
								})
							)
						end),
					},
				},
			}),
		}),
		Width = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Width",
			note = "Accordion takes any width. Default fills the parent; pass an offset UDim to constrain it.",
			contentTag = "col gap-large size-full-0 auto-y",
		}, {
			Fill = React.createElement(View, {
				tag = "col gap-small size-full-0 auto-y",
				LayoutOrder = 1,
			}, {
				Label = React.createElement(Text, {
					Text = "Full width",
					tag = "auto-xy text-caption-small text-align-x-left content-default",
					LayoutOrder = 1,
				}),
				Accordion = React.createElement(
					StaticAccordion,
					{
						LayoutOrder = 2,
					},
					makeItems({
						controlled = true,
						isExpandedId = 1,
					})
				),
			}),
			Constrained = React.createElement(View, {
				tag = "col gap-small auto-xy",
				LayoutOrder = 2,
			}, {
				Label = React.createElement(Text, {
					Text = "Constrained",
					tag = "auto-xy text-caption-small text-align-x-left content-default",
					LayoutOrder = 1,
				}),
				Accordion = React.createElement(
					StaticAccordion,
					{
						LayoutOrder = 2,
						width = TIGHT_WIDTH,
					},
					makeItems({
						controlled = true,
						isExpandedId = 1,
					})
				),
			}),
		}),
	})
end

local function ExclusiveAccordion()
	local expandedId, setExpandedId = React.useState(1)

	local onActivated = React.useCallback(function(itemId: ItemId, isExpanded: boolean?): () -> ()
		return function()
			if isExpanded then
				setExpandedId(-1)
			else
				setExpandedId(itemId :: number)
			end
		end
	end, {})

	return React.createElement(
		Accordion.Root,
		{
			width = MATRIX_WIDTH,
			onActivated = onActivated,
		},
		makeItems({
			controlled = true,
			isExpandedId = expandedId,
		})
	)
end

local function ItemOverrideAccordion()
	local expandedId, setExpandedId = React.useState(1)
	local runCount, setRunCount = React.useState(0)

	local onActivated = React.useCallback(function(itemId: ItemId, isExpanded: boolean?): () -> ()
		return function()
			if isExpanded then
				setExpandedId(-1)
			else
				setExpandedId(itemId :: number)
			end
		end
	end, {})

	return React.createElement(Accordion.Root, {
		width = MATRIX_WIDTH,
		onActivated = onActivated,
	}, {
		Item1 = React.createElement(Accordion.Item, {
			LayoutOrder = 1,
			id = 1,
			text = "Title",
			isExpanded = expandedId == 1,
		}, React.createElement(ItemBody, {})),
		Item2 = React.createElement(Accordion.Item, {
			LayoutOrder = 2,
			id = 2,
			text = "Title",
			isExpanded = expandedId == 2,
		}, React.createElement(ItemBody, {})),
		Item3 = React.createElement(Accordion.Item, {
			LayoutOrder = 3,
			id = 3,
			text = `Run action ({runCount})`,
			isExpanded = false,
			onActivated = function()
				setRunCount(function(count)
					return count + 1
				end)
			end,
		}, React.createElement(ItemBody, {})),
	})
end

local function ControlledStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Exclusive = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Exclusive expansion",
			note = "Root.onActivated plus Item.isExpanded keep a single item open.",
			contentTag = "auto-xy",
		}, {
			Example = React.createElement(ExclusiveAccordion, {
				LayoutOrder = 1,
			}),
		}),
		ItemOverride = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Item onActivated",
			note = "An item onActivated replaces Root coordination and the built-in toggle for that item only. The third row runs an action instead of expanding, and leaves whichever row is open alone.",
			contentTag = "auto-xy",
		}, {
			Example = React.createElement(ItemOverrideAccordion, {
				LayoutOrder = 1,
			}),
		}),
	})
end

local function ContainmentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		IsContained = React.createElement(Section, {
			LayoutOrder = 1,
			name = "isContained",
			note = "Contained insets header and content horizontally. Rows sweep Root.chevronPosition.",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = 50,
				columnHeaders = { "false", "true" },
				headerTextAlign = "left",
				cellAlign = "left",
				cellColumnWidth = MATRIX_COLUMN_WIDTH,
				rows = {
					{
						label = matrixLabel("Start"),
						cells = {
							React.createElement(
								StaticAccordion,
								{
									width = MATRIX_WIDTH,
									chevronPosition = InputPlacement.Start,
								},
								makeItems({
									controlled = true,
									isExpandedId = 1,
									icon = IconName.Star,
								})
							),
							React.createElement(
								StaticAccordion,
								{
									width = MATRIX_WIDTH,
									chevronPosition = InputPlacement.Start,
									isContained = true,
								},
								makeItems({
									controlled = true,
									isExpandedId = 1,
									icon = IconName.Star,
								})
							),
						},
					},
					{
						label = matrixLabel("End"),
						cells = {
							React.createElement(
								StaticAccordion,
								{
									width = MATRIX_WIDTH,
								},
								makeItems({
									controlled = true,
									isExpandedId = 1,
									icon = IconName.Star,
								})
							),
							React.createElement(
								StaticAccordion,
								{
									width = MATRIX_WIDTH,
									isContained = true,
								},
								makeItems({
									controlled = true,
									isExpandedId = 1,
									icon = IconName.Star,
								})
							),
						},
					},
				},
			}),
		}),
	})
end

local function ChevronPositionSection(props: { LayoutOrder: number })
	return React.createElement(Section, {
		LayoutOrder = props.LayoutOrder,
		name = "chevronPosition",
		note = "Items include a leading icon so opposite placement is visible. `icon` is an Item prop; this section only sweeps Root.chevronPosition.",
		contentTag = "auto-xy",
	}, {
		Matrix = React.createElement(MatrixGrid, {
			showLabelColumn = false,
			columnHeaders = { "Start", "End" },
			headerTextAlign = "left",
			cellAlign = "left",
			cellColumnWidth = MATRIX_COLUMN_WIDTH,
			rows = {
				{
					cells = {
						React.createElement(
							StaticAccordion,
							{
								width = MATRIX_WIDTH,
								chevronPosition = InputPlacement.Start,
							},
							makeItems({
								controlled = true,
								isExpandedId = 1,
								icon = IconName.Star,
							})
						),
						React.createElement(
							StaticAccordion,
							{
								width = MATRIX_WIDTH,
							},
							makeItems({
								controlled = true,
								isExpandedId = 1,
								icon = IconName.Star,
							})
						),
					},
				},
			},
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		ChevronPosition = React.createElement(ChevronPositionSection, { LayoutOrder = 1 }),
		FullComposition = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Full composition",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = { "One item", "Two items" },
				headerTextAlign = "left",
				cellAlign = "left",
				rowAlign = "top",
				cellColumnWidth = MATRIX_COLUMN_WIDTH,
				rows = {
					{
						cells = {
							React.createElement(
								StaticAccordion,
								{
									width = MATRIX_WIDTH,
								},
								makeItems({
									count = 1,
									controlled = true,
									isExpandedId = 1,
								})
							),
							React.createElement(
								StaticAccordion,
								{
									width = MATRIX_WIDTH,
								},
								makeItems({
									controlled = true,
									isExpandedId = 1,
								})
							),
						},
					},
				},
			}),
		}),
	})
end

local stories = {
	{ name = "Playground", story = PlaygroundStory :: unknown },
	{ name = "Sizing", story = SizingStory },
	{ name = "Containment", story = ContainmentStory },
	{ name = "Controlled component", story = ControlledStory },
	{ name = "Content", story = ContentStory },
}

return {
	summary = "A stack of collapsible items whose expansion can be coordinated from the root.",
	stories = stories,
	controls = {
		size = SIZE_ORDER,
		widthPreset = WIDTH_PRESET_ORDER,
		isContained = false,
		chevronPosition = CHEVRON_POSITION_ORDER,
	},
}
