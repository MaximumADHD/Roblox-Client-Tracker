local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local withMockProviders = require(VirtualEvents.withMockProviders)
local SelectableTextLabel = require(script.Parent.SelectableTextLabel)

local useStyle = UIBlox.Core.Style.useStyle

local controls = {
	text = "Ad proident sit nulla incididunt do nisi amet velit velit...",
}

type Props = {
	controls: typeof(controls),
}

-- We create this wrapper component so we can use hooks
local function Story(props: Props)
	local style = useStyle()

	return React.createElement(SelectableTextLabel, {
		Text = props.controls.text,
		fontStyle = style.Font.Body,
		colorStyle = style.Theme.TextEmphasis,
	})
end

return {
	summary = "A styled TextLabel with selectable text. Click and drag with the mouse to select content",
	controls = controls,
	story = function(props: Props)
		return withMockProviders({
			Story = React.createElement(Story, props),
		})
	end,
}
