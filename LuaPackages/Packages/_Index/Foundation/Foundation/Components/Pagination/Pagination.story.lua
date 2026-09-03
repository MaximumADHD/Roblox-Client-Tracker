local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local Pagination = require(Foundation.Components.Pagination)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local PaginationSize = require(Foundation.Enums.PaginationSize)
local PaginationVariant = require(Foundation.Enums.PaginationVariant)

type PaginationProps = Pagination.PaginationProps
type PaginationSize = PaginationSize.PaginationSize
type PaginationVariant = PaginationVariant.PaginationVariant

local SIZES: { PaginationSize } = { PaginationSize.Small, PaginationSize.Medium }

local VARIANT_ORDER = {
	PaginationVariant.MultiPage,
	PaginationVariant.SinglePage,
	PaginationVariant.NoPage,
} :: { PaginationVariant }

local CONTROLLED_EXAMPLE_COUNT = 10

local STORY_CONTAINER_TAG = "col gap-large size-full-0 auto-y padding-y-large bg-surface-0"

type Controls = {
	variant: PaginationVariant,
	size: PaginationSize,
	count: number,
	page: number,
	hasFirstLastButtons: boolean,
	hasNextPage: boolean,
	hasPreviousPage: boolean,
}

local function createPagination(props: PaginationProps): React.ReactNode
	return React.createElement(Pagination, props :: any)
end

local function LabeledPagination(props: {
	label: string,
	LayoutOrder: number,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-small auto-xy",
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

local function Subsection(props: {
	label: string,
	LayoutOrder: number,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Heading = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-label-medium text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = "col gap-large auto-xy",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function renderPlaygroundPagination(controls: Controls): React.ReactNode
	if controls.variant == PaginationVariant.MultiPage then
		return createPagination({
			variant = PaginationVariant.MultiPage,
			count = controls.count,
			page = controls.page,
			onActivated = function(page: number)
				print(`MultiPage page: {page}`)
			end,
			size = controls.size,
			hasFirstLastButtons = controls.hasFirstLastButtons,
		})
	end

	local directionalProps = {
		page = controls.page,
		count = if controls.count > 0 then controls.count else nil,
		hasNextPage = controls.hasNextPage,
		hasPreviousPage = controls.hasPreviousPage,
		onActivated = function(page: number)
			print(`{controls.variant} page: {page}`)
		end,
		size = controls.size,
		hasFirstLastButtons = controls.hasFirstLastButtons,
	}

	if controls.variant == PaginationVariant.SinglePage then
		return createPagination(Dash.union(directionalProps, {
			variant = PaginationVariant.SinglePage,
		}))
	end

	return createPagination(Dash.union(directionalProps, {
		variant = PaginationVariant.NoPage,
	}))
end

local function variantProps(variant: PaginationVariant): PaginationProps
	if variant == PaginationVariant.MultiPage then
		return {
			variant = PaginationVariant.MultiPage,
			count = 10,
			page = 5,
			onActivated = function() end,
		}
	elseif variant == PaginationVariant.SinglePage then
		return {
			variant = PaginationVariant.SinglePage,
			page = 3,
			count = 10,
			onActivated = function() end,
		}
	end

	return {
		variant = PaginationVariant.NoPage,
		page = 3,
		count = 10,
		onActivated = function() end,
		hasFirstLastButtons = true,
	}
end

local function MultiPageExample(props: {
	count: number,
	label: string,
	LayoutOrder: number,
	page: number,
	size: PaginationSize?,
})
	return React.createElement(LabeledPagination, {
		label = props.label,
		LayoutOrder = props.LayoutOrder,
	}, {
		Pagination = createPagination({
			variant = PaginationVariant.MultiPage,
			count = props.count,
			page = props.page,
			onActivated = function() end,
			size = props.size,
		}),
	})
end

local function ControlledPaginationExample(props: {
	page: number,
	count: number?,
	hasNextPage: boolean?,
	children: React.ReactNode,
}): React.ReactNode
	local pageLabel = if props.count ~= nil
		then `Displaying page: {props.page}/{props.count}`
		elseif props.hasNextPage ~= nil then `Displaying page: {props.page} · has next: {if props.hasNextPage
			then "true"
			else "false"}`
		else `Displaying page: {props.page}`

	return React.createElement(View, {
		tag = "col gap-small auto-xy",
	}, {
		PageLabel = React.createElement(Text, {
			Text = pageLabel,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = "auto-xy",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function ControlledMultiPageExample(): React.ReactNode
	local page, setPage = React.useState(1)

	return React.createElement(ControlledPaginationExample, {
		page = page,
		count = CONTROLLED_EXAMPLE_COUNT,
	}, {
		Pagination = createPagination({
			variant = PaginationVariant.MultiPage,
			count = CONTROLLED_EXAMPLE_COUNT,
			page = page,
			onActivated = setPage,
			hasFirstLastButtons = true,
		}),
	})
end

local function ControlledSinglePageWithCountExample(): React.ReactNode
	local page, setPage = React.useState(1)

	return React.createElement(ControlledPaginationExample, {
		page = page,
		count = CONTROLLED_EXAMPLE_COUNT,
	}, {
		Pagination = createPagination({
			variant = PaginationVariant.SinglePage,
			count = CONTROLLED_EXAMPLE_COUNT,
			page = page,
			onActivated = setPage,
			hasFirstLastButtons = true,
		}),
	})
end

local function ControlledSinglePageWithoutCountExample(): React.ReactNode
	local page, setPage = React.useState(1)
	local simulatedMaxPage = 10
	local hasNextPage = page < simulatedMaxPage

	return React.createElement(ControlledPaginationExample, {
		page = page,
		hasNextPage = hasNextPage,
	}, {
		Pagination = createPagination({
			variant = PaginationVariant.SinglePage,
			page = page,
			hasNextPage = hasNextPage,
			hasPreviousPage = page > 1,
			onActivated = setPage,
		}),
	})
end

local function ControlledNoPageWithCountExample(): React.ReactNode
	local page, setPage = React.useState(1)

	return React.createElement(ControlledPaginationExample, {
		page = page,
		count = CONTROLLED_EXAMPLE_COUNT,
	}, {
		Pagination = createPagination({
			variant = PaginationVariant.NoPage,
			count = CONTROLLED_EXAMPLE_COUNT,
			page = page,
			onActivated = setPage,
			hasFirstLastButtons = true,
		}),
	})
end

local function ControlledNoPageWithoutCountExample(): React.ReactNode
	local page, setPage = React.useState(1)
	local simulatedMaxPage = 10
	local hasNextPage = page < simulatedMaxPage

	return React.createElement(ControlledPaginationExample, {
		page = page,
		hasNextPage = hasNextPage,
	}, {
		Pagination = createPagination({
			variant = PaginationVariant.NoPage,
			page = page,
			hasNextPage = hasNextPage,
			hasPreviousPage = page > 1,
			onActivated = setPage,
		}),
	})
end

local function PlaygroundStory(props: { controls: Controls }): React.ReactNode
	return renderPlaygroundPagination(props.controls)
end

local function SizeStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = STORY_CONTAINER_TAG,
		},
		Dash.map(SIZES, function(size, index)
			return React.createElement(LabeledPagination, {
				label = size,
				LayoutOrder = index,
			}, {
				Pagination = createPagination({
					variant = PaginationVariant.MultiPage,
					count = 10,
					page = 5,
					onActivated = function() end,
					size = size,
				}),
			})
		end)
	)
end

local function VariantsStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = STORY_CONTAINER_TAG,
		},
		Dash.map(VARIANT_ORDER, function(variant, index)
			return React.createElement(LabeledPagination, {
				label = variant,
				LayoutOrder = index,
			}, {
				Pagination = createPagination(variantProps(variant)),
			})
		end)
	)
end

local function ControlledStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_CONTAINER_TAG,
	}, {
		MultiPage = React.createElement(Subsection, {
			label = "MultiPage",
			LayoutOrder = 1,
		}, {
			Default = React.createElement(LabeledPagination, {
				label = "With count",
				LayoutOrder = 1,
			}, {
				Pagination = React.createElement(ControlledMultiPageExample),
			}),
		}),
		SinglePage = React.createElement(Subsection, {
			label = "SinglePage",
			LayoutOrder = 2,
		}, {
			WithCount = React.createElement(LabeledPagination, {
				label = "With count",
				LayoutOrder = 1,
			}, {
				Pagination = React.createElement(ControlledSinglePageWithCountExample),
			}),
			WithoutCount = React.createElement(LabeledPagination, {
				label = "Without count (hasNextPage / hasPreviousPage)",
				LayoutOrder = 2,
			}, {
				Pagination = React.createElement(ControlledSinglePageWithoutCountExample),
			}),
		}),
		NoPage = React.createElement(Subsection, {
			label = "NoPage",
			LayoutOrder = 3,
		}, {
			WithCount = React.createElement(LabeledPagination, {
				label = "With count",
				LayoutOrder = 1,
			}, {
				Pagination = React.createElement(ControlledNoPageWithCountExample),
			}),
			WithoutCount = React.createElement(LabeledPagination, {
				label = "Without count (hasNextPage / hasPreviousPage)",
				LayoutOrder = 2,
			}, {
				Pagination = React.createElement(ControlledNoPageWithoutCountExample),
			}),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_CONTAINER_TAG,
	}, {
		NoTruncation = React.createElement(Subsection, {
			label = "No truncation (≤7 pages)",
			LayoutOrder = 1,
		}, {
			TwoPages = React.createElement(MultiPageExample, {
				count = 2,
				label = "2 pages",
				LayoutOrder = 1,
				page = 1,
			}),
			SevenPages = React.createElement(MultiPageExample, {
				count = 7,
				label = "7 pages (all slots visible)",
				LayoutOrder = 2,
				page = 4,
			}),
		}),
		Truncation = React.createElement(Subsection, {
			label = "Truncation (>7 pages)",
			LayoutOrder = 2,
		}, {
			Start = React.createElement(MultiPageExample, {
				count = 9,
				label = "Page 1 (trailing ellipsis)",
				LayoutOrder = 1,
				page = 1,
			}),
			Middle = React.createElement(MultiPageExample, {
				count = 9,
				label = "Page 5 (leading and trailing ellipsis)",
				LayoutOrder = 2,
				page = 5,
			}),
			End = React.createElement(MultiPageExample, {
				count = 9,
				label = "Page 9 (leading ellipsis)",
				LayoutOrder = 3,
				page = 9,
			}),
		}),
		LongCounts = React.createElement(
			Subsection,
			{
				label = "Long page numbers (>999)",
				LayoutOrder = 3,
			},
			Dash.map(SIZES, function(size, index)
				return React.createElement(MultiPageExample, {
					count = 1002,
					label = size,
					LayoutOrder = index,
					page = 1000,
					size = size,
				})
			end)
		),
		FirstLastButtons = React.createElement(
			Subsection,
			{
				label = "First and last buttons",
				LayoutOrder = 4,
			},
			Dash.map(SIZES, function(size, index)
				return React.createElement(LabeledPagination, {
					label = size,
					LayoutOrder = index,
				}, {
					Pagination = createPagination({
						variant = PaginationVariant.MultiPage,
						count = 10,
						page = 5,
						onActivated = function() end,
						size = size,
						hasFirstLastButtons = true,
					}),
				})
			end)
		),
	})
end

type KeyboardNavigationWiring = "explicit" | "typical"

local function KeyboardNavigationDemo(props: {
	LayoutOrder: number,
	wiring: KeyboardNavigationWiring,
})
	local page, setPage = React.useState(2)
	local contentAboveRef = React.useRef(nil :: GuiObject?)
	local contentAboveSecondRef = React.useRef(nil :: GuiObject?)
	local contentBelowRef = React.useRef(nil :: GuiObject?)
	local paginationRef = React.useRef(nil :: GuiObject?)

	local wireVerticalNeighbors = props.wiring == "explicit"

	return React.createElement(View, {
		tag = "col gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		ContentAbove = React.createElement(View, {
			LayoutOrder = 1,
			tag = "row gap-small auto-xy",
		}, {
			First = React.createElement(Button, {
				LayoutOrder = 1,
				text = "Content above (first)",
				onActivated = function() end,
				ref = contentAboveRef,
				NextSelectionDown = if wireVerticalNeighbors then paginationRef else nil,
				NextSelectionRight = contentAboveSecondRef,
				Selectable = true,
				variant = ButtonVariant.Standard,
			}),
			Second = React.createElement(Button, {
				LayoutOrder = 2,
				text = "Content above (second)",
				onActivated = function() end,
				ref = contentAboveSecondRef,
				NextSelectionDown = if wireVerticalNeighbors then paginationRef else nil,
				NextSelectionLeft = contentAboveRef,
				Selectable = true,
				variant = ButtonVariant.Standard,
			}),
		}),
		Pagination = React.createElement(View, {
			LayoutOrder = 2,
			tag = "auto-xy",
		}, {
			Pagination = createPagination({
				ref = paginationRef,
				variant = PaginationVariant.MultiPage,
				count = 10,
				page = page,
				onActivated = setPage,
				hasFirstLastButtons = true,
				NextSelectionUp = if wireVerticalNeighbors then contentAboveRef else nil,
				NextSelectionDown = if wireVerticalNeighbors then contentBelowRef else nil,
			}),
		}),
		ContentBelow = React.createElement(Button, {
			LayoutOrder = 3,
			text = "Content below",
			onActivated = function() end,
			ref = contentBelowRef,
			NextSelectionUp = if wireVerticalNeighbors then paginationRef else nil,
			Selectable = true,
			variant = ButtonVariant.Standard,
		}),
	})
end

local function ExplicitKeyboardNavigationExample(): React.ReactNode
	return React.createElement(KeyboardNavigationDemo, {
		LayoutOrder = 1,
		wiring = "explicit",
	})
end

local function TypicalKeyboardNavigationExample(): React.ReactNode
	return React.createElement(KeyboardNavigationDemo, {
		LayoutOrder = 1,
		wiring = "typical",
	})
end

local function KeyboardNavigationStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_CONTAINER_TAG,
	}, {
		Description = React.createElement(Text, {
			LayoutOrder = 1,
			Text = "Pagination ref resolves to the first interactive slot. To enter there predictably from siblings, "
				.. "wire NextSelectionDown = paginationRef on controls above and pass NextSelectionUp/NextSelectionDown on Pagination. "
				.. "Without that wiring, the engine may focus any pagination slot.",
			tag = "auto-xy text-body-medium text-wrap text-align-x-left content-default",
		}),
		Explicit = React.createElement(Subsection, {
			label = "Explicit wiring",
			LayoutOrder = 2,
		}, {
			Example = React.createElement(ExplicitKeyboardNavigationExample),
		}),
		Typical = React.createElement(Subsection, {
			label = "Unwired (typical)",
			LayoutOrder = 3,
		}, {
			Example = React.createElement(TypicalKeyboardNavigationExample),
		}),
	})
end

return {
	summary = "Pagination provides navigation controls for paginated content. MultiPage shows page number slots. SinglePage and NoPage share the same props and behavior — variant only controls whether the current page label is shown.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Size",
			story = SizeStory,
		},
		{
			name = "Variants",
			story = VariantsStory,
		},
		{
			name = "Controlled component",
			story = ControlledStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
		{
			name = "Keyboard navigation",
			summary = "Compare explicit paginationRef wiring with typical unwired vertical focus.",
			story = KeyboardNavigationStory,
		},
	},
	controls = {
		variant = VARIANT_ORDER,
		size = SIZES,
		count = 10,
		page = 5,
		hasFirstLastButtons = false,
		hasNextPage = false,
		hasPreviousPage = false,
	},
}
