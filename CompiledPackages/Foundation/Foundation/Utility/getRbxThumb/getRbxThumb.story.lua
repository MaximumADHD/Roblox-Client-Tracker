local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Image = require(Foundation.Components.Image)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)

local getRbxThumb = require(Foundation.Utility.getRbxThumb)
local ThumbnailType = require(Foundation.Enums.ThumbnailType)
local ThumbnailSize = require(Foundation.Enums.ThumbnailSize)
type ThumbnailSize = ThumbnailSize.ThumbnailSize
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

return {
	summary = "getRbxThumb",
	name = "Configurable image with getRbxThumb",
	story = function(props)
		local url = getRbxThumb(props.controls.type, props.controls.id, props.controls.size)

		return React.createElement(View, {
			tag = "col gap-medium align-x-center auto-xy padding-large bg-surface-100",
		}, {
			Image = React.createElement(Image, {
				tag = "bg-shift-100",
				Image = url,
				Size = UDim2.fromOffset(150, 150),
				LayoutOrder = 1,
			}),
			Text = React.createElement(Text, {
				tag = "text-caption-small",
				Text = url,
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 2,
			}),
		})
	end,
	controls = {
		type = Dash.values(ThumbnailType),
		id = 1,
		size = { ThumbnailSize.Medium :: ThumbnailSize, ThumbnailSize.Large, ThumbnailSize.XLarge, ThumbnailSize.Small },
	},
}
