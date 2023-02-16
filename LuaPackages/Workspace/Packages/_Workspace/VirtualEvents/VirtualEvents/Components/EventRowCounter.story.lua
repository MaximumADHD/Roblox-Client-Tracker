local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventRowCounter = require(script.Parent.EventRowCounter)

local Images = UIBlox.App.ImageSet.Images

local controls = {
	icon = "icons/status/games/people-playing_small",
	counter = 55000,
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		return withMockProviders({
			EventRowCounter = React.createElement(EventRowCounter, {
				icon = Images[props.controls.icon],
				counter = props.controls.counter,
			}),
		})
	end,
}
