local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local Coachmark = require(Foundation.Components.Coachmark)
local IconButton = require(Foundation.Components.IconButton)
local InputSize = require(Foundation.Enums.InputSize)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local function generateActions(hasSecondaryButton: boolean)
	local actions: { Types.ActionProps } = {
		{
			text = "Got it",
			onActivated = function()
				print("Primary button clicked")
			end,
			variant = ButtonVariant.Emphasis,
		},
	}

	if hasSecondaryButton then
		table.insert(actions, {
			text = "Skipppp",
			onActivated = function()
				print("Secondary button clicked")
			end,
			variant = ButtonVariant.Standard,
		})
	end

	return actions
end

return {
	summary = "Coachmark",
	story = function(props)
		return React.createElement(
			View,
			{
				Size = UDim2.new(1, 0, 0, 500),
				tag = "row align-x-center align-y-center",
			},
			React.createElement(
				Coachmark,
				{
					title = props.controls.title,
					side = props.controls.side,
					align = props.controls.align,
					text = props.controls.text,
					isOpen = props.controls.isOpen,
					onClose = if props.controls.hasCloseAffordance
						then function()
							print("Close affordance clicked")
						end
						else nil,
					steps = if props.controls.showSteps
						then {
							current = 2,
							total = 5,
						}
						else nil,
					actions = if props.controls.hasActions
						then generateActions(props.controls.hasSecondaryButton)
						else nil,
				},
				React.createElement(IconButton, {
					icon = "reactions/heart",
					size = InputSize.Medium,
					onActivated = function()
						print("Icon button clicked")
					end,
				})
			)
		)
	end,
	controls = {
		title = "Title",
		text = "Generally we should avoid coachmarks with long titles and bodys. Consider using other affordances for sharing contextual information when content expands beyond a few lines.",
		side = Dash.values(PopoverSide),
		align = Dash.values(PopoverAlign),
		hasSecondaryButton = false,
		hasCloseAffordance = false,
		hasActions = true,
		isOpen = true,
		showSteps = true,
	},
}
