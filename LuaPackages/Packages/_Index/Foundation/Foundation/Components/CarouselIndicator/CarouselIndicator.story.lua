local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local CarouselIndicator = require(Foundation.Components.CarouselIndicator)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local DEFAULT_COUNT = 5
local OVERFLOW_COUNT = 10

local function PlaygroundStory(props)
	local controls = props.controls

	return React.createElement(View, {
		tag = "align-x-center align-y-center gap-large size-full-2000 padding-large bg-surface-0",
	}, {
		CarouselIndicator = React.createElement(CarouselIndicator, {
			page = controls.page,
			count = controls.count,
			onActivated = function(page)
				print(`CarouselIndicator activated {page}`)
			end,
		}),
	})
end

local function InteractiveStory()
	local page, setPage = React.useState(1)

	return React.createElement(View, {
		tag = "col align-x-center align-y-center gap-large size-full-2000 padding-large bg-surface-0",
	}, {
		Label = React.createElement(Text, {
			LayoutOrder = 1,
			Text = `Page {page} of {OVERFLOW_COUNT}`,
			tag = "auto-xy text-body-medium content-default",
		}),
		CarouselIndicator = React.createElement(CarouselIndicator, {
			LayoutOrder = 2,
			page = page,
			count = OVERFLOW_COUNT,
			onActivated = setPage,
		}),
	})
end

local function IndicatorExample(props)
	return React.createElement(View, {
		LayoutOrder = props.layoutOrder,
		tag = "col align-x-center gap-small auto-xy",
	}, {
		Label = React.createElement(Text, {
			LayoutOrder = 1,
			Text = props.label,
			tag = "auto-xy text-caption-medium content-default",
		}),
		Indicator = React.createElement(CarouselIndicator, {
			LayoutOrder = 2,
			page = props.page,
			count = props.count,
		}),
	})
end

local function DefaultStory()
	local children: { [string]: React.ReactNode } = {}

	for page = 1, DEFAULT_COUNT do
		children[`Page{page}`] = React.createElement(IndicatorExample, {
			page = page,
			layoutOrder = page,
			label = tostring(page),
			count = DEFAULT_COUNT,
		})
	end

	return React.createElement(View, {
		tag = "row align-y-center gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, children)
end

local function OverflowStory()
	local children: { [string]: React.ReactNode } = {}

	for page = 1, OVERFLOW_COUNT do
		children[`Page{page}`] = React.createElement(IndicatorExample, {
			page = page,
			layoutOrder = page,
			label = tostring(page),
			count = OVERFLOW_COUNT,
		})
	end

	return React.createElement(View, {
		tag = "row wrap align-y-center gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, children)
end

local function PaginationExample(props)
	local page, setPage = React.useState(1)

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		tag = "col align-x-center gap-large auto-xy",
	}, {
		Label = React.createElement(Text, {
			LayoutOrder = 1,
			Text = `{props.label}: Page {page} / {props.count}`,
			tag = "auto-xy text-body-medium content-default",
		}),
		Controls = React.createElement(View, {
			LayoutOrder = 2,
			tag = "row align-y-center gap-medium auto-xy",
		}, {
			Left = React.createElement(Button, {
				LayoutOrder = 1,
				text = "<",
				isDisabled = page == 1,
				onActivated = function()
					setPage(math.max(page - 1, 1))
				end,
			}),
			Right = React.createElement(Button, {
				LayoutOrder = 2,
				text = ">",
				isDisabled = page == props.count,
				onActivated = function()
					setPage(math.min(page + 1, props.count))
				end,
			}),
		}),
		Indicator = React.createElement(CarouselIndicator, {
			LayoutOrder = 3,
			page = page,
			count = props.count,
		}),
	})
end

local function PaginationStory()
	return React.createElement(View, {
		tag = "row wrap align-x-center align-y-center gap-xxlarge size-full-2000 padding-large bg-surface-0",
	}, {
		Default = React.createElement(PaginationExample, {
			LayoutOrder = 1,
			label = "Default",
			count = DEFAULT_COUNT,
		}),
		Overflow = React.createElement(PaginationExample, {
			LayoutOrder = 2,
			label = "Overflow",
			count = OVERFLOW_COUNT,
		}),
	})
end

return {
	summary = "CarouselIndicator",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Interactive",
			summary = "A stateful carousel navigation example that updates the active page on activation",
			story = InteractiveStory,
		},
		{
			name = "Default",
			summary = "Default carousel indicator pages 1 through 5",
			story = DefaultStory,
		},
		{
			name = "Overflow",
			summary = "Overflow carousel indicator pages 1 through 10",
			story = OverflowStory,
		},
		{
			name = "Pagination",
			summary = "Arrow buttons driving default and overflow carousel indicators",
			story = PaginationStory,
		},
	},
	controls = {
		page = 1,
		count = 5,
	},
}
