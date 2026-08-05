local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local FillBehavior = require(Foundation.Enums.FillBehavior)
local InputSize = require(Foundation.Enums.InputSize)
local OptionSelectorGroup = require(Foundation.Components.OptionSelectorGroup)
local OptionSelectorGroupContext = require(script.Parent.Parent.OptionSelectorGroupContext)
local Orientation = require(Foundation.Enums.Orientation)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local IconName = BuilderIcons.Icon

type FillBehavior = FillBehavior.FillBehavior
type InputSize = InputSize.InputSize
type Orientation = Orientation.Orientation

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
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

local PLAYGROUND_ICON_OPTIONS = {
	React.None,
	IconName.House,
	"icons/placeholder/placeholderOn_small",
	"icons/menu/clothing/limited_on",
}

local PLAYGROUND_FILL_BEHAVIOR_OPTIONS = {
	React.None,
	FillBehavior.Fit,
	FillBehavior.Fill,
}

local LONG_TEXT =
	"With a lot of extra text to see how it behaves when it might need to wrap to multiple lines because it simply cannot fit on one line"

local LONG_TEXT_SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Medium,
}
local LONG_TEXT_LABEL_WIDTH = 80

local ITEM_COLUMN_WIDTH = 280
local ITEM_VALUE = "A"

local function Section(props: {
	layoutOrder: number,
	name: string,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.layoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "text-label-medium content-default auto-xy",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large align-y-start auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function ItemExample(
	props: {
		layoutOrder: number?,
		groupOrientation: Orientation?,
		selectedValue: string?,
		onValueChanged: ((string?) -> ())?,
		value: string?,
		icon: string?,
		-- When omitted, defaults to "Option". Pass "" to render an empty label.
		label: string?,
		metadata: string?,
		description: string?,
		isDisabled: boolean?,
		size: InputSize?,
		fillBehavior: FillBehavior?,
		containerWidth: number?,
		-- Draws a surface behind the bounded parent so Fill vs Fit sizing is easier to see.
		parentSurface: boolean?,
	}
)
	local groupOrientation = props.groupOrientation or Orientation.Vertical
	-- Bound the wrapper when an explicit width is set, or when Fill needs a parent to expand into.
	local needsBoundedWidth = props.containerWidth ~= nil or props.fillBehavior == FillBehavior.Fill
	local label = if props.label ~= nil then props.label else "Option"
	local value = props.value or ITEM_VALUE

	local wrapperTag = if needsBoundedWidth then "size-full-0 auto-y" else "auto-xy"
	if props.parentSurface then
		wrapperTag = `{wrapperTag} bg-surface-100 radius-medium padding-large`
	end

	return React.createElement(View, {
		tag = wrapperTag,
		Size = if props.containerWidth ~= nil
			then UDim2.fromOffset(props.containerWidth, 0)
			elseif props.fillBehavior == FillBehavior.Fill then UDim2.fromOffset(ITEM_COLUMN_WIDTH, 0)
			else nil,
		LayoutOrder = props.layoutOrder,
	}, {
		Provider = React.createElement(OptionSelectorGroupContext.Provider, {
			value = {
				value = props.selectedValue,
				onValueChanged = props.onValueChanged or Dash.noop,
				orientation = groupOrientation,
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
				size = props.size or InputSize.Medium,
				fillBehavior = props.fillBehavior,
			}),
		}),
	})
end

local function LabeledItem(props: {
	label: string,
	layoutOrder: number,
	groupOrientation: Orientation?,
	selectedValue: string?,
	size: InputSize?,
	fillBehavior: FillBehavior?,
	containerWidth: number?,
	parentSurface: boolean?,
})
	return React.createElement(View, {
		tag = "col gap-small align-x-left auto-xy",
		LayoutOrder = props.layoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Item = React.createElement(ItemExample, {
			layoutOrder = 2,
			groupOrientation = props.groupOrientation,
			selectedValue = props.selectedValue,
			size = props.size,
			fillBehavior = props.fillBehavior,
			containerWidth = props.containerWidth,
			parentSurface = props.parentSurface,
		}),
	})
end

local function PlaygroundStory(props: {
	controls: {
		groupOrientation: Orientation,
		icon: string?,
		isDisabled: boolean,
		isSelected: boolean,
		label: string,
		metadata: string,
		description: string,
		size: InputSize,
		fillBehavior: FillBehavior?,
	},
})
	local controls = props.controls
	local fillBehavior: FillBehavior? = if controls.fillBehavior == React.None
		then nil
		else controls.fillBehavior :: FillBehavior?
	local icon: string? = if controls.icon == React.None then nil else controls.icon :: string?

	return React.createElement(View, {
		tag = "size-full-0 auto-y bg-surface-100 radius-medium padding-large",
	}, {
		Example = React.createElement(ItemExample, {
			groupOrientation = controls.groupOrientation,
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
			size = controls.size,
			fillBehavior = fillBehavior,
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
				layoutOrder = 1,
				name = "Size",
				contentTag = "row gap-large align-y-end auto-xy",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledItem, {
					label = size :: string,
					layoutOrder = index,
					size = size,
					containerWidth = 160,
				})
			end)
		),
		FillBehavior = React.createElement(Section, {
			layoutOrder = 2,
			name = "Fill behavior",
			contentTag = "col gap-large align-x-left size-full-0 auto-y",
		}, {
			Fit = React.createElement(LabeledItem, {
				label = "Fit",
				layoutOrder = 1,
				groupOrientation = Orientation.Horizontal,
				fillBehavior = FillBehavior.Fit,
				containerWidth = 200,
				parentSurface = true,
			}),
			Fill = React.createElement(LabeledItem, {
				label = "Fill",
				layoutOrder = 2,
				groupOrientation = Orientation.Horizontal,
				fillBehavior = FillBehavior.Fill,
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
				layoutOrder = 1,
				name = "Selected",
				contentTag = "row gap-large align-y-end auto-xy",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledItem, {
					label = size :: string,
					layoutOrder = index,
					size = size,
					selectedValue = ITEM_VALUE,
					containerWidth = 160,
				})
			end)
		),
		Disabled = React.createElement(Section, {
			layoutOrder = 2,
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

local SELECTION_ORDER = {
	{ label = "Unselected", selectedValue = nil :: string? },
	{ label = "Selected", selectedValue = ITEM_VALUE },
}

local ORIENTATION_MATRIX_ROWS: {
	{
		label: string,
		groupOrientation: Orientation,
		fillBehavior: FillBehavior?,
	}
} =
	{
		{
			label = "Vertical",
			groupOrientation = Orientation.Vertical,
			fillBehavior = nil,
		},
		{
			label = "Horizontal Fit",
			groupOrientation = Orientation.Horizontal,
			fillBehavior = FillBehavior.Fit,
		},
		{
			label = "Horizontal Fill",
			groupOrientation = Orientation.Horizontal,
			fillBehavior = FillBehavior.Fill,
		},
	}

local function OrientationSelectionMatrix(props: {
	layoutOrder: number,
	icon: string?,
})
	local headerCells: { [string]: React.ReactNode } = {
		Corner = React.createElement(View, {
			Size = UDim2.fromOffset(120, 0),
			LayoutOrder = 1,
		}),
	}
	for columnIndex, selection in SELECTION_ORDER do
		headerCells[`Header-{selection.label}`] = React.createElement(Text, {
			Text = selection.label,
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
		for columnIndex, selection in SELECTION_ORDER do
			cells[`Cell-{selection.label}`] = React.createElement(ItemExample, {
				layoutOrder = columnIndex + 1,
				groupOrientation = row.groupOrientation,
				fillBehavior = row.fillBehavior,
				selectedValue = selection.selectedValue,
				icon = props.icon,
				description = "Description",
				containerWidth = ITEM_COLUMN_WIDTH,
			})
		end
		return React.createElement(View, {
			tag = "row gap-large align-y-start auto-xy",
			LayoutOrder = rowIndex + 1,
		}, cells)
	end)

	return React.createElement(View, {
		tag = "col gap-large auto-xy",
		LayoutOrder = props.layoutOrder,
	}, {
		Header = React.createElement(View, {
			tag = "row gap-large align-y-center auto-xy",
			LayoutOrder = 1,
		}, headerCells),
		Rows = React.createElement(View, {
			tag = "col gap-large auto-xy",
			LayoutOrder = 2,
		}, orientationRows),
	})
end

local function OrientationStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		WithoutIcon = React.createElement(Section, {
			layoutOrder = 1,
			name = "Without icon",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(OrientationSelectionMatrix, {
				layoutOrder = 1,
			}),
		}),
		WithIcon = React.createElement(Section, {
			layoutOrder = 2,
			name = "With icon",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(OrientationSelectionMatrix, {
				layoutOrder = 1,
				icon = IconName.House,
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
			layoutOrder = 1,
			selectedValue = selectedValue,
			onValueChanged = setSelectedValue,
			description = "Click to select or clear",
			containerWidth = ITEM_COLUMN_WIDTH,
		}),
		Readout = React.createElement(Text, {
			Text = `Selected: {selectedValue or "none"}`,
			tag = "auto-xy text-body-medium content-emphasis text-align-x-left",
			LayoutOrder = 2,
		}),
	})
end

local function ControlledStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Controlled = React.createElement(Section, {
			layoutOrder = 1,
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
			Size = UDim2.fromOffset(160, 0),
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
				layoutOrder = columnIndex + 1,
				size = size,
				icon = iconType.icon,
				containerWidth = 160,
			})
		end
		return React.createElement(View, {
			tag = "row gap-large align-y-end auto-xy",
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
			tag = "row gap-large align-y-start auto-xy",
			LayoutOrder = rowIndex + 1,
		}, {
			Label = React.createElement(Text, {
				Text = combination.caption,
				tag = "auto-xy text-caption-small text-align-x-left content-default",
				Size = UDim2.fromOffset(220, 0),
				LayoutOrder = 1,
			}),
			NoIcon = React.createElement(ItemExample, {
				layoutOrder = 2,
				label = combination.label,
				metadata = combination.metadata,
				description = combination.description,
				containerWidth = ITEM_COLUMN_WIDTH,
			}),
			WithIcon = React.createElement(ItemExample, {
				layoutOrder = 3,
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
			layoutOrder = 1,
			name = "Icon by type and size",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(View, {
				tag = "col gap-large auto-xy",
				LayoutOrder = 1,
			}, {
				Header = React.createElement(View, {
					tag = "row gap-large align-y-center auto-xy",
					LayoutOrder = 1,
				}, iconHeaderCells),
				Rows = React.createElement(View, {
					tag = "col gap-large auto-xy",
					LayoutOrder = 2,
				}, sizeRows),
			}),
		}),
		TextCombinations = React.createElement(Section, {
			layoutOrder = 2,
			name = "Label, metadata & description",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(View, {
				tag = "col gap-large auto-xy",
				LayoutOrder = 1,
			}, {
				Header = React.createElement(View, {
					tag = "row gap-large align-y-center auto-xy",
					LayoutOrder = 1,
				}, textCombinationHeaderCells),
				Rows = React.createElement(View, {
					tag = "col gap-large auto-xy",
					LayoutOrder = 2,
				}, textCombinationRows),
			}),
		}),
		LongText = React.createElement(Section, {
			layoutOrder = 3,
			name = "Long text",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(View, {
				tag = "col gap-large auto-xy",
				LayoutOrder = 1,
			}, {
				Header = React.createElement(View, {
					tag = "row gap-large align-y-center auto-xy",
					LayoutOrder = 1,
				}, {
					Corner = React.createElement(View, {
						Size = UDim2.fromOffset(LONG_TEXT_LABEL_WIDTH, 0),
						LayoutOrder = 1,
					}),
					Default = React.createElement(Text, {
						Text = "Default",
						tag = "auto-xy text-caption-small text-align-x-left content-muted",
						Size = UDim2.fromOffset(ITEM_COLUMN_WIDTH, 0),
						LayoutOrder = 2,
					}),
					WithIconSelected = React.createElement(Text, {
						Text = "With icon + selected",
						tag = "auto-xy text-caption-small text-align-x-left content-muted",
						Size = UDim2.fromOffset(ITEM_COLUMN_WIDTH, 0),
						LayoutOrder = 3,
					}),
				}),
				Rows = React.createElement(
					View,
					{
						tag = "col gap-large auto-xy",
						LayoutOrder = 2,
					},
					Dash.map(LONG_TEXT_SIZE_ORDER, function(size, rowIndex)
						return React.createElement(View, {
							tag = "row gap-large align-y-start auto-xy",
							LayoutOrder = rowIndex,
						}, {
							Label = React.createElement(Text, {
								Text = size :: string,
								tag = "auto-xy text-caption-small text-align-x-left content-default",
								Size = UDim2.fromOffset(LONG_TEXT_LABEL_WIDTH, 0),
								LayoutOrder = 1,
							}),
							Default = React.createElement(ItemExample, {
								layoutOrder = 2,
								size = size,
								label = LONG_TEXT,
								metadata = LONG_TEXT,
								description = LONG_TEXT,
								containerWidth = ITEM_COLUMN_WIDTH,
							}),
							WithIconSelected = React.createElement(ItemExample, {
								layoutOrder = 3,
								size = size,
								icon = IconName.House,
								selectedValue = ITEM_VALUE,
								label = LONG_TEXT,
								metadata = LONG_TEXT,
								description = LONG_TEXT,
								containerWidth = ITEM_COLUMN_WIDTH,
							}),
						})
					end)
				),
			}),
		}),
	})
end

return {
	summary = "A single selectable option inside an OptionSelectorGroup. Renders label, optional icon/metadata/description, and a checkmark when selected.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizing",
			summary = "fillBehavior applies when the group is horizontal (item stacks content vertically); default is Fit. Vertical groups force Fill. Fit hugs content; Fill spans the parent width.",
			story = SizingStory,
		},
		{
			name = "States",
			story = StatesStory,
		},
		{
			name = "Orientation",
			summary = "Rows: Vertical group, Horizontal Fit, Horizontal Fill. Columns: Unselected / Selected. Each Item lays out opposite the group (vertical group → horizontal item content; horizontal group → vertical item content).",
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
		icon = PLAYGROUND_ICON_OPTIONS,
		isDisabled = false,
		isSelected = false,
		label = "Label",
		metadata = "",
		description = "",
		size = SIZE_ORDER,
		fillBehavior = PLAYGROUND_FILL_BEHAVIOR_OPTIONS,
	},
}
