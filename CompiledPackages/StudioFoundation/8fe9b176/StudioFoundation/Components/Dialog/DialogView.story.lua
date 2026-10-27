local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local DialogView = require(script.Parent.DialogView)
local React = require(Packages.React)
local Types = require(Main.Types)

local StudioUri = require(Main.Util.StudioUri)
local e = React.createElement

local function createBasicExample(dialogType: Types.DialogType)
	return {
		name = dialogType :: string,
		story = function()
			return e(DialogView, {
				type = dialogType,
				title = "Dialog Title",
				description = "This is a description for the dialog. It provides more details about the purpose of the dialog.",
				primaryAction = {
					uri = StudioUri.fromWidget("Dialog", "Primary"),
					text = "Primary",
					onActivated = function()
						print("Primary")
					end,
				},
				secondaryAction = {
					uri = StudioUri.fromWidget("Dialog", "Secondary"),
					text = "Secondary",
					onActivated = function()
						print("Secondary")
					end,
				},
				tertiaryAction = {
					uri = StudioUri.fromWidget("Dialog", "Tertiary"),
					text = "Tertiary",
					onActivated = function()
						print("Tertiary")
					end,
				},
			})
		end,
	}
end

return {
	name = "DialogView",
	controls = {
		type = { "Default", "Warning", "Critical" },
		title = "Save changes to Place1?",
		description = "",
		primaryActionText = "Save",
		secondaryActionText = "Don't save",
		tertiaryActionText = "Cancel",
	},
	stories = {
		{
			name = "Configurable",
			story = function(props: any)
				return e(DialogView, {
					type = props.controls.type,
					title = props.controls.title,
					description = props.controls.description,
					primaryAction = if props.controls.primaryActionText ~= ""
						then {
							uri = StudioUri.fromWidget("Dialog", "Primary"),
							text = props.controls.primaryActionText,
							onActivated = function()
								print("Primary")
							end,
						}
						else nil,
					secondaryAction = if props.controls.secondaryActionText ~= ""
						then {
							uri = StudioUri.fromWidget("Dialog", "Secondary"),
							text = props.controls.secondaryActionText,
							onActivated = function()
								print("Secondary")
							end,
						}
						else nil,
					tertiaryAction = if props.controls.tertiaryActionText ~= ""
						then {
							uri = StudioUri.fromWidget("Dialog", "Tertiary"),
							text = props.controls.tertiaryActionText,
							onActivated = function()
								print("Tertiary")
							end,
						}
						else nil,
				})
			end,
		},
		createBasicExample("Default"),
		createBasicExample("Warning"),
		createBasicExample("Critical"),
	},
}
