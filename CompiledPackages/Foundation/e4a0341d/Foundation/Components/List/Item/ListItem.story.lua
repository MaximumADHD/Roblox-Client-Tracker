local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AccessoryType = require(Foundation.Enums.AccessoryType)
type AccessoryType = AccessoryType.AccessoryType

local InputSize = require(Foundation.Enums.InputSize)
local ListItemInputType = require(Foundation.Enums.ListItemInputType)

local List = require(Foundation.Components.List)
local ListContext = require(Foundation.Components.List.ListContext)

local LEADING = {
	AccessoryType.Avatar :: AccessoryType,
	AccessoryType.Media :: AccessoryType,
	React.None,
}

return {
	summary = "ListItem",
	stories = {
		Default = {
			name = "Default",
			story = function(props)
				local inputTypeSelected, setInputTypeSelected = React.useState(false)

				local leading = if props.controls.leading == AccessoryType.Avatar
					then {
						type = AccessoryType.Avatar,
						userId = 24813339,
					}
					elseif props.controls.leading == AccessoryType.Media then {
						iconName = "rbxthumb://type=GameIcon&id=1818&w=150&h=150",
					}
					elseif props.controls.leading ~= React.None then props.controls.leading
					else nil

				return React.createElement(ListContext.Provider, {
					value = {
						size = props.controls.size,
					},
				}, {
					ListItem = React.createElement(List.Item, {
						leading = leading,
						title = {
							title = if props.controls.title == "" then nil else props.controls.title,
							metadata = if props.controls.metadata == "" then nil else props.controls.metadata,
						},
						description = if props.controls.description == "" then nil else props.controls.description,
						onActivated = if props.controls.onActivated
							then {
								onActivated = function()
									print("ListItem activated")
									setInputTypeSelected(function(prev)
										return not prev
									end)
								end,
								inputType = if props.controls.listItemInputType ~= ""
									then props.controls.listItemInputType
									else nil,
								isChecked = inputTypeSelected,
							}
							else nil,
					}),
				})
			end,
		},
	},
	controls = {
		leading = Dash.values(Dash.join(BuilderIcons.Icon, LEADING)),
		title = "List Item Title",
		metadata = "List Item Metadata",
		description = "The title prop can be a string or an object with a title and metadata field.",
		size = Dash.values(InputSize),
		onActivated = false,
		listItemInputType = Dash.values(Dash.join(ListItemInputType, { "" })),
	},
}
