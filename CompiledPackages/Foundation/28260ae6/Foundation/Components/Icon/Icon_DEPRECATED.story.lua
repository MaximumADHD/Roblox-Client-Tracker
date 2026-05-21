local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)

local function Story(props)
	local controls = props.controls

	return React.createElement(Icon, {
		name = controls.name,
		size = controls.size,
	})
end

return {
	summary = "Icon component for displaying icons",
	story = Story,
	controls = {
		name = {
			"icons/common/search",
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
