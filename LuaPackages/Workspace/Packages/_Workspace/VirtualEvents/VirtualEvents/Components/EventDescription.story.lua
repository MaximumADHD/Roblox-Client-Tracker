local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventDescription = require(script.Parent.EventDescription)

local controls = {
	description = "Event description goes here...",
	experienceName = "Experience Name",
	experienceThumbnail = "rbxassetid://7714157841",
	isLoading = false,
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local isLoading = props.controls.isLoading

		return withMockProviders({
			EventDescription = React.createElement(EventDescription, {
				description = if not isLoading then props.controls.description else nil,
				experienceName = if not isLoading then props.controls.experienceName else nil,
				experienceThumbnail = if not isLoading then props.controls.experienceThumbnail else nil,
				onExperienceTileActivated = function()
					print("clicked experience tile")
				end,
			}),
		})
	end,
}
