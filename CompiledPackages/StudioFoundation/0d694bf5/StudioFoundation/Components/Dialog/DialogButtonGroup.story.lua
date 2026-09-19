local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local DialogButtonGroup = require(script.Parent.DialogButtonGroup)
local Foundation = require(Packages.Foundation)
local React = require(Packages.React)

local StudioUri = require(Main.Util.StudioUri)
local e = React.createElement

return {
	name = "DialogButtonGroup",
	controls = {
		containerWidth = 318,
		primaryAction = "Save",
		secondaryAction = "Don't save",
		tertiaryAction = "Cancel",
	},
	stories = {
		{
			name = "Configurable",
			story = function(props)
				return e(Foundation.View, {
					Size = UDim2.fromOffset(props.controls.containerWidth, 0),
				}, {
					DialogButtonGroup = e(DialogButtonGroup, {
						primaryAction = if props.controls.primaryAction ~= ""
							then {
								uri = StudioUri.fromWidget("Dialog", "Primary"),
								text = props.controls.primaryAction,
								onActivated = function()
									print("Primary")
								end,
							}
							else nil,
						secondaryAction = if props.controls.secondaryAction ~= ""
							then {
								uri = StudioUri.fromWidget("Dialog", "Secondary"),
								text = props.controls.secondaryAction,
								onActivated = function()
									print("Secondary")
								end,
							}
							else nil,
						tertiaryAction = if props.controls.tertiaryAction ~= ""
							then {
								uri = StudioUri.fromWidget("Dialog", "Tertiary"),
								text = props.controls.tertiaryAction,
								onActivated = function()
									print("Tertiary")
								end,
							}
							else nil,
					}),
				})
			end,
		},
	},
}
