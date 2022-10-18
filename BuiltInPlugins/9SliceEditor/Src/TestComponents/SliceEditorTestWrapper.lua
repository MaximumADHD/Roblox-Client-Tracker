--[[
	A drop-in replacement of the SliceEditor component for testing.
	This component mocks the behavior of InstanceUnderEditManager so we can test the SliceEditor component independently.

	Required Props:
		sliceRect: SliceRect
		selectedObject: Instance
		pixelDimensions: Vector2
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local SliceRectUtil = require(Plugin.Src.Util.SliceRectUtil)
local SliceEditor = require(Plugin.Src.Components.SliceEditorMain)

local SliceEditorTestWrapper = Roact.PureComponent:extend("SliceEditorTestWrapper")

function SliceEditorTestWrapper:init(props)
	self.state = {
		sliceRect = props.sliceRect,
	}
end

function SliceEditorTestWrapper:didMount()
	local instanceUnderEdit = self.props.selectedObject
	self.sliceCenterChangedSignal = instanceUnderEdit:GetPropertyChangedSignal("SliceCenter"):Connect(function()
		self:setState({
			sliceRect = SliceRectUtil.getSliceRectFromSliceCenter(instanceUnderEdit.SliceCenter),
		})
	end)
end

function SliceEditorTestWrapper:willUnmount()
	if self.sliceCenterChangedSignal then
		self.sliceCenterChangedSignal:Disconnect()
		self.sliceCenterChangedSignal = nil
	end
end

function SliceEditorTestWrapper:render()
	local props = self.props
	local state = self.state

	return Roact.createElement(SliceEditor, {
		selectedObject = props.selectedObject,
		pixelDimensions = props.pixelDimensions,
		onClose = function() end,
		sliceRect = state.sliceRect,
		revertSliceRect = props.sliceRect,
	})
end

SliceEditorTestWrapper = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = ContextServices.Stylizer,
	Mouse = ContextServices.Mouse,
})(SliceEditorTestWrapper)

return SliceEditorTestWrapper
