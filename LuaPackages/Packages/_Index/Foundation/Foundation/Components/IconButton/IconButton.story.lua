local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local IconButton = require(Foundation.Components.IconButton)
local IconSize = require(Foundation.Enums.IconSize)

local function Story(props)
	local controls = props.controls

	return React.createElement(IconButton, {
		isDisabled = false,
		onActivated = function() end,
		size = controls.size,
		icon = controls.name,
	})
end

return {
	summary = "Icon component for displaying icons",
	story = Story,
	controls = {
		name = {
			"icons/common/robux",
			"icons/common/search_small",
			"icons/controls/voice/microphone_off_light",
			"icons/controls/voice/video_on_light",
		},
		size = {
			IconSize.Medium,
			IconSize.Small,
			IconSize.Large,
		} :: { IconSize.IconSize },
	},
}
