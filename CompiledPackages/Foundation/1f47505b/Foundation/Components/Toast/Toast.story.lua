local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

local ThumbnailType = require(Foundation.Enums.ThumbnailType)
local getRbxThumb = require(Foundation.Utility.getRbxThumb)

local Toast = require(Foundation.Components.Toast)

local function Story(props)
	return React.createElement(Toast, props)
end

return {
	summary = "Toast",
	stories = {
		{
			name = "Toast",
			story = function(props)
				return Story({
					title = props.controls.title,
					text = props.controls.text,
					icon = props.controls.icon,
					actions = {
						if props.controls.button1 ~= ""
							then {
								onActivated = function()
									print(props.controls.button1)
								end,
								variant = ButtonVariant.Emphasis :: ButtonVariant,
								text = props.controls.button1,
							}
							else nil,
						if props.controls.button2 ~= ""
							then {
								onActivated = function()
									print(props.controls.button2)
								end,
								variant = ButtonVariant.Subtle :: ButtonVariant,
								text = props.controls.button2,
							}
							else nil,
					},
					width = UDim.new(0, props.controls.width),
				} :: any)
			end,
		},
	},
	controls = {
		icon = {
			getRbxThumb(ThumbnailType.AvatarHeadShot, 6181525679),
			"icons/common/play",
			"",
		},
		title = "Toast Notification",
		text = "U have been toasted . >:)",
		button1 = "Action 1",
		button2 = "Action 2",
		width = { 400, 300, 500 },
	},
}
