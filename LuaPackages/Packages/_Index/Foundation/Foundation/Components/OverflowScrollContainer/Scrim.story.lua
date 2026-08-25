local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local InputSize = require(Foundation.Enums.InputSize)
local Scrim = require(script.Parent.Scrim)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useScrimVariants = require(script.Parent.useScrimVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)

type InputSize = InputSize.InputSize

type StoryProps = {
	controls: {
		size: InputSize,
		isHovered: boolean,
		preferredInput: Enum.PreferredInput,
		isVisible: boolean,
	},
}

local INPUT_SIZES: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

type ScrimSampleProps = {
	size: InputSize,
	isHovered: boolean?,
	preferredInput: Enum.PreferredInput?,
	isVisible: boolean?,
	LayoutOrder: number?,
}

local function ScrimSample(props: ScrimSampleProps)
	local tokens = useTokens()
	local isHovered = props.isHovered or false
	local isVisible = if props.isVisible == nil then true else props.isVisible
	local preferredInput = props.preferredInput or Enum.PreferredInput.KeyboardAndMouse
	local variants = useScrimVariants(tokens, Enum.HorizontalAlignment.Left, preferredInput)

	local stripHeight = tokens.Size.Size_1000
	local rowHeight = React.useBinding(stripHeight)

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		tag = "col gap-small auto-xy",
	}, {
		Label = React.createElement(Text, {
			LayoutOrder = 1,
			Text = `{props.size}, {stripHeight}px row, {stripHeight + variants.fade}px scrim`,
			tag = "auto-xy text-caption-large content-emphasis",
		}),

		Strip = React.createElement(View, {
			LayoutOrder = 2,
			Size = UDim2.new(1, 0, 0, stripHeight),
			sizeConstraint = {
				MaxSize = Vector2.new(600, math.huge),
			},
		}, {
			Content = React.createElement(Text, {
				Text = ("Content "):rep(10),
				tag = "size-full-full text-body-medium text-align-x-left",
				backgroundStyle = tokens.Inverse.Surface.Surface_0,
				textStyle = tokens.Inverse.Content.Emphasis,
			}),

			Scrims = React.createElement(View, {
				tag = "row flex-between size-full-full",
				ZIndex = 2,
			}, {
				ScrimStart = React.createElement(Scrim, {
					LayoutOrder = 1,
					size = props.size,
					rowHeight = rowHeight,
					alignment = Enum.HorizontalAlignment.Left,
					isHovered = isHovered,
					preferredInput = preferredInput,
					isVisible = isVisible,
					onActivated = function() end,
				}),
				ScrimEnd = React.createElement(Scrim, {
					LayoutOrder = 2,
					size = props.size,
					rowHeight = rowHeight,
					alignment = Enum.HorizontalAlignment.Right,
					isHovered = isHovered,
					preferredInput = preferredInput,
					isVisible = isVisible,
					onActivated = function() end,
				}),
			}),
		}),
	})
end

local function PlaygroundStory(props: StoryProps)
	return React.createElement(ScrimSample, {
		size = props.controls.size,
		isHovered = props.controls.isHovered,
		preferredInput = props.controls.preferredInput,
		isVisible = props.controls.isVisible,
	})
end

local function SizesStory()
	local children: { [string]: React.ReactNode } = {}

	for index, size: InputSize in INPUT_SIZES do
		children[size] = React.createElement(ScrimSample, {
			LayoutOrder = index,
			size = size,
			isHovered = false,
			isVisible = true,
		})
	end

	return React.createElement(View, {
		tag = "col gap-xlarge size-full-0 auto-y",
	}, children)
end

return {
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizes",
			story = SizesStory,
		},
	},
	controls = {
		size = {
			InputSize.Medium,
			InputSize.XSmall,
			InputSize.Small,
			InputSize.Large,
		} :: { InputSize.InputSize },
		isHovered = false,
		preferredInput = {
			Enum.PreferredInput.KeyboardAndMouse,
			Enum.PreferredInput.Gamepad,
			Enum.PreferredInput.Touch,
		},
		isVisible = true,
	},
}
