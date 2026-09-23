local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Chip = require(Foundation.Components.Chip)
local ChipSize = require(Foundation.Enums.ChipSize)
local ControlState = require(Foundation.Enums.ControlState)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StateLayerMode = require(Foundation.Enums.StateLayerMode)
local StorySectionShared = require(Foundation.Utility.Stories.Shared.StorySection)
local Text = require(Foundation.Components.Text)
local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

type ColorStyle = Types.ColorStyle
type ColorStyleValue = Types.ColorStyleValue
type Tokens = Tokens.Tokens

type ControlState = ControlState.ControlState

local matrixInfoLabel = MatrixGridShared.matrixInfoLabel
local matrixLabel = MatrixGridShared.matrixLabel

local LabeledCell = StorySectionShared.LabeledCell
local MatrixSection = StorySectionShared.MatrixSection
local Section = StorySectionShared.Section
local STORY_FRAME_TAG = StorySectionShared.STORY_FRAME_TAG

local PAGE_TAG = `col gap-xxlarge size-full-0 auto-y {STORY_FRAME_TAG}`

local RbxDesignFoundations = require(Packages.RbxDesignFoundations)
local DesignTokens = RbxDesignFoundations.themes[RbxDesignFoundations.Theme.Default]().Dark(1)
local NominalScale = DesignTokens.Config.Text.NominalScale

local SAMPLE_TEXT = "Text string"
-- The same bidirectional content in both orders, carrying digits and trailing punctuation so the
-- neutral characters have a direction to resolve against. Which one leads is what Auto reads.
local LTR_MIXED_TEXT = "Text نص تجريبي 123!"
local RTL_MIXED_TEXT = "نص تجريبي Text 123!"
local WRAPPING_TEXT = "Text string that wraps onto more than one line."
local TRUNCATION_TEXT = "Text string that keeps going well past the third line "
	.. "of this narrow frame, with more to follow."
local RICH_TEXT_MARKUP = 'This is a <b>bold</b>, <i>italic</i>, <font color="#7DA9FF">colored</font> string.'

local NARROW_WIDTH = 120
local WIDE_WIDTH = 240
local TRUNCATION_WIDTH = 180
local ALIGNMENT_WIDTH = 200
local ALIGNMENT_HEIGHT = 84
local SCALED_SHORT_HEIGHT = 40
local SCALED_TALL_HEIGHT = 84

local CELL_GUTTER = 24
local LABEL_COLUMN_WIDTH = 160
local TRUNCATION_LABEL_COLUMN_WIDTH = 150

local FRAME_TAG = "col auto-y padding-small radius-small clip bg-surface-100"
-- Snackbar's shape for multi-line text: the frame hugs but is capped by a sizeConstraint width,
-- and the text fills that width, grows its own height, and is clamped by a sizeConstraint height.
local CONTENT_FRAME_TAG = "row auto-xy padding-small radius-small clip bg-surface-100"
local FILL_TEXT_TAG = "fill auto-xy text-body-medium text-align-x-left content-default"

local MIN_SIZE = Vector2.zero

local X_ALIGNMENT_HEADERS: { string } = { "text-align-x-left", "text-align-x-center", "text-align-x-right" }
local Y_ALIGNMENT_HEADERS: { string } = { "text-align-y-top", "text-align-y-center", "text-align-y-bottom" }
local DIRECTION_HEADERS: { string } = { "Auto", "LeftToRight", "RightToLeft" }
local TEXT_STYLE_HEADERS: { string } = {
	"Unset",
	"{ Color3 = ... }",
	"{ Transparency = 0.5 }",
}
local SCALED_HEADERS: { string } = { "TextScaled = false", "TextScaled = true" }
local WRAPPED_HEADERS: { string } = { "text-no-wrap", "text-wrap" }
local TRUNCATE_HEADERS: { string } = { "text-truncate-end", "text-truncate-split" }
local RICH_TEXT_HEADERS: { string } = { "RichText = false", "RichText = true" }

type TypographyEntry = {
	tokenName: string,
	scale: string,
	tag: string,
}

type TypographySection = {
	name: string,
	entries: { TypographyEntry },
}

local TYPOGRAPHY_SECTIONS: { TypographySection } = {
	{
		name = "Body",
		entries = {
			{ tokenName = "BodySmall", scale = "Small", tag = "text-body-small" },
			{ tokenName = "BodyMedium", scale = "Medium", tag = "text-body-medium" },
			{ tokenName = "BodyLarge", scale = "Large", tag = "text-body-large" },
		},
	},
	{
		name = "Caption",
		entries = {
			{ tokenName = "CaptionSmall", scale = "Small", tag = "text-caption-small" },
			{ tokenName = "CaptionMedium", scale = "Medium", tag = "text-caption-medium" },
			{ tokenName = "CaptionLarge", scale = "Large", tag = "text-caption-large" },
		},
	},
	{
		name = "Display",
		entries = {
			{ tokenName = "DisplaySmall", scale = "Small", tag = "text-display-small" },
			{ tokenName = "DisplayMedium", scale = "Medium", tag = "text-display-medium" },
			{ tokenName = "DisplayLarge", scale = "Large", tag = "text-display-large" },
		},
	},
	{
		name = "Heading",
		entries = {
			{ tokenName = "HeadingSmall", scale = "Small", tag = "text-heading-small" },
			{ tokenName = "HeadingMedium", scale = "Medium", tag = "text-heading-medium" },
			{ tokenName = "HeadingLarge", scale = "Large", tag = "text-heading-large" },
		},
	},
	{
		name = "Label",
		entries = {
			{ tokenName = "LabelSmall", scale = "Small", tag = "text-label-small" },
			{ tokenName = "LabelMedium", scale = "Medium", tag = "text-label-medium" },
			{ tokenName = "LabelLarge", scale = "Large", tag = "text-label-large" },
		},
	},
	{
		name = "Title",
		entries = {
			{ tokenName = "TitleSmall", scale = "Small", tag = "text-title-small" },
			{ tokenName = "TitleMedium", scale = "Medium", tag = "text-title-medium" },
			{ tokenName = "TitleLarge", scale = "Large", tag = "text-title-large" },
		},
	},
}

type TextStyleEntry = {
	path: string,
	style: ColorStyleValue,
}

type TextStyleGroup = {
	name: string,
	surfaceStyle: ColorStyleValue?,
	entries: { TextStyleEntry },
}

local function textStyleGroups(tokens: Tokens): { TextStyleGroup }
	return {
		{
			name = "Content",
			entries = {
				{ path = "Color.Content.Emphasis", style = tokens.Color.Content.Emphasis },
				{ path = "Color.Content.Default", style = tokens.Color.Content.Default },
				{ path = "Color.Content.Muted", style = tokens.Color.Content.Muted },
				{ path = "Color.Content.Link", style = tokens.Color.Content.Link },
			},
		},
		{
			name = "System",
			entries = {
				{ path = "Color.System.Contrast", style = tokens.Color.System.Contrast },
				{ path = "Color.System.Neutral", style = tokens.Color.System.Neutral },
				{ path = "Color.System.Emphasis", style = tokens.Color.System.Emphasis },
				{ path = "Color.System.Success", style = tokens.Color.System.Success },
				{ path = "Color.System.Warning", style = tokens.Color.System.Warning },
				{ path = "Color.System.Alert", style = tokens.Color.System.Alert },
			},
		},
		{
			name = "Inverse content",
			surfaceStyle = tokens.Inverse.Surface.Surface_100,
			entries = {
				{ path = "Inverse.Content.Emphasis", style = tokens.Inverse.Content.Emphasis },
				{ path = "Inverse.Content.Default", style = tokens.Inverse.Content.Default },
				{ path = "Inverse.Content.Muted", style = tokens.Inverse.Content.Muted },
				{ path = "Inverse.Content.Link", style = tokens.Inverse.Content.Link },
			},
		},
	}
end

local ALL_FILTER = "All"
local CATEGORY_FILTERS: { string } = { ALL_FILTER, "Body", "Caption", "Display", "Heading", "Label", "Title" }
local SCALE_FILTERS: { string } = { ALL_FILTER, "Small", "Medium", "Large" }
local STYLE_FILTERS: { string } = { ALL_FILTER, "Content", "System", "Inverse content" }

local CATALOG_LABEL_COLUMN_WIDTH = 140
local CATALOG_FILTER_LABEL_WIDTH = 64
local TEXT_STYLE_PATH_COLUMN_WIDTH = 190
local TEXT_STYLE_SPECS_COLUMN_WIDTH = 150

local function formatTypographySpecs(typography: typeof(DesignTokens.Typography.CaptionSmall)): string
	local trueTextSize = typography.FontSize / NominalScale
	local trueLineHeight = typography.LineHeight * NominalScale
	local desiredLineSize = trueTextSize * trueLineHeight
	return string.format(
		"%dpx / %.1f (%dpx line)",
		math.round(trueTextSize),
		trueLineHeight,
		math.round(desiredLineSize)
	)
end

local function formatColorSpecs(style: ColorStyleValue): string
	local color = if style.Color3 ~= nil then `#{string.upper(style.Color3:ToHex())}` else "Color3 unset"
	local transparency = if style.Transparency ~= nil then string.format("%.2f", style.Transparency) else "unset"
	return `{color} / {transparency}`
end

local function WrappingCell(props: {
	LayoutOrder: number?,
	width: number,
	wrapTag: string,
})
	return React.createElement(View, {
		tag = CONTENT_FRAME_TAG,
		sizeConstraint = {
			MinSize = MIN_SIZE,
			MaxSize = Vector2.new(props.width, math.huge),
		},
		LayoutOrder = props.LayoutOrder,
	}, {
		Content = React.createElement(Text, {
			Text = WRAPPING_TEXT,
			tag = `{FILL_TEXT_TAG} {props.wrapTag}`,
			LayoutOrder = 1,
		}),
	})
end

local function TruncationCell(props: {
	LayoutOrder: number?,
	lines: number,
	truncateTag: string,
})
	local tokens = useTokens()
	local typography = tokens.Typography.BodyMedium
	local maxHeight = typography.FontSize * typography.LineHeight * props.lines
	local wrapTag = if props.lines > 1 then "text-wrap" else "text-no-wrap"

	return React.createElement(View, {
		tag = CONTENT_FRAME_TAG,
		sizeConstraint = {
			MinSize = MIN_SIZE,
			MaxSize = Vector2.new(TRUNCATION_WIDTH, math.huge),
		},
		LayoutOrder = props.LayoutOrder,
	}, {
		Content = React.createElement(Text, {
			Text = TRUNCATION_TEXT,
			sizeConstraint = {
				MinSize = MIN_SIZE,
				MaxSize = Vector2.new(math.huge, maxHeight),
			},
			tag = `{FILL_TEXT_TAG} {wrapTag} {props.truncateTag}`,
			LayoutOrder = 1,
		}),
	})
end

local function RichTextCell(props: {
	LayoutOrder: number?,
	RichText: boolean,
})
	return React.createElement(View, {
		tag = CONTENT_FRAME_TAG,
		sizeConstraint = {
			MinSize = MIN_SIZE,
			MaxSize = Vector2.new(WIDE_WIDTH, math.huge),
		},
		LayoutOrder = props.LayoutOrder,
	}, {
		Content = React.createElement(Text, {
			Text = RICH_TEXT_MARKUP,
			RichText = props.RichText,
			TextWrapped = true,
			tag = FILL_TEXT_TAG,
			LayoutOrder = 1,
		}),
	})
end

local function HorizontalAlignmentCell(props: {
	LayoutOrder: number?,
	TextXAlignment: Enum.TextXAlignment,
})
	return React.createElement(View, {
		tag = FRAME_TAG,
		Size = UDim2.fromOffset(ALIGNMENT_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		Content = React.createElement(Text, {
			Text = SAMPLE_TEXT,
			TextXAlignment = props.TextXAlignment,
			tag = "size-full-0 auto-y text-body-medium content-default",
			LayoutOrder = 1,
		}),
	})
end

local function DirectionCell(props: {
	LayoutOrder: number?,
	Text: string,
	TextDirection: Enum.TextDirection,
})
	return React.createElement(View, {
		tag = FRAME_TAG,
		Size = UDim2.fromOffset(ALIGNMENT_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		Content = React.createElement(Text, {
			Text = props.Text,
			TextDirection = props.TextDirection,
			tag = "size-full-0 auto-y text-body-medium text-align-x-left content-default",
			LayoutOrder = 1,
		}),
	})
end

local function ScaledCell(props: {
	LayoutOrder: number?,
	height: number,
	TextScaled: boolean,
})
	return React.createElement(View, {
		tag = "col padding-small radius-small clip bg-surface-100",
		Size = UDim2.fromOffset(ALIGNMENT_WIDTH, props.height),
		LayoutOrder = props.LayoutOrder,
	}, {
		Content = React.createElement(Text, {
			Text = SAMPLE_TEXT,
			TextScaled = props.TextScaled,
			tag = "size-full text-body-medium text-align-x-left content-default",
			LayoutOrder = 1,
		}),
	})
end

local function VerticalAlignmentCell(props: {
	LayoutOrder: number?,
	TextYAlignment: Enum.TextYAlignment,
})
	return React.createElement(View, {
		tag = "col padding-small radius-small clip bg-surface-100",
		Size = UDim2.fromOffset(ALIGNMENT_WIDTH, ALIGNMENT_HEIGHT),
		LayoutOrder = props.LayoutOrder,
	}, {
		Content = React.createElement(Text, {
			Text = SAMPLE_TEXT,
			TextYAlignment = props.TextYAlignment,
			tag = "size-full text-body-medium text-align-x-left content-default",
			LayoutOrder = 1,
		}),
	})
end

local function TypographyRow(props: {
	LayoutOrder: number,
	scale: string,
	tag: string,
	specs: string,
})
	return React.createElement(View, {
		tag = "row gap-large size-full-0 auto-y padding-y-small",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(View, {
			tag = "col gap-xsmall size-full-0 auto-y",
			Size = UDim2.fromOffset(CATALOG_LABEL_COLUMN_WIDTH, 0),
			LayoutOrder = 1,
		}, {
			Scale = React.createElement(Text, {
				Text = props.scale,
				tag = "size-full-0 auto-y text-caption-small text-wrap text-align-x-left content-default",
				LayoutOrder = 1,
			}),
			Tag = React.createElement(Text, {
				Text = props.tag,
				tag = "size-full-0 auto-y text-caption-small text-wrap text-align-x-left content-muted",
				LayoutOrder = 2,
			}),
		}),
		Preview = React.createElement(Text, {
			Text = SAMPLE_TEXT,
			tag = `size-full-0 auto-y text-wrap text-align-x-left content-default {props.tag}`,
			LayoutOrder = 2,
		}),
		Specs = React.createElement(Text, {
			Text = props.specs,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			Size = UDim2.fromOffset(CATALOG_LABEL_COLUMN_WIDTH, 0),
			LayoutOrder = 3,
		}),
	})
end

local function FilterChipRow(props: {
	LayoutOrder: number,
	label: string,
	options: { string },
	selected: string,
	onSelected: (string) -> (),
})
	local chips: { [string]: React.ReactNode } = {}
	for index, option in props.options do
		chips[option] = React.createElement(Chip, {
			text = option,
			size = ChipSize.Small,
			isChecked = props.selected == option,
			LayoutOrder = index,
			onActivated = function()
				props.onSelected(option)
			end,
		})
	end

	return React.createElement(View, {
		tag = "row align-y-center gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			Size = UDim2.fromOffset(CATALOG_FILTER_LABEL_WIDTH, 0),
			LayoutOrder = 1,
		}),
		Options = React.createElement(View, {
			tag = "row wrap align-y-center gap-small auto-xy",
			LayoutOrder = 2,
		}, chips),
	})
end

local function FilterPanel(props: {
	LayoutOrder: number,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y padding-medium stroke-standard stroke-default radius-medium",
		LayoutOrder = props.LayoutOrder,
	}, props.children)
end

local function TypographyCatalog(props: {
	LayoutOrder: number,
})
	local tokens = useTokens()
	local category, setCategory = React.useState(ALL_FILTER)
	local scale, setScale = React.useState(ALL_FILTER)

	local onCategorySelected = React.useCallback(function(value: string)
		setCategory(value)
	end, {})

	local onScaleSelected = React.useCallback(function(value: string)
		setScale(value)
	end, {})

	local sections: { [string]: React.ReactNode } = {}
	local sectionOrder = 0
	for _, section in TYPOGRAPHY_SECTIONS do
		if category ~= ALL_FILTER and section.name ~= category then
			continue
		end

		local rows: { [string]: React.ReactNode } = {}
		local rowOrder = 0
		for _, entry in section.entries do
			if scale ~= ALL_FILTER and entry.scale ~= scale then
				continue
			end

			local typography = tokens.Typography[entry.tokenName] :: typeof(tokens.Typography.CaptionSmall)
			rowOrder += 1
			rows[entry.tokenName] = React.createElement(TypographyRow, {
				LayoutOrder = rowOrder,
				scale = entry.scale,
				tag = entry.tag,
				specs = formatTypographySpecs(typography),
			})
		end

		if rowOrder == 0 then
			continue
		end

		sectionOrder += 1
		sections[section.name] = React.createElement(Section, {
			LayoutOrder = sectionOrder,
			name = section.name,
			contentTag = "col size-full-0 auto-y",
		}, rows)
	end

	return React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Filters = React.createElement(FilterPanel, {
			LayoutOrder = 1,
		}, {
			Category = React.createElement(FilterChipRow, {
				LayoutOrder = 1,
				label = "Category",
				options = CATEGORY_FILTERS,
				selected = category,
				onSelected = onCategorySelected,
			}),
			Scale = React.createElement(FilterChipRow, {
				LayoutOrder = 2,
				label = "Scale",
				options = SCALE_FILTERS,
				selected = scale,
				onSelected = onScaleSelected,
			}),
		}),
		Header = React.createElement(View, {
			tag = "row align-y-center gap-large size-full-0 auto-y padding-y-small",
			LayoutOrder = 2,
		}, {
			LabelHeader = React.createElement(View, {
				Size = UDim2.fromOffset(CATALOG_LABEL_COLUMN_WIDTH, 0),
				LayoutOrder = 1,
			}),
			PreviewHeader = React.createElement(Text, {
				Text = "Preview",
				tag = "size-full-0 auto-y text-caption-small text-align-x-left content-muted",
				LayoutOrder = 2,
			}),
			SpecsHeader = React.createElement(Text, {
				Text = "Token specs",
				tag = "auto-xy text-caption-small text-align-x-left content-muted",
				Size = UDim2.fromOffset(CATALOG_LABEL_COLUMN_WIDTH, 0),
				LayoutOrder = 3,
			}),
		}),
		Sections = React.createElement(View, {
			tag = "col gap-xlarge size-full-0 auto-y",
			LayoutOrder = 3,
		}, sections),
	})
end

local function PlaygroundStory(props: {
	controls: {
		Text: string,
		fontSize: number,
		RichText: boolean,
	},
}): React.ReactNode
	local controls = props.controls

	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		Content = React.createElement(Text, {
			Text = controls.Text,
			RichText = controls.RichText,
			fontStyle = {
				FontSize = controls.fontSize,
			},
			tag = "auto-xy content-default",
			LayoutOrder = 1,
		}),
	})
end

local function AlignmentStory(): React.ReactNode
	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		Horizontal = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "TextXAlignment",
			showLabelColumn = false,
			columnHeaders = X_ALIGNMENT_HEADERS,
			cellColumnWidth = ALIGNMENT_WIDTH + CELL_GUTTER,
			rows = {
				{
					cells = {
						React.createElement(HorizontalAlignmentCell, {
							TextXAlignment = Enum.TextXAlignment.Left,
						}),
						React.createElement(HorizontalAlignmentCell, {
							TextXAlignment = Enum.TextXAlignment.Center,
						}),
						React.createElement(HorizontalAlignmentCell, {
							TextXAlignment = Enum.TextXAlignment.Right,
						}),
					},
				},
			},
		}),
		Vertical = React.createElement(MatrixSection, {
			LayoutOrder = 2,
			name = "TextYAlignment",
			showLabelColumn = false,
			columnHeaders = Y_ALIGNMENT_HEADERS,
			cellColumnWidth = ALIGNMENT_WIDTH + CELL_GUTTER,
			rows = {
				{
					cells = {
						React.createElement(VerticalAlignmentCell, {
							TextYAlignment = Enum.TextYAlignment.Top,
						}),
						React.createElement(VerticalAlignmentCell, {
							TextYAlignment = Enum.TextYAlignment.Center,
						}),
						React.createElement(VerticalAlignmentCell, {
							TextYAlignment = Enum.TextYAlignment.Bottom,
						}),
					},
				},
			},
		}),
		Direction = React.createElement(MatrixSection, {
			LayoutOrder = 3,
			name = "TextDirection",
			note = "TextDirection reorders the run; where the line sits is TextXAlignment, pinned left in every cell. Auto follows each row's first strong character, so it matches a different forced value per row.",
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			columnHeaders = DIRECTION_HEADERS,
			cellColumnWidth = ALIGNMENT_WIDTH + CELL_GUTTER,
			rows = {
				{
					label = matrixLabel("Starts with Latin"),
					cells = {
						React.createElement(DirectionCell, {
							Text = LTR_MIXED_TEXT,
							TextDirection = Enum.TextDirection.Auto,
						}),
						React.createElement(DirectionCell, {
							Text = LTR_MIXED_TEXT,
							TextDirection = Enum.TextDirection.LeftToRight,
						}),
						React.createElement(DirectionCell, {
							Text = LTR_MIXED_TEXT,
							TextDirection = Enum.TextDirection.RightToLeft,
						}),
					},
				},
				{
					label = matrixLabel("Starts with Arabic"),
					cells = {
						React.createElement(DirectionCell, {
							Text = RTL_MIXED_TEXT,
							TextDirection = Enum.TextDirection.Auto,
						}),
						React.createElement(DirectionCell, {
							Text = RTL_MIXED_TEXT,
							TextDirection = Enum.TextDirection.LeftToRight,
						}),
						React.createElement(DirectionCell, {
							Text = RTL_MIXED_TEXT,
							TextDirection = Enum.TextDirection.RightToLeft,
						}),
					},
				},
			},
		}),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		Scaled = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "TextScaled",
			note = "TextScaled fits the string to the frame instead of the typography token, so the rendered size no longer matches BodyMedium. Prefer a token; this is the escape hatch for a fixed box.",
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			columnHeaders = SCALED_HEADERS,
			cellColumnWidth = ALIGNMENT_WIDTH + CELL_GUTTER,
			rows = {
				{
					label = matrixLabel(`Frame height {SCALED_SHORT_HEIGHT}`),
					cells = {
						React.createElement(ScaledCell, {
							height = SCALED_SHORT_HEIGHT,
							TextScaled = false,
						}),
						React.createElement(ScaledCell, {
							height = SCALED_SHORT_HEIGHT,
							TextScaled = true,
						}),
					},
				},
				{
					label = matrixLabel(`Frame height {SCALED_TALL_HEIGHT}`),
					cells = {
						React.createElement(ScaledCell, {
							height = SCALED_TALL_HEIGHT,
							TextScaled = false,
						}),
						React.createElement(ScaledCell, {
							height = SCALED_TALL_HEIGHT,
							TextScaled = true,
						}),
					},
				},
			},
		}),
	})
end

local function InteractiveExample(props: {
	LayoutOrder: number,
	label: string,
	isDisabled: boolean,
})
	local controlState, setControlState = React.useState(ControlState.Initialize :: ControlState)
	local activationCount, setActivationCount = React.useState(0)

	return React.createElement(LabeledCell, {
		LayoutOrder = props.LayoutOrder,
		label = props.label,
	}, {
		Subject = React.createElement(Text, {
			Text = `onStateChanged: {controlState}\nonActivated: {activationCount}`,
			TextWrapped = true,
			tag = "col align-x-left auto-y padding-large text-label-small text-align-x-left radius-medium bg-surface-200 content-default",
			Size = UDim2.fromOffset(220, 0),
			stateLayer = { mode = StateLayerMode.Default },
			isDisabled = props.isDisabled,
			onActivated = function()
				setActivationCount(function(count)
					return count + 1
				end)
			end,
			onStateChanged = function(newState: ControlState)
				setControlState(newState)
			end,
			LayoutOrder = 1,
		}),
	})
end

local function InteractionStory(): React.ReactNode
	return React.createElement(View, {
		tag = `row wrap align-y-top gap-xxlarge size-full-0 auto-y {STORY_FRAME_TAG}`,
	}, {
		Enabled = React.createElement(InteractiveExample, {
			LayoutOrder = 1,
			label = "Default",
			isDisabled = false,
		}),
		Disabled = React.createElement(InteractiveExample, {
			LayoutOrder = 2,
			label = "isDisabled = true",
			isDisabled = true,
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		Wrapping = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Wrapping",
			note = "Each frame caps its width with a sizeConstraint and clips, the shape Snackbar uses. An unwrapped string stays on one line and is cut at that cap; a wrapped string flows onto more lines and grows the frame.",
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			columnHeaders = WRAPPED_HEADERS,
			cellColumnWidth = WIDE_WIDTH + CELL_GUTTER,
			rows = {
				{
					label = matrixLabel(`Max width {NARROW_WIDTH}`),
					cells = {
						React.createElement(WrappingCell, {
							width = NARROW_WIDTH,
							wrapTag = "text-no-wrap",
						}),
						React.createElement(WrappingCell, {
							width = NARROW_WIDTH,
							wrapTag = "text-wrap",
						}),
					},
				},
				{
					label = matrixLabel(`Max width {WIDE_WIDTH}`),
					cells = {
						React.createElement(WrappingCell, {
							width = WIDE_WIDTH,
							wrapTag = "text-no-wrap",
						}),
						React.createElement(WrappingCell, {
							width = WIDE_WIDTH,
							wrapTag = "text-wrap",
						}),
					},
				},
			},
		}),
		Truncation = React.createElement(MatrixSection, {
			LayoutOrder = 2,
			name = "Truncation",
			note = "There is no line-count prop: each row caps the sizeConstraint MaxSize height at BodyMedium FontSize x LineHeight x the line count, the same derivation Snackbar uses for its two-line title.",
			labelColumnWidth = TRUNCATION_LABEL_COLUMN_WIDTH,
			columnHeaders = TRUNCATE_HEADERS,
			cellColumnWidth = TRUNCATION_WIDTH + CELL_GUTTER,
			rows = {
				{
					label = matrixInfoLabel("1 line", "text-no-wrap"),
					cells = {
						React.createElement(TruncationCell, {
							lines = 1,
							truncateTag = "text-truncate-end",
						}),
						React.createElement(TruncationCell, {
							lines = 1,
							truncateTag = "text-truncate-split",
						}),
					},
				},
				{
					label = matrixInfoLabel("2 lines", "text-wrap"),
					cells = {
						React.createElement(TruncationCell, {
							lines = 2,
							truncateTag = "text-truncate-end",
						}),
						React.createElement(TruncationCell, {
							lines = 2,
							truncateTag = "text-truncate-split",
						}),
					},
				},
				{
					label = matrixInfoLabel("3 lines", "text-wrap"),
					cells = {
						React.createElement(TruncationCell, {
							lines = 3,
							truncateTag = "text-truncate-end",
						}),
						React.createElement(TruncationCell, {
							lines = 3,
							truncateTag = "text-truncate-split",
						}),
					},
				},
			},
		}),
		RichText = React.createElement(MatrixSection, {
			LayoutOrder = 3,
			name = "Rich text",
			showLabelColumn = false,
			columnHeaders = RICH_TEXT_HEADERS,
			cellColumnWidth = WIDE_WIDTH + CELL_GUTTER,
			rows = {
				{
					cells = {
						React.createElement(RichTextCell, { RichText = false }),
						React.createElement(RichTextCell, { RichText = true }),
					},
				},
			},
		}),
	})
end

local function TextStyleRow(props: {
	LayoutOrder: number,
	path: string,
	style: ColorStyleValue,
})
	return React.createElement(View, {
		tag = "row align-y-center gap-large size-full-0 auto-y padding-y-small",
		LayoutOrder = props.LayoutOrder,
	}, {
		Path = React.createElement(Text, {
			Text = props.path,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			Size = UDim2.fromOffset(TEXT_STYLE_PATH_COLUMN_WIDTH, 0),
			LayoutOrder = 1,
		}),
		Preview = React.createElement(Text, {
			Text = SAMPLE_TEXT,
			textStyle = props.style,
			tag = "size-full-0 auto-y text-body-medium text-align-x-left",
			LayoutOrder = 2,
		}),
		Specs = React.createElement(Text, {
			Text = formatColorSpecs(props.style),
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			Size = UDim2.fromOffset(TEXT_STYLE_SPECS_COLUMN_WIDTH, 0),
			LayoutOrder = 3,
		}),
	})
end

local function TextStyleGroupSection(props: {
	LayoutOrder: number,
	group: TextStyleGroup,
})
	local rows: { [string]: React.ReactNode } = {}
	for index, entry in props.group.entries do
		rows[entry.path] = React.createElement(TextStyleRow, {
			LayoutOrder = index,
			path = entry.path,
			style = entry.style,
		})
	end

	return React.createElement(Section, {
		LayoutOrder = props.LayoutOrder,
		name = `{props.group.name} ({#props.group.entries})`,
		contentTag = "col size-full-0 auto-y",
	}, {
		Rows = React.createElement(View, {
			tag = if props.group.surfaceStyle
				then "col size-full-0 auto-y padding-medium radius-medium"
				else "col size-full-0 auto-y",
			backgroundStyle = props.group.surfaceStyle,
			LayoutOrder = 1,
		}, rows),
	})
end

local function TextStyleSections(props: {
	LayoutOrder: number,
	style: string,
})
	local tokens = useTokens()

	local groups: { [string]: React.ReactNode } = {}
	local groupOrder = 0
	for _, group in textStyleGroups(tokens) do
		if props.style ~= ALL_FILTER and group.name ~= props.style then
			continue
		end

		groupOrder += 1
		groups[group.name] = React.createElement(TextStyleGroupSection, {
			LayoutOrder = groupOrder,
			group = group,
		})
	end

	return React.createElement(View, {
		tag = "col gap-xlarge size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, groups)
end

local function PartialTextStyleCell(props: {
	LayoutOrder: number?,
	textStyle: ColorStyle?,
})
	return React.createElement(Text, {
		Text = SAMPLE_TEXT,
		textStyle = props.textStyle,
		tag = "auto-xy text-body-medium text-align-x-left content-muted",
		LayoutOrder = props.LayoutOrder,
	})
end

local function PartialTextStyles(props: {
	LayoutOrder: number,
})
	local tokens = useTokens()

	return React.createElement(MatrixSection, {
		LayoutOrder = props.LayoutOrder,
		name = "Partial styles",
		note = "Color3 and Transparency resolve independently, so an omitted channel keeps the value the content-muted tag already set.",
		showLabelColumn = false,
		columnHeaders = TEXT_STYLE_HEADERS,
		cellColumnWidth = ALIGNMENT_WIDTH + CELL_GUTTER,
		rows = {
			{
				cells = {
					React.createElement(PartialTextStyleCell, {}),
					React.createElement(PartialTextStyleCell, {
						textStyle = { Color3 = tokens.Color.System.Success.Color3 },
					}),
					React.createElement(PartialTextStyleCell, {
						textStyle = { Transparency = 0.5 },
					}),
				},
			},
		},
	})
end

local function TextStyleLibrary(props: {
	LayoutOrder: number,
})
	local style, setStyle = React.useState(ALL_FILTER)

	local onStyleSelected = React.useCallback(function(value: string)
		setStyle(value)
	end, {})

	return React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Filters = React.createElement(FilterPanel, {
			LayoutOrder = 1,
		}, {
			Style = React.createElement(FilterChipRow, {
				LayoutOrder = 1,
				label = "Style",
				options = STYLE_FILTERS,
				selected = style,
				onSelected = onStyleSelected,
			}),
		}),
		Header = React.createElement(View, {
			tag = "row align-y-center gap-large size-full-0 auto-y padding-y-small",
			LayoutOrder = 2,
		}, {
			PathHeader = React.createElement(Text, {
				Text = "Token",
				tag = "auto-xy text-caption-small text-align-x-left content-muted",
				Size = UDim2.fromOffset(TEXT_STYLE_PATH_COLUMN_WIDTH, 0),
				LayoutOrder = 1,
			}),
			PreviewHeader = React.createElement(Text, {
				Text = "Preview",
				tag = "size-full-0 auto-y text-caption-small text-align-x-left content-muted",
				LayoutOrder = 2,
			}),
			SpecsHeader = React.createElement(Text, {
				Text = "Token specs",
				tag = "auto-xy text-caption-small text-align-x-left content-muted",
				Size = UDim2.fromOffset(TEXT_STYLE_SPECS_COLUMN_WIDTH, 0),
				LayoutOrder = 3,
			}),
		}),
		Sections = React.createElement(TextStyleSections, {
			LayoutOrder = 3,
			style = style,
		}),
		Partial = React.createElement(PartialTextStyles, { LayoutOrder = 4 }),
	})
end

local function StyleLibraryStory(): React.ReactNode
	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		Style = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Style library",
			note = "textStyle drives TextColor3 and TextTransparency, so it takes a color token directly rather than a tag.",
			contentTag = "col gap-large size-full-0 auto-y",
		}, {
			Catalog = React.createElement(TextStyleLibrary, { LayoutOrder = 1 }),
		}),
		Typography = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Typography library",
			contentTag = "col gap-large size-full-0 auto-y",
		}, {
			Catalog = React.createElement(TypographyCatalog, { LayoutOrder = 1 }),
		}),
	})
end

return {
	base = true,
	summary = "Text renders a string with Foundation typography tokens, in place of the TextLabel and TextButton engine components.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizing",
			summary = "Text takes its size from a typography tag; TextScaled is the one prop that overrides it.",
			story = SizingStory,
		},
		{
			name = "Alignment",
			summary = "Alignment only moves the string inside bounds the Text does not hug, so each cell is given a fixed frame.",
			story = AlignmentStory,
		},
		{
			name = "Interaction",
			summary = "Passing onActivated or onStateChanged swaps the engine instance to a TextButton; without one, Text never reports state.",
			story = InteractionStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
		{
			name = "Style library",
			summary = "Developer catalog of the typography tags and color tokens a Text can carry.",
			story = StyleLibraryStory,
		},
	},
	controls = {
		Text = "Text with <b>markup</b>",
		fontSize = 24,
		RichText = false,
	},
}
