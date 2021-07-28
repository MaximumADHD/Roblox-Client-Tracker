--[[
	Renders acceptable bounding volume for accessories to be dragged around and placed in.
	Tracks positional changes of accessory for preview and bounds verification. This
	component does not receive any props from its parent.
]]

local CoreGui = game:GetService("CoreGui")

-- libraries
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local SetAttachmentPoint = require(Plugin.Src.Actions.SetAttachmentPoint)
local SetItemSize = require(Plugin.Src.Actions.SetItemSize)
local VerifyBounds = require(Plugin.Src.Thunks.VerifyBounds)

local EditingItemContext = require(Plugin.Src.Context.EditingItemContext)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local MeshPartTool = Roact.PureComponent:extend("MeshPartTool")

function MeshPartTool:didMount()
	local props = self.props
	local editingItem = props.EditingItemContext:getItem()

	if not editingItem then
		return
	end

	local attachment = editingItem:FindFirstChildWhichIsA("Attachment")
	if not attachment then
		return
	end

	self.baseCFrame = attachment.WorldCFrame

	self.props.SetAttachmentPoint({
		ItemCFrame = self.baseCFrame:inverse() * editingItem.CFrame,
		AttachmentCFrame = attachment.CFrame,
	})

	self.CFrameChanged = editingItem:GetPropertyChangedSignal("CFrame"):Connect(function()
		local attachment = editingItem:FindFirstChildWhichIsA("Attachment")
		if attachment then
			attachment.CFrame = (self.baseCFrame:inverse() * editingItem.CFrame):inverse()
			self.props.SetAttachmentPoint({
				ItemCFrame = self.baseCFrame:inverse() * editingItem.CFrame,
				AttachmentCFrame = attachment.CFrame,
			})
		end
		self.props.VerifyBounds(editingItem)
	end)

	self.SizeChanged = editingItem:GetPropertyChangedSignal("Size"):Connect(function()
		self.props.SetItemSize(editingItem.Size)
		self.props.VerifyBounds(editingItem)
	end)
end

function MeshPartTool:render()
	local props = self.props

	local editingItem = props.EditingItemContext:getItem()
	local accessoryTypeInfo = props.AccessoryTypeInfo
	if not editingItem or not accessoryTypeInfo then
		return nil
	end

	local attachment = editingItem:FindFirstChildWhichIsA("Attachment")
	local weld = editingItem:FindFirstChildWhichIsA("WeldConstraint")
	if not attachment or not weld then
		return nil
	end

	local part1 = weld.Part1
	if not part1 then
		return nil
	end

	local matchingAttachment = part1:FindFirstChild(attachment.Name)
	if not matchingAttachment then
		return nil
	end

	local theme = props.Stylizer

	local bounds = accessoryTypeInfo.Bounds
	local offset = accessoryTypeInfo.Offset
	local position = matchingAttachment.Position

	local color = props.InBounds and theme.InBoundsColor or theme.OutBoundsColor

	return Roact.createElement(Roact.Portal, {
		target = CoreGui,
	}, {
		BoundingBox = Roact.createElement("BoxHandleAdornment", {
			Adornee = part1,
			CFrame = CFrame.new(position + offset),
			Size = bounds,
			Transparency = theme.Transparency,
			Color3 = color,
			Archivable = false,
		})
	})
end

function MeshPartTool:willUnmount()
	if self.CFrameChanged then
		self.CFrameChanged:Disconnect()
		self.CFrameChanged = nil
	end

	if self.SizeChanged then
		self.SizeChanged:Disconnect()
		self.SizeChanged = nil
	end
end

ContextServices.mapToProps(MeshPartTool,{
	Stylizer = ContextServices.Stylizer,
	EditingItemContext = EditingItemContext,
})

local function mapStateToProps(state, props)
    local selectItem = state.selectItem

	return {
		AccessoryTypeInfo = selectItem.accessoryTypeInfo,
		InBounds = selectItem.inBounds,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetAttachmentPoint = function(cframe)
			dispatch(SetAttachmentPoint(cframe))
		end,

		SetItemSize = function(size)
			dispatch(SetItemSize(size))
		end,

		VerifyBounds = function(editingItem)
			dispatch(VerifyBounds(editingItem))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MeshPartTool)