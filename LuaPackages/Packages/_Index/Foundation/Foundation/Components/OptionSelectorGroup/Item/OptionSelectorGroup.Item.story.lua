local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local FillBehavior = require(Foundation.Enums.FillBehavior)
local Flags = require(Foundation.Utility.Flags)
local OptionSelectorGroup = require(Foundation.Components.OptionSelectorGroup)
local OptionSelectorGroupContext = require(script.Parent.Parent.OptionSelectorGroupContext)
local OptionSelectorGroupSize = require(Foundation.Enums.OptionSelectorGroupSize)
local Orientation = require(Foundation.Enums.Orientation)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local IconName = BuilderIcons.Icon

type FillBehavior = FillBehavior.FillBehavior
type OptionSelectorGroupSize = OptionSelectorGroupSize.OptionSelectorGroupSize
type Orientation = Orientation.Orientation

local SIZE_ORDER: { OptionSelectorGroupSize } = {
	OptionSelectorGroupSize.XSmall,
	OptionSelectorGroupSize.Small,
	OptionSelectorGroupSize.Medium,
}

local PLAYGROUND_GROUP_SIZE_OPTIONS = {
	React.None,
	OptionSelectorGroupSize.XSmall,
	OptionSelectorGroupSize.Small,
	OptionSelectorGroupSize.Medium,
}

local GROUP_ORIENTATION_ORDER: { Orientation } = {
	Orientation.Vertical,
	Orientation.Horizontal,
}

-- The three accepted icon input types (builder, migrated legacy string, non-migrated
-- legacy string). Matches the classification used in Button / NumberInput.
local ICON_TYPES = {
	{ caption = "Builder", icon = IconName.House },
	{ caption = "Migrated legacy", icon = "icons/placeholder/placeholderOn_small" },
	{ caption = "Non-migrated legacy", icon = "icons/menu/clothing/limited_on" },
}

local PLAYGROUND_ICON_OPTIONS = StoryIcons.buildIconControlOptions()

local PLAYGROUND_GROUP_FILL_BEHAVIOR_OPTIONS = {
	React.None,
	FillBehavior.Fit,
	FillBehavior.Fill,
}

local LONG_TEXT =
	"With a lot of extra text to see how it behaves when it might need to wrap to multiple lines because it simply cannot fit on one line"

local ITEM_COLUMN_WIDTH = 280
-- Icon matrix cells need extra width at Medium (xxlarge padding + icon + checkmark chrome).
local ICON_MATRIX_COLUMN_WIDTH = 240
local ITEM_VALUE = "A"

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

local function ItemExample(
	props: {
		LayoutOrder: number?,
		groupOrientation: Orientation?,
		groupSize: OptionSelectorGroupSize?,
		groupFillBehavior: FillBehavior?,
		selectedValue: string?,
		onValueChanged: ((string?) -> ())?,
		value: string?,
		icon: string?,
		-- When omitted, defaults to "Option". Pass "" to render an empty label.
		label: string?,
		metadata: string?,
		description: string?,
		isDisabled: boolean?,
		containerWidth: number?,
		-- When true, the wrapper spans the parent width (e.g. playground gray surface).
		fillParent: boolean?,
		-- Draws a surface behind the bounded parent so Fill vs Fit sizing is easier to see.
		parentSurface: boolean?,
	}
)
	local groupOrientation = props.groupOrientation or Orientation.Vertical
	-- Match Item fillBehavior resolution: vertical groups always Fill; horizontal groups honor Root fillBehavior.
	local needsBoundedWidth = groupOrientation == Orientation.Vertical
		or props.containerWidth ~= nil
		or props.groupFillBehavior == FillBehavior.Fill
	local label = if props.label ~= nil then props.label else "Option"
	local value = props.value or ITEM_VALUE

	local wrapperTag = if props.fillParent or needsBoundedWidth then "size-full-0 auto-y" else "auto-xy"
	if props.parentSurface then
		wrapperTag = `{wrapperTag} bg-surface-100 radius-medium padding-large`
	end

	return React.createElement(View, {
		tag = wrapperTag,
		Size = if props.fillParent
			then UDim2.fromScale(1, 0)
			elseif needsBoundedWidth then UDim2.fromOffset(props.containerWidth or ITEM_COLUMN_WIDTH, 0)
			else nil,
		LayoutOrder = props.LayoutOrder,
	}, {
		Provider = React.createElement(OptionSelectorGroupContext.Provider, {
			value = {
				value = props.selectedValue,
				onValueChanged = props.onValueChanged or Dash.noop,
				orientation = groupOrientation,
				size = props.groupSize,
				fillBehavior = props.groupFillBehavior,
				Selectable = true,
				testId = "--foundation-option-selector-group",
			},
		}, {
			Item = React.createElement(OptionSelectorGroup.Item, {
				value = value,
				icon = props.icon,
				label = label,
				metadata = props.metadata,
				description = props.description,
				isDisabled = props.isDisabled,
			}),
		}),
	})
end

local function LabeledItem(props: {
	label: string,
	LayoutOrder: number,
	groupOrientation: Orientation?,
	groupSize: OptionSelectorGroupSize?,
	groupFillBehavior: FillBehavior?,
	selectedValue: string?,
	containerWidth: number?,
	parentSurface: boolean?,
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
		Item = React.createElement(ItemExample, {
			LayoutOrder = 2,
			groupOrientation = props.groupOrientation,
			groupSize = props.groupSize,
			groupFillBehavior = props.groupFillBehavior,
			selectedValue = props.selectedValue,
			containerWidth = props.containerWidth,
			parentSurface = props.parentSurface,
		}),
	})
end

local function PlaygroundStory(props: {
	controls: {
		groupOrientation: Orientation,
		groupSize: OptionSelectorGroupSize?,
		groupFillBehavior: FillBehavior?,
		icon: string,
		isDisabled: boolean,
		isSelected: boolean,
		label: string,
		metadata: string,
		description: string,
	},
})
	local controls = props.controls
	local groupFillBehavior: FillBehavior? = if controls.groupFillBehavior == React.None
		then nil
		else controls.groupFillBehavior :: FillBehavior?
	local icon: string? = StoryIcons.parseIconControl(controls.icon)

	return React.createElement(View, {
		tag = "size-full-0 auto-y",
	}, {
		Example = React.createElement(ItemExample, {
			groupOrientation = controls.groupOrientation,
			groupSize = if controls.groupSize == React.None
				then nil
				else controls.groupSize :: OptionSelectorGroupSize?,
			groupFillBehavior = groupFillBehavior,
			selectedValue = if controls.isSelected then ITEM_VALUE else nil,
			onValueChanged = function(newValue: string?)
				print("OptionSelectorGroupItem value changed", newValue)
			end,
			value = ITEM_VALUE,
			icon = icon,
			label = controls.label,
			metadata = if #controls.metadata > 0 then controls.metadata else nil,
			description = if #controls.description > 0 then controls.description else nil,
			isDisabled = controls.isDisabled,
			parentSurface = true,
			fillParent = true,
		}),
	})
end

local function SizingStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Size = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Size",
				contentTag = "row gap-large auto-xy",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledItem, {
					label = size :: string,
					LayoutOrder = index,
					groupSize = size,
					containerWidth = 160,
				})
			end)
		),
		FillBehavior = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Fill behavior",
			contentTag = "col gap-large align-x-left size-full-0 auto-y",
		}, {
			Fit = React.createElement(LabeledItem, {
				label = "Fit",
				LayoutOrder = 1,
				groupOrientation = Orientation.Horizontal,
				groupFillBehavior = FillBehavior.Fit,
				containerWidth = 200,
				parentSurface = true,
			}),
			Fill = React.createElement(LabeledItem, {
				label = "Fill",
				LayoutOrder = 2,
				groupOrientation = Orientation.Horizontal,
				groupFillBehavior = FillBehavior.Fill,
				containerWidth = 200,
				parentSurface = true,
			}),
		}),
	})
end

local function StatesStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Selection = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Selected",
				contentTag = "row gap-large auto-xy",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledItem, {
					label = size :: string,
					LayoutOrder = index,
					groupSize = size,
					selectedValue = ITEM_VALUE,
					containerWidth = 160,
				})
			end)
		),
		Disabled = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Disabled",
			contentTag = "auto-xy",
		}, {
			Example = React.createElement(ItemExample, {
				selectedValue = ITEM_VALUE,
				isDisabled = true,
				containerWidth = 160,
			}),
		}),
	})
end

local ORIENTATION_MATRIX_ROWS: {
	{
		label: string,
		groupOrientation: Orientation,
		groupFillBehavior: FillBehavior?,
	}
} =
	{
		{
			label = "Vertical",
			groupOrientation = Orientation.Vertical,
			groupFillBehavior = nil,
		},
		{
			label = "Horizontal Fit",
			groupOrientation = Orientation.Horizontal,
			groupFillBehavior = FillBehavior.Fit,
		},
		{
			label = "Horizontal Fill",
			groupOrientation = Orientation.Horizontal,
			groupFillBehavior = FillBehavior.Fill,
		},
	}

type OrientationMatrixColumn = {
	label: string,
	selectedValue: string?,
	icon: string?,
}

local function OrientationSelectionMatrix(props: {
	LayoutOrder: number,
	columns: { OrientationMatrixColumn },
})
	local headerCells: { [string]: React.ReactNode } = {
		Corner = React.createElement(View, {
			Size = UDim2.fromOffset(120, 0),
			LayoutOrder = 1,
		}),
	}
	for columnIndex, column in props.columns do
		headerCells[`Header-{column.label}`] = React.createElement(Text, {
			Text = column.label,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			Size = UDim2.fromOffset(ITEM_COLUMN_WIDTH, 0),
			LayoutOrder = columnIndex + 1,
		})
	end

	local orientationRows = Dash.map(ORIENTATION_MATRIX_ROWS, function(row, rowIndex)
		local cells: { [string]: React.ReactNode } = {
			Label = React.createElement(Text, {
				Text = row.label,
				tag = "auto-xy text-caption-small text-align-x-left content-default",
				Size = UDim2.fromOffset(120, 0),
				LayoutOrder = 1,
			}),
		}
		for columnIndex, column in props.columns do
			cells[`Cell-{column.label}`] = React.createElement(ItemExample, {
				LayoutOrder = columnIndex + 1,
				groupOrientation = row.groupOrientation,
				groupFillBehavior = row.groupFillBehavior,
				selectedValue = column.selectedValue,
				icon = column.icon,
				description = "Description",
				containerWidth = ITEM_COLUMN_WIDTH,
			})
		end
		return React.createElement(View, {
			tag = "row gap-large auto-xy",
			LayoutOrder = rowIndex + 1,
		}, cells)
	end)

	return React.createElement(View, {
		tag = "col gap-large auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Header = React.createElement(View, {
			tag = "row align-y-center gap-large auto-xy",
			LayoutOrder = 1,
		}, headerCells),
		Rows = React.createElement(View, {
			tag = "col gap-large auto-xy",
			LayoutOrder = 2,
		}, orientationRows),
	})
end

local SELECTION_COLUMNS: { OrientationMatrixColumn } = {
	{ label = "Unselected", selectedValue = nil },
	{ label = "Selected", selectedValue = ITEM_VALUE },
}

local ICON_COLUMNS: { OrientationMatrixColumn } = {
	{ label = "Without icon", selectedValue = nil },
	{ label = "With icon", selectedValue = nil, icon = IconName.House },
}

local function OrientationStory()
	if Flags.FoundationOptionSelectorGroupBeta then
		return React.createElement(View, {
			tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
		}, {
			Matrix = React.createElement(OrientationSelectionMatrix, {
				LayoutOrder = 1,
				columns = ICON_COLUMNS,
			}),
		})
	end

	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		WithoutIcon = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Without icon",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(OrientationSelectionMatrix, {
				LayoutOrder = 1,
				columns = SELECTION_COLUMNS,
			}),
		}),
		WithIcon = React.createElement(Section, {
			LayoutOrder = 2,
			name = "With icon",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(OrientationSelectionMatrix, {
				LayoutOrder = 1,
				columns = Dash.map(SELECTION_COLUMNS, function(column)
					return {
						label = column.label,
						selectedValue = column.selectedValue,
						icon = IconName.House,
					}
				end),
			}),
		}),
	})
end

local function ControlledExample()
	local selectedValue, setSelectedValue = React.useState(nil :: string?)

	return React.createElement(View, {
		tag = "col gap-medium auto-xy",
	}, {
		Item = React.createElement(ItemExample, {
			LayoutOrder = 1,
			selectedValue = selectedValue,
			onValueChanged = setSelectedValue,
			description = "Click to select or clear",
			containerWidth = ITEM_COLUMN_WIDTH,
		}),
		Readout = React.createElement(Text, {
			Text = `Selected: {selectedValue or "none"}`,
			tag = "auto-xy text-body-medium text-align-x-left content-emphasis",
			LayoutOrder = 2,
		}),
	})
end

local function ControlledStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Controlled = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Selection updates value",
			contentTag = "auto-xy",
		}, {
			Example = React.createElement(ControlledExample),
		}),
	})
end

local function ContentStory()
	local iconHeaderCells: { [string]: React.ReactNode } = {
		Corner = React.createElement(View, {
			Size = UDim2.fromOffset(80, 0),
			LayoutOrder = 1,
		}),
	}
	for columnIndex, iconType in ICON_TYPES do
		iconHeaderCells[`Header-{iconType.caption}`] = React.createElement(Text, {
			Text = iconType.caption,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			Size = UDim2.fromOffset(ICON_MATRIX_COLUMN_WIDTH, 0),
			LayoutOrder = columnIndex + 1,
		})
	end

	local sizeRows = Dash.map(SIZE_ORDER, function(size, rowIndex)
		local cells: { [string]: React.ReactNode } = {
			Label = React.createElement(Text, {
				Text = size :: string,
				tag = "auto-xy text-caption-small text-align-x-left content-default",
				Size = UDim2.fromOffset(80, 0),
				LayoutOrder = 1,
			}),
		}
		for columnIndex, iconType in ICON_TYPES do
			cells[`Cell-{iconType.caption}`] = React.createElement(ItemExample, {
				LayoutOrder = columnIndex + 1,
				groupSize = size,
				icon = iconType.icon,
				containerWidth = ICON_MATRIX_COLUMN_WIDTH,
			})
		end
		return React.createElement(View, {
			tag = "row gap-large auto-xy",
			LayoutOrder = rowIndex + 1,
		}, cells)
	end)

	local textCombinations: {
		{
			caption: string,
			label: string,
			metadata: string?,
			description: string?,
		}
	} =
		{
			{
				caption = "Label",
				label = "Title",
				metadata = nil,
				description = nil,
			},
			{
				caption = "Label + metadata",
				label = "Title",
				metadata = "Metadata",
				description = nil,
			},
			{
				caption = "Label + description",
				label = "Title",
				metadata = nil,
				description = "Description",
			},
			{
				caption = "Label + metadata + description",
				label = "Title",
				metadata = "Metadata",
				description = "Description",
			},
		}

	local textCombinationHeaderCells: { [string]: React.ReactNode } = {
		Corner = React.createElement(View, {
			Size = UDim2.fromOffset(220, 0),
			LayoutOrder = 1,
		}),
		NoIcon = React.createElement(Text, {
			Text = "No icon",
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			Size = UDim2.fromOffset(ITEM_COLUMN_WIDTH, 0),
			LayoutOrder = 2,
		}),
		WithIcon = React.createElement(Text, {
			Text = "With icon",
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			Size = UDim2.fromOffset(ITEM_COLUMN_WIDTH, 0),
			LayoutOrder = 3,
		}),
	}

	local textCombinationRows = Dash.map(textCombinations, function(combination, rowIndex)
		return React.createElement(View, {
			tag = "row gap-large auto-xy",
			LayoutOrder = rowIndex + 1,
		}, {
			Label = React.createElement(Text, {
				Text = combination.caption,
				tag = "auto-xy text-caption-small text-align-x-left content-default",
				Size = UDim2.fromOffset(220, 0),
				LayoutOrder = 1,
			}),
			NoIcon = React.createElement(ItemExample, {
				LayoutOrder = 2,
				label = combination.label,
				metadata = combination.metadata,
				description = combination.description,
				containerWidth = ITEM_COLUMN_WIDTH,
			}),
			WithIcon = React.createElement(ItemExample, {
				LayoutOrder = 3,
				icon = IconName.House,
				label = combination.label,
				metadata = combination.metadata,
				description = combination.description,
				containerWidth = ITEM_COLUMN_WIDTH,
			}),
		})
	end)

	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		IconByTypeAndSize = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Icon by type and size",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(View, {
				tag = "col gap-large auto-xy",
				LayoutOrder = 1,
			}, {
				Header = React.createElement(View, {
					tag = "row align-y-center gap-large auto-xy",
					LayoutOrder = 1,
				}, iconHeaderCells),
				Rows = React.createElement(View, {
					tag = "col gap-large auto-xy",
					LayoutOrder = 2,
				}, sizeRows),
			}),
		}),
		TextCombinations = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Label, metadata & description",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(View, {
				tag = "col gap-large auto-xy",
				LayoutOrder = 1,
			}, {
				Header = React.createElement(View, {
					tag = "row align-y-center gap-large auto-xy",
					LayoutOrder = 1,
				}, textCombinationHeaderCells),
				Rows = React.createElement(View, {
					tag = "col gap-large auto-xy",
					LayoutOrder = 2,
				}, textCombinationRows),
			}),
		}),
		LongText = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Long text",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(View, {
				tag = "col gap-large auto-xy",
				LayoutOrder = 1,
			}, {
				Header = React.createElement(View, {
					tag = "row align-y-center gap-large auto-xy",
					LayoutOrder = 1,
				}, {
					Default = React.createElement(Text, {
						Text = "Default",
						tag = "auto-xy text-caption-small text-align-x-left content-muted",
						Size = UDim2.fromOffset(ITEM_COLUMN_WIDTH, 0),
						LayoutOrder = 1,
					}),
					WithIcon = React.createElement(Text, {
						Text = if Flags.FoundationOptionSelectorGroupBeta then "With icon" else "With icon + selected",
						tag = "auto-xy text-caption-small text-align-x-left content-muted",
						Size = UDim2.fromOffset(ITEM_COLUMN_WIDTH, 0),
						LayoutOrder = 2,
					}),
				}),
				Row = React.createElement(View, {
					tag = "row gap-large auto-xy",
					LayoutOrder = 2,
				}, {
					Default = React.createElement(ItemExample, {
						LayoutOrder = 1,
						label = LONG_TEXT,
						metadata = LONG_TEXT,
						description = LONG_TEXT,
						containerWidth = ITEM_COLUMN_WIDTH,
					}),
					WithIcon = React.createElement(ItemExample, {
						LayoutOrder = 2,
						icon = IconName.House,
						selectedValue = if Flags.FoundationOptionSelectorGroupBeta then nil else ITEM_VALUE,
						label = LONG_TEXT,
						metadata = LONG_TEXT,
						description = LONG_TEXT,
						containerWidth = ITEM_COLUMN_WIDTH,
					}),
				}),
			}),
		}),
	})
end

return {
	summary = "A single selectable option inside an OptionSelectorGroup. Renders label, optional icon/metadata/description. Behind FoundationOptionSelectorGroupBeta, selection uses a Checked contrast stroke (no trailing checkmark) with Hover/Press state layers.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizing",
			summary = "Prefer Root `size` and `fillBehavior` (Item props deprecated). fillBehavior applies in horizontal groups; default Fit. Vertical groups always Fill.",
			story = SizingStory,
		},
		{
			name = "States",
			summary = "Selected uses a contrast stroke (checkmark when FoundationOptionSelectorGroupBeta is off).",
			story = StatesStory,
		},
		{
			name = "Orientation",
			summary = if Flags.FoundationOptionSelectorGroupBeta
				then "Rows: Vertical group, Horizontal Fit, Horizontal Fill. Columns: Without icon / With icon. Each Item lays out opposite the group (vertical group → horizontal item content; horizontal group → vertical item content)."
				else "Rows: Vertical group, Horizontal Fit, Horizontal Fill. Columns: Unselected / Selected. Each Item lays out opposite the group (vertical group → horizontal item content; horizontal group → vertical item content).",
			story = OrientationStory,
		},
		{
			name = "Controlled component",
			story = ControlledStory,
		},
		{
			name = "Content",
			summary = "XSmall and Small share text-title-small, so the footprint jump is subtler until Medium (title + padding both step up).",
			story = ContentStory,
		},
	},
	controls = {
		groupOrientation = GROUP_ORIENTATION_ORDER,
		groupSize = PLAYGROUND_GROUP_SIZE_OPTIONS,
		groupFillBehavior = PLAYGROUND_GROUP_FILL_BEHAVIOR_OPTIONS,
		icon = PLAYGROUND_ICON_OPTIONS,
		isDisabled = false,
		isSelected = false,
		label = "Label",
		metadata = "",
		description = "",
	},
}
