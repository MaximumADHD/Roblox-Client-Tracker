local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Snackbar = require(Foundation.Components.Snackbar)

type SnackbarProps = Snackbar.SnackbarProps

type Props = {
	controls: {
		icon: string,
		title: string,
		hasCloseAffordance: boolean?,
		actionText: string,
	},
}

local function Story(props: SnackbarProps)
	return React.createElement(Snackbar, props)
end

return {
	summary = "Snackbar",
	stories = {
		{
			name = "No Button Snackbar",
			story = function(props: Props)
				return Story({
					icon = props.controls.icon,
					title = props.controls.title,
				})
			end,
		},
		{
			name = "Snackbar",
			story = function(props: Props)
				return Story({
					action = if props.controls.actionText ~= ""
						then {
							text = props.controls.actionText,
							onActivated = function()
								print("action activated")
							end,
						}
						else nil,
					icon = props.controls.icon,
					onClose = if props.controls.hasCloseAffordance
						then function()
							print("close clicked!")
						end
						else nil,
					title = props.controls.title,
				})
			end,
		},
	},
	controls = {
		icon = {
			"diamond-simplified",
			"",
		},
		title = "This is a snackbar!",
		actionText = "Primary",
		hasCloseAffordance = true,
	},
}
