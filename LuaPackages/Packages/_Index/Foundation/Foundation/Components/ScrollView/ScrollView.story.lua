local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local ScrollView = require(Foundation.Components.ScrollView)
local useTokens = require(Foundation.Providers.Style.useTokens)
local ControlState = require(Foundation.Enums.ControlState)
local Flags = require(Foundation.Utility.Flags)
type ControlState = ControlState.ControlState

local function StoryScrolling(props)
	local controls = props.controls
	local tokens = useTokens()
	Flags.FoundationFixScrollViewTags = controls.fixScrollViewTags

	return React.createElement(View, {
		tag = "row gap-large auto-xy",
	}, {
		Vertical = React.createElement(ScrollView, {
			Size = UDim2.new(0, 120, 0, 120),
			layout = {
				FillDirection = Enum.FillDirection.Vertical,
			},
			scroll = {
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				CanvasSize = UDim2.fromOffset(0, 0),
				ScrollingDirection = Enum.ScrollingDirection.Y,
				scrollBarVisibility = controls.scrollBarVisibility,
			},
		}, {
			React.createElement(View, {
				Size = UDim2.fromOffset(120, 75),
				backgroundStyle = tokens.Color.Extended.Turquoise.Turquoise_500,
			}),
			React.createElement(View, {
				Size = UDim2.fromOffset(120, 75),
				backgroundStyle = tokens.Color.Extended.Magenta.Magenta_500,
			}),
		}),
		Horizontal = React.createElement(ScrollView, {
			Size = UDim2.new(0, 120, 0, 120),
			layout = {
				FillDirection = Enum.FillDirection.Horizontal,
			},
			scroll = {
				AutomaticCanvasSize = Enum.AutomaticSize.X,
				CanvasSize = UDim2.fromOffset(0, 0),
				ScrollingDirection = Enum.ScrollingDirection.X,
				scrollBarVisibility = controls.scrollBarVisibility,
			},
		}, {
			React.createElement(View, {
				Size = UDim2.fromOffset(120, 75),
				backgroundStyle = tokens.Color.Extended.Turquoise.Turquoise_500,
			}),
			React.createElement(View, {
				Size = UDim2.fromOffset(120, 75),
				backgroundStyle = tokens.Color.Extended.Magenta.Magenta_500,
			}),
		}),
	})
end

local function StoryScrollViewWithTags(props)
	local controls = props.controls

	Flags.FoundationFixScrollViewTags = controls.fixScrollViewTags
	local tag = "row gap-medium bg-surface-100 padding-medium radius-medium size-full-3000"

	local items: { [string]: React.ReactNode } = {}
	for i = 1, 10 do
		items[`Item{i}`] = React.createElement(Text, {
			tag = "bg-shift-100 radius-medium size-3000-2000 content-muted",
			Text = `Item {i}`,
			LayoutOrder = i,
		})
	end

	return React.createElement(View, {
		tag = "col gap-large auto-y size-full-0",
	}, {
		ScrollView1 = React.createElement(ScrollView, {
			tag = tag,
			scroll = {
				AutomaticCanvasSize = Enum.AutomaticSize.X,
				CanvasSize = UDim2.fromScale(0, 1),
				ScrollingDirection = Enum.ScrollingDirection.X,
			},
			LayoutOrder = 1,
		}, items),
		TagInfo = React.createElement(Text, {
			tag = "text-label-small content-default size-full-200",
			Text = `tag = {tag}`,
			LayoutOrder = 2,
		}),
	})
end

return {
	summary = "ScrollView",
	stories = {
		Scrolling = {
			name = "Horizontal and Vertical scrolling",
			story = StoryScrolling,
		},
		Tags = {
			name = "ScrollView with tags",
			story = StoryScrollViewWithTags,
		},
	},
	controls = {
		scrollBarVisibility = {
			"Auto",
			"Always",
			"None",
		},
		fixScrollViewTags = Flags.FoundationFixScrollViewTags,
	},
}
