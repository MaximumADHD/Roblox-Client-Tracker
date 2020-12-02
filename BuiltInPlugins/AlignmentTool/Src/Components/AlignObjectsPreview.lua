--[[
	A component which extracts the relevant information from the Rodux store,
	and renders an alignment preview.
]]
local Plugin = script.Parent.Parent.Parent

local Selection = game:GetService("Selection")
local CoreGui = game:GetService("CoreGui")

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local renderAlignObjectsPreview = require(Plugin.Src.Utility.renderAlignObjectsPreview)
local RelativeTo = require(Plugin.Src.Utility.RelativeTo)

local AlignObjectsPreview = Roact.PureComponent:extend("AlignObjectsPreview")

function AlignObjectsPreview:render()
	local props = self.props

	local target
	if props.relativeTo == RelativeTo.Active then
		target = Selection.ActiveInstance
	end

	return Roact.createElement(Roact.Portal, {
		target = CoreGui,
	}, {
		AlignToolPreviewUI = Roact.createElement("Folder", {}, {
		 	Elements = renderAlignObjectsPreview(props.objects, props.space, props.axes, props.mode, target),
		})
	})
end

local function mapStateToProps(state, _)
	return {
		objects = state.alignableObjects,
		mode = state.alignmentMode,
		space = state.alignmentSpace,
		axes = state.enabledAxes,
		relativeTo = state.relativeTo,

		-- Read align enabled even though we don't need it so that we get
		-- re-rendered when the align enabled state changes after aligning.
		alignEnabled = state.alignEnabled,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(AlignObjectsPreview)