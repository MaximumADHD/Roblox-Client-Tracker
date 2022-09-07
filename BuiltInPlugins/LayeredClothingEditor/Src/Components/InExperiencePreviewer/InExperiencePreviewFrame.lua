local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)
local Framework = require(Plugin.Packages.Framework)

local Components = AvatarToolsShared.Components
local PreviewAvatarWheel = Components.PreviewAvatarWheel

local Contexts = AvatarToolsShared.Contexts
local PreviewContext = Contexts.PreviewContext

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local InExperiencePreviewerFrame = Roact.PureComponent:extend("InExperiencePreviewerFrame")

function InExperiencePreviewerFrame:init()
	self.state = {
		index = 1,
	}
end

function InExperiencePreviewerFrame:didMount()
	local props = self.props
	local previewContext = props.PreviewContext
	self.modelSelectionChangedHandle = previewContext:getPreviewModelChangedSignal():Connect(function()
		self:setState({
			index = previewContext:getCurrentPreviewAvatarIndex(),
		})
	end)
end

function InExperiencePreviewerFrame:render()
	local props = self.props
	local state = self.state

	local index = state.index
	local previewContext = props.PreviewContext

	return Roact.createElement("ScreenGui", {
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		AvatarSelection = Roact.createElement(PreviewAvatarWheel, {
			PreviewAvatars = previewContext:getAvatars(),
			SelectedIndex = index,
			Size = UDim2.fromScale(0.3, 0.15),
			Position = UDim2.fromScale(0.5, 1),
			AnchorPoint = Vector2.new(0.5, 1),
			Capacity = 3,
		})
	})
end

function InExperiencePreviewerFrame:willUnmount()
	if self.modelSelectionChangedHandle then
		self.modelSelectionChangedHandle:Disconnect()
		self.modelSelectionChangedHandle = nil
	end
end

InExperiencePreviewerFrame = withContext({
	PreviewContext = PreviewContext,
})(InExperiencePreviewerFrame)

return InExperiencePreviewerFrame
