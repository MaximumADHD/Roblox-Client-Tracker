local Packages = script.Parent.Parent.Parent
local React = require(Packages.React)

export type InteractionHandlers = {
	onInputBegan: (event: any, input: any) -> (),
	onInputEnded: (event: any, input: any) -> (),
	onMouseEnter: () -> (),
	onMouseLeave: () -> (),
}

local function useInteraction(onInteract: () -> ()): (InteractionHandlers, boolean, boolean)
	local isPressed, setIsPressed = React.useState(false)
	local isHovered, setIsHovered = React.useState(false)

	local handlers: InteractionHandlers = {
		onInputBegan = function(_, input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				setIsPressed(true)
			end
		end,

		onInputEnded = function(_, input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				if isPressed and isHovered then
					onInteract()
				end
				setIsPressed(false)
			end
		end,

		onMouseEnter = function()
			setIsHovered(true)
		end,

		onMouseLeave = function()
			setIsHovered(false)
			setIsPressed(false)
		end,
	}
	return handlers, isPressed, isHovered
end

return useInteraction
