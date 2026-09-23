local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local FillBehavior = require(Foundation.Enums.FillBehavior)
local InputSize = require(Foundation.Enums.InputSize)
local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Tabs = require(Foundation.Components.Tabs)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local IconName = BuilderIcons.Icon

local Section = StorySection.Section
local MatrixSection = StorySection.MatrixSection
local LabeledCell = StorySection.LabeledCell
local StoryMatrixGrid = StorySection.StoryMatrixGrid
local STORY_FRAME_TAG = StorySection.STORY_FRAME_TAG
local STORY_PAGE_TAG = StorySection.STORY_PAGE_TAG

type FillBehavior = FillBehavior.FillBehavior
type InputSize = InputSize.InputSize
type ItemId = Types.ItemId
type StoryIcon = StoryIcons.StoryIcon
type TabItem = Tabs.TabItem

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local FILL_BEHAVIOR_ORDER: { FillBehavior } = {
	FillBehavior.Fill,
	FillBehavior.Fit,
}

local ACTIVE_TAB_ID_ORDER: { ItemId } = { "1", "2" }

local SIZE_HEADERS = Dash.map(SIZE_ORDER, function(value): string
	return value
end)

local FILL_BEHAVIOR_HEADERS = Dash.map(FILL_BEHAVIOR_ORDER, function(value): string
	return value
end)

local CONTENT_TEXT = "Content"

local function tabLabel(index: number): string
	return `Tab {index}`
end

local DEFAULT_TABS: { TabItem } = {
	{ id = "1", text = tabLabel(1) },
	{ id = "2", text = tabLabel(2) },
}

local INDICATOR = {
	value = 1,
	variant = StatusIndicatorVariant.Emphasis,
}

local HARNESS_WIDTH = 240
-- Six Fit tabs measure wider than the harness under every flag configuration, so the row always scrolls.
local OVERFLOW_TAB_COUNT = 6
local PAINTED_HARNESS_TAG = "size-full-0 auto-y padding-large radius-medium bg-surface-100"
local PLAIN_HARNESS_TAG = "size-full-0 auto-y"
local CELL_COLUMN_WIDTH = HARNESS_WIDTH + 32
local STATE_WIDTH = 120
local STATE_CELL_COLUMN_WIDTH = STATE_WIDTH + 16
local INACTIVE_TAB_ID: ItemId = "inactive"

type TabVisualState = "Default" | "Active" | "Disabled"

local STATE_ORDER: { TabVisualState } = { "Default", "Active", "Disabled" }

local STATE_HEADERS = Dash.map(STATE_ORDER, function(value): string
	return value
end)

type AccessoryFixture = {
	label: string,
	hasIcon: boolean,
	hasIndicator: boolean,
}

local ACCESSORY_ORDER: { AccessoryFixture } = {
	{ label = "icon", hasIcon = true, hasIndicator = false },
	{ label = "indicator", hasIcon = false, hasIndicator = true },
	{ label = "icon + indicator", hasIcon = true, hasIndicator = true },
}

local function noop(_id: ItemId) end

local function TabPanel()
	return React.createElement(Text, {
		Text = CONTENT_TEXT,
		tag = "auto-xy padding-medium",
	})
end

local function accessoryTabs(fixture: AccessoryFixture): { TabItem }
	return {
		{
			id = "1",
			text = tabLabel(1),
			icon = if fixture.hasIcon then IconName.House else nil,
			indicator = if fixture.hasIndicator then INDICATOR else nil,
		},
	}
end

local function iconTabs(iconName: string): { TabItem }
	return {
		{
			id = "1",
			text = tabLabel(1),
			icon = iconName,
		},
	}
end

local function stateTabs(state: TabVisualState): { TabItem }
	return {
		{
			id = "1",
			text = tabLabel(1),
			isDisabled = state == "Disabled",
		},
	}
end

local function tabsWithContent(items: { TabItem }): { TabItem }
	return Dash.map(items, function(item)
		local nextItem = table.clone(item)
		nextItem.content = React.createElement(TabPanel)
		return nextItem
	end)
end

local function Harness(props: {
	LayoutOrder: number?,
	width: number?,
	painted: boolean?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = if props.painted then PAINTED_HARNESS_TAG else PLAIN_HARNESS_TAG,
		Size = UDim2.fromOffset(props.width or HARNESS_WIDTH, 0),
		-- Bounds the scroll container's scrim layer, which otherwise measures against the whole page
		-- and stretches each matrix cell to the viewport width.
		ClipsDescendants = true,
		LayoutOrder = props.LayoutOrder,
	}, props.children)
end

local function StaticTabs(props: {
	LayoutOrder: number?,
	size: InputSize?,
	fillBehavior: FillBehavior?,
	tabs: { TabItem }?,
	activeTabId: ItemId?,
})
	return React.createElement(Tabs, {
		tabs = props.tabs or DEFAULT_TABS,
		activeTabId = props.activeTabId or DEFAULT_TABS[1].id,
		onActivated = noop,
		size = props.size,
		fillBehavior = props.fillBehavior,
		LayoutOrder = props.LayoutOrder,
	})
end

local function SingleTabSizeSweep(props: {
	LayoutOrder: number?,
	tabs: { TabItem },
})
	return React.createElement(
		View,
		{
			tag = "row wrap align-y-top gap-large auto-xy",
			LayoutOrder = props.LayoutOrder,
		},
		Dash.map(SIZE_ORDER, function(size, index)
			return React.createElement(LabeledCell, {
				LayoutOrder = index,
				label = size,
			}, {
				Frame = React.createElement(Harness, { width = STATE_WIDTH }, {
					Tabs = React.createElement(StaticTabs, {
						size = size,
						tabs = props.tabs,
						fillBehavior = FillBehavior.Fit,
					}),
				}),
			})
		end)
	)
end

type PlaygroundControls = {
	activeTabId: ItemId,
	size: InputSize,
	fillBehavior: FillBehavior,
}

local function PlaygroundStory(props: { controls: PlaygroundControls })
	local controls = props.controls

	return React.createElement(View, {
		tag = `size-full-0 auto-y {STORY_FRAME_TAG}`,
		ClipsDescendants = true,
	}, {
		Tabs = React.createElement(Tabs, {
			tabs = tabsWithContent(DEFAULT_TABS),
			activeTabId = controls.activeTabId,
			onActivated = noop,
			size = controls.size,
			fillBehavior = controls.fillBehavior,
		}),
	})
end

local function SizingStory()
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Size = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Size",
			showLabelColumn = false,
			columnHeaders = SIZE_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = Dash.map(SIZE_ORDER, function(size)
						return React.createElement(Harness, {}, {
							Tabs = React.createElement(StaticTabs, {
								size = size,
							}),
						})
					end),
				},
			},
		}),
		FillBehavior = React.createElement(MatrixSection, {
			LayoutOrder = 2,
			name = "Fill behavior",
			showLabelColumn = false,
			columnHeaders = FILL_BEHAVIOR_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = Dash.map(FILL_BEHAVIOR_ORDER, function(fillBehavior)
						return React.createElement(Harness, {
							painted = true,
						}, {
							Tabs = React.createElement(StaticTabs, {
								fillBehavior = fillBehavior,
							}),
						})
					end),
				},
			},
		}),
	})
end

local CONTROLLED_TAB_COUNT = 4

local function ControlledExample(props: {
	LayoutOrder: number,
})
	local tabs: { TabItem } = {}
	for index = 1, CONTROLLED_TAB_COUNT do
		tabs[index] = {
			id = tostring(index),
			text = tabLabel(index),
		}
	end

	local activeTabId, setActiveTabId = React.useState(tabs[1].id)

	return React.createElement(Harness, {
		LayoutOrder = props.LayoutOrder,
		width = HARNESS_WIDTH,
	}, {
		Tabs = React.createElement(Tabs, {
			tabs = tabs,
			activeTabId = activeTabId,
			onActivated = function(id)
				setActiveTabId(id)
			end,
		}),
	})
end

local function OverflowTabs(props: {
	LayoutOrder: number,
})
	local tabs: { TabItem } = {}
	for index = 1, OVERFLOW_TAB_COUNT do
		tabs[index] = {
			id = tostring(index),
			text = tabLabel(index),
		}
	end

	local activeTabId, setActiveTabId = React.useState(tabs[1].id)

	return React.createElement(Harness, {
		LayoutOrder = props.LayoutOrder,
		width = HARNESS_WIDTH,
	}, {
		Tabs = React.createElement(Tabs, {
			tabs = tabs,
			activeTabId = activeTabId,
			onActivated = function(id)
				setActiveTabId(id)
			end,
			fillBehavior = FillBehavior.Fit,
		}),
	})
end

local function StatesStory()
	return React.createElement(View, {
		tag = `col {STORY_PAGE_TAG}`,
	}, {
		Grid = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			showLabelColumn = false,
			columnHeaders = STATE_HEADERS,
			cellColumnWidth = STATE_CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = Dash.map(STATE_ORDER, function(state)
						return React.createElement(Harness, { width = STATE_WIDTH }, {
							Tabs = React.createElement(StaticTabs, {
								tabs = stateTabs(state),
								activeTabId = if state == "Active" then "1" else INACTIVE_TAB_ID,
								fillBehavior = FillBehavior.Fit,
							}),
						})
					end),
				},
			},
		}),
	})
end

local function ControlledStory()
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Example = React.createElement(ControlledExample, { LayoutOrder = 1 }),
		Overflow = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Overflow",
			note = "Only Fit can overflow; Fill shrinks the tabs to the row instead.",
			contentTag = "auto-xy",
		}, {
			Example = React.createElement(OverflowTabs, {
				LayoutOrder = 1,
			}),
		}),
	})
end

local function AccessorySizeRow(props: {
	LayoutOrder: number,
	fixture: AccessoryFixture,
})
	return React.createElement(LabeledCell, {
		LayoutOrder = props.LayoutOrder,
		label = props.fixture.label,
	}, {
		Sizes = React.createElement(SingleTabSizeSweep, {
			LayoutOrder = 1,
			tabs = accessoryTabs(props.fixture),
		}),
	})
end

local function IconTypeSizeRow(props: {
	LayoutOrder: number,
	iconExample: StoryIcon,
})
	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Header = React.createElement(View, {
			tag = "col gap-xsmall auto-xy",
			LayoutOrder = 1,
		}, {
			Title = React.createElement(Text, {
				Text = props.iconExample.title,
				tag = "auto-xy text-caption-small text-align-x-left content-default",
				LayoutOrder = 1,
			}),
			Subtitle = React.createElement(Text, {
				Text = props.iconExample.subtitle,
				tag = "auto-xy text-caption-small text-wrap text-align-x-left content-muted",
				LayoutOrder = 2,
			}),
		}),
		Sizes = React.createElement(SingleTabSizeSweep, {
			LayoutOrder = 2,
			tabs = iconTabs(props.iconExample.name),
		}),
	})
end

local function ContentStory()
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		OptionalAccessories = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Optional accessories",
				note = "A tab takes an icon, an indicator, or both alongside its text.",
				contentTag = "col gap-large auto-xy",
			},
			Dash.map(ACCESSORY_ORDER, function(fixture, index)
				return React.createElement(AccessorySizeRow, {
					LayoutOrder = index,
					fixture = fixture,
				})
			end)
		),
		IconByType = React.createElement(
			Section,
			{
				LayoutOrder = 2,
				name = "Icon by type",
				contentTag = "col gap-large auto-xy",
			},
			Dash.map(StoryIcons.ICON_TYPE_EXAMPLES, function(iconExample, index)
				return React.createElement(IconTypeSizeRow, {
					LayoutOrder = index,
					iconExample = iconExample,
				})
			end)
		),
	})
end

return {
	summary = "Tabs organize related panels behind a horizontal row of labels, with overflow scrolling when they cannot fit.",
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
			name = "States",
			story = StatesStory,
		},
		{
			name = "Controlled component",
			story = ControlledStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		activeTabId = ACTIVE_TAB_ID_ORDER,
		size = SIZE_ORDER,
		fillBehavior = FILL_BEHAVIOR_ORDER,
	},
}
