local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Badge = require(Foundation.Components.Badge)
local BadgeVariant = require(Foundation.Enums.BadgeVariant)
local SheetStoryHelpers = require(script.Parent.Parent.SheetStoryHelpers)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local LabeledSheetTrigger = SheetStoryHelpers.LabeledSheetTrigger
local Section = SheetStoryHelpers.Section
local SheetMatrix = SheetStoryHelpers.SheetMatrix
local centerHeightFor = SheetStoryHelpers.centerHeightFor
local columnLabels = SheetStoryHelpers.columnLabels
local prefersCenter = SheetStoryHelpers.prefersCenter
local variantRows = SheetStoryHelpers.variantRows
local variantTrigger = SheetStoryHelpers.variantTrigger

type ColorStyle = Types.ColorStyle
type SheetChildrenOptions = SheetStoryHelpers.SheetChildrenOptions
type SheetVariant = SheetStoryHelpers.SheetVariant

local MEDIA = SheetStoryHelpers.MEDIA
local MEDIA_TRANSPARENT = "component_assets/contactFullAvatar_small"
local TALL_CENTER_HEIGHT = 1
local WIDE_CELL_WIDTH = SheetStoryHelpers.WIDE_CELL_WIDTH
local OVERFLOW_LIST_LENGTH = SheetStoryHelpers.OVERFLOW_LIST_LENGTH
local VARIANT_ORDER = SheetStoryHelpers.VARIANT_ORDER
local VARIANT_HEADERS = SheetStoryHelpers.VARIANT_HEADERS
local DEFAULT_ASPECT_RATIO = 16 / 9
local ASPECT_RATIOS: { { label: string, value: number } } = {
	{ label = "16:9", value = DEFAULT_ASPECT_RATIO },
	{ label = "3:2", value = 3 / 2 },
}
local HEIGHT_COLUMNS: { { label: string, height: UDim } } = {
	{ label = "UDim.new(0, 160)", height = UDim.new(0, 160) },
}
local HEIGHT_PRESETS = {
	Default = nil :: UDim?,
	["160px"] = UDim.new(0, 160),
	["50%"] = UDim.new(0.5, 0),
}
local MEDIA_STYLE_PRESETS = { "Default", "Blue tint" }
local BACKGROUND_STYLE_PRESETS = { "Default", "Green fill" }

type Controls = {
	media: string,
	mediaStylePreset: string,
	backgroundStylePreset: string,
	heightPreset: string,
	aspectRatio: string,
	sticky: boolean,
	rootSheetTypePreset: SheetVariant,
}

type StoryProps = {
	controls: Controls,
}

local function aspectRatioFromLabel(label: string): number?
	if label == "None" then
		return nil
	end
	for _, ratio in ASPECT_RATIOS do
		if ratio.label == label then
			return ratio.value
		end
	end
	return DEFAULT_ASPECT_RATIO
end

local function blueTint(tokens): ColorStyle
	return {
		Color3 = tokens.Color.Extended.Blue.Blue_500.Color3,
		Transparency = 0.4,
	}
end

local function greenFill(tokens): ColorStyle
	return tokens.Color.Extended.Green.Green_500
end

local function fullBleedOptions(overrides: SheetChildrenOptions?): SheetChildrenOptions
	local extra: SheetChildrenOptions = overrides or {}
	local defaults: SheetChildrenOptions = {
		showFullBleed = true,
		showHeader = false,
		fullBleedMedia = MEDIA,
	}
	if
		extra.fullBleedAspectRatio == nil
		and extra.fullBleedHeight == nil
		and extra.fullBleedUnboundedHeight ~= true
	then
		defaults.fullBleedAspectRatio = DEFAULT_ASPECT_RATIO
	end
	return Dash.join(defaults, extra)
end

local function fullBleedTrigger(variant: SheetVariant, overrides: SheetChildrenOptions?): React.ReactNode
	return variantTrigger(variant, {
		centerSheetHeight = centerHeightFor(variant, TALL_CENTER_HEIGHT),
		childrenOptions = fullBleedOptions(overrides),
	})
end

local function HeroOverlay()
	return React.createElement(View, {
		tag = "col align-x-left align-y-bottom size-full padding-medium",
	}, {
		Row = React.createElement(View, {
			tag = "row items-center gap-small auto-xy",
			LayoutOrder = 1,
		}, {
			Title = React.createElement(Text, {
				Text = "Hero title",
				tag = "auto-xy text-title-medium content-inverse-emphasis",
				LayoutOrder = 1,
			}),
			Label = React.createElement(Badge, {
				text = "Hero children",
				variant = BadgeVariant.OverMedia,
				LayoutOrder = 2,
			}),
		}),
	})
end

local function PlaygroundStory(props: StoryProps)
	local controls = props.controls
	local tokens = useTokens()

	return React.createElement(View, {
		tag = SheetStoryHelpers.PLAYGROUND_TAG,
	}, {
		Trigger = React.createElement(LabeledSheetTrigger, {
			preferCenterSheet = prefersCenter(controls.rootSheetTypePreset),
			centerSheetHeight = centerHeightFor(controls.rootSheetTypePreset, TALL_CENTER_HEIGHT),
			childrenOptions = fullBleedOptions({
				fullBleedMedia = controls.media,
				fullBleedSticky = controls.sticky,
				fullBleedHeight = HEIGHT_PRESETS[controls.heightPreset],
				fullBleedUnboundedHeight = true,
				fullBleedAspectRatio = aspectRatioFromLabel(controls.aspectRatio),
				fullBleedMediaStyle = if controls.mediaStylePreset == "Blue tint" then blueTint(tokens) else nil,
				fullBleedBackgroundStyle = if controls.backgroundStylePreset == "Green fill"
					then greenFill(tokens)
					else nil,
			}),
		}),
	})
end

local function SizingStory()
	return React.createElement(View, {
		tag = SheetStoryHelpers.PAGE_TAG,
	}, {
		Height = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Height",
			contentTag = SheetStoryHelpers.MATRIX_SECTION_TAG,
		}, {
			Grid = React.createElement(SheetMatrix, {
				columnHeaders = columnLabels(HEIGHT_COLUMNS),
				cellColumnWidth = WIDE_CELL_WIDTH,
				rows = variantRows(function(variant)
					return Dash.map(HEIGHT_COLUMNS, function(column)
						return fullBleedTrigger(variant, {
							fullBleedHeight = column.height,
						})
					end)
				end),
			}),
		}),
		AspectRatio = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Aspect ratio",
			contentTag = SheetStoryHelpers.MATRIX_SECTION_TAG,
		}, {
			Grid = React.createElement(SheetMatrix, {
				columnHeaders = columnLabels(ASPECT_RATIOS),
				rows = variantRows(function(variant)
					return Dash.map(ASPECT_RATIOS, function(ratio)
						return fullBleedTrigger(variant, {
							fullBleedAspectRatio = ratio.value,
						})
					end)
				end),
			}),
		}),
	})
end

local function ContentStory()
	local tokens = useTokens()

	return React.createElement(View, {
		tag = SheetStoryHelpers.PAGE_TAG,
	}, {
		Sticky = React.createElement(Section, {
			LayoutOrder = 1,
			name = "sticky",
			contentTag = SheetStoryHelpers.MATRIX_SECTION_TAG,
		}, {
			Grid = React.createElement(SheetMatrix, {
				columnHeaders = { "false", "true" },
				rows = variantRows(function(variant)
					return {
						fullBleedTrigger(variant, {
							contentListLength = OVERFLOW_LIST_LENGTH,
						}),
						fullBleedTrigger(variant, {
							fullBleedSticky = true,
							contentListLength = OVERFLOW_LIST_LENGTH,
						}),
					}
				end),
			}),
		}),
		Children = React.createElement(Section, {
			LayoutOrder = 2,
			name = "children",
			contentTag = SheetStoryHelpers.MATRIX_SECTION_TAG,
		}, {
			Grid = React.createElement(SheetMatrix, {
				showLabelColumn = false,
				columnHeaders = VARIANT_HEADERS,
				rows = {
					{
						cells = Dash.map(VARIANT_ORDER, function(variant)
							return fullBleedTrigger(variant, {
								fullBleedChildren = React.createElement(HeroOverlay) :: React.ReactNode,
							})
						end),
					},
				},
			}),
		}),
		Transparency = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Transparency",
		}, {
			WithoutBackground = React.createElement(LabeledSheetTrigger, {
				label = "Without backgroundStyle",
				LayoutOrder = 1,
				childrenOptions = fullBleedOptions({
					fullBleedMedia = MEDIA_TRANSPARENT,
				}),
			}),
			WithBackground = React.createElement(LabeledSheetTrigger, {
				label = "With backgroundStyle",
				LayoutOrder = 2,
				childrenOptions = fullBleedOptions({
					fullBleedMedia = MEDIA_TRANSPARENT,
					fullBleedBackgroundStyle = greenFill(tokens),
				}),
			}),
		}),
		Style = React.createElement(Section, {
			LayoutOrder = 4,
			name = "Style",
		}, {
			WithoutMediaStyle = React.createElement(LabeledSheetTrigger, {
				label = "Without mediaStyle",
				LayoutOrder = 1,
				childrenOptions = fullBleedOptions(),
			}),
			WithMediaStyle = React.createElement(LabeledSheetTrigger, {
				label = "With mediaStyle",
				LayoutOrder = 2,
				childrenOptions = fullBleedOptions({
					fullBleedMediaStyle = blueTint(tokens),
				}),
			}),
		}),
	})
end

local ASPECT_RATIO_OPTIONS = columnLabels(ASPECT_RATIOS)
table.insert(ASPECT_RATIO_OPTIONS, "None")

return {
	summary = "Edge-to-edge media for [[Sheet]]. `sticky` plus Header is unsupported.",
	stories = {
		{ name = "Playground", story = PlaygroundStory :: unknown },
		{ name = "Sizing", story = SizingStory },
		{ name = "Content", story = ContentStory },
	},
	controls = {
		media = MEDIA,
		mediaStylePreset = MEDIA_STYLE_PRESETS,
		backgroundStylePreset = BACKGROUND_STYLE_PRESETS,
		heightPreset = { "Default", "160px", "50%" },
		aspectRatio = ASPECT_RATIO_OPTIONS,
		sticky = false,
		rootSheetTypePreset = VARIANT_ORDER,
	},
}
