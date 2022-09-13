--[[
	Renders acceptable bounding volume for accessories to be dragged around and placed in.
	Tracks positional changes of accessory for preview and bounds verification. This
	component does not receive any props from its parent.
]]

local CoreGui = game:GetService("CoreGui")
local Selection = game:GetService("Selection")
local ChangeHistoryService = game:GetService("ChangeHistoryService")

-- libraries
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local AvatarToolsSharedConstants = AccessoryAndBodyToolSharedUtil.Constants

local SetAttachmentPoint = require(Plugin.Src.Actions.SetAttachmentPoint)
local SetItemSize = require(Plugin.Src.Actions.SetItemSize)
local VerifyBounds = require(Plugin.Src.Thunks.VerifyBounds)

local EditingItemContext = AvatarToolsShared.Contexts.EditingItemContext
local SignalsContext = AvatarToolsShared.Contexts.Signals

local Constants = require(Plugin.Src.Util.Constants)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local MeshPartTool = Roact.PureComponent:extend("MeshPartTool")

function MeshPartTool:init()
	self.state = {
		matchingAttachment = nil,
	}

	self.selectMeshPart = function()
		local props = self.props

		local item = props.EditingItemContext:getItem()

		if not item then
			return
		end

		Selection:Set({item})
	end

	self.placeAndScaleItem = function()
		local props = self.props
		local state = self.state

		local item = props.EditingItemContext:getItem()
		local accessoryTypeInfo = props.AccessoryTypeInfo

		if not item or not accessoryTypeInfo then
			return
		end

		local matchingAttachment = state.matchingAttachment
		local attachment = item:FindFirstChild(accessoryTypeInfo.Name)
		if not attachment or not matchingAttachment then
			return
		end

		local baseCFrame = matchingAttachment.WorldCFrame

		attachment.CFrame = (baseCFrame:inverse() * item.CFrame):inverse()
		self.props.SetAttachmentPoint({
			ItemCFrame = baseCFrame:inverse() * item.CFrame,
			AttachmentCFrame = attachment.CFrame,
		})

		self.props.SetItemSize(item.Size)
		self.props.VerifyBounds(item)
	end

	self.onEditingItemChanged = function()
		local item = self.props.EditingItemContext:getItem()
		local accessoryTypeInfo = self.props.AccessoryTypeInfo

		if not item then
			if self.CFrameChanged then
				self.CFrameChanged:Disconnect()
				self.CFrameChanged = nil
			end

			if self.SizeChanged then
				self.SizeChanged:Disconnect()
				self.SizeChanged = nil
			end

			return
		end

		local attachment = item:FindFirstChild(accessoryTypeInfo.Name)
		local weld = item:FindFirstChildWhichIsA("Weld")
		if not attachment or not weld then
			return
		end

		local part1 = weld.Part1
		if not part1 then
			return
		end

		local matchingAttachment = part1:FindFirstChild(attachment.Name)
		if not matchingAttachment then
			return
		end

		self:setState({
			matchingAttachment = matchingAttachment
		})

		self.CFrameChanged = item:GetPropertyChangedSignal("CFrame"):Connect(self.placeAndScaleItem)
		self.SizeChanged = item:GetPropertyChangedSignal("Size"):Connect(self.placeAndScaleItem)

		Selection:Set({item})
	end
end

function MeshPartTool:didMount()
	local props = self.props

	self.EditingItemChanged = props.EditingItemContext:getEditingItemChangedSignal():Connect(function(item)
		self.onEditingItemChanged()
	end)

	self.onEditingItemChanged()

	self.OnRedo = ChangeHistoryService.OnRedo:Connect(self.placeAndScaleItem)
	self.OnUndo = ChangeHistoryService.OnUndo:Connect(self.placeAndScaleItem)

	self.OnPluginWindowFocusedHandle = props.Signals:get(Constants.SIGNAL_KEYS.PluginWindowFocused):Connect(self.selectMeshPart)
end

function MeshPartTool:didUpdate(prevProps, prevState)
	if self.state.matchingAttachment ~= prevState.matchingAttachment then
		self.placeAndScaleItem()
	end
end

function MeshPartTool:renderLinks(theme, bounds, offset, position, adornee)
	local links = {}

	for _, edge in ipairs(AvatarToolsSharedConstants.CUBE_EDGES) do
		local startPos = (edge[1] * bounds) + position + offset
		local endPos = (edge[2] * bounds) + position + offset
		local length = (startPos - endPos).Magnitude
		local cframe = CFrame.new(Vector3.new(0, 0, 0), (endPos - startPos).Unit)
		cframe = cframe + startPos
		table.insert(links, Roact.createElement("LineHandleAdornment", {
			Length = length,
			CFrame = cframe,
			Adornee = adornee,
			Transparency = 0,
			Color3 = theme.LineColor,
			Thickness = theme.LineThickness,
			ZIndex = 1,
			Archivable = false,
			AlwaysOnTop = false,
		}))
	end

	return links
end

function MeshPartTool:renderBorderedBox(bounds, offset, position, adornee)
	local props = self.props
	local theme = props.Stylizer
	local color = props.InBounds and theme.InBoundsColor or theme.OutBoundsColor

	local links = self:renderLinks(theme, bounds, offset, position, adornee)

	return Roact.createElement("BoxHandleAdornment", {
		Adornee = adornee,
		CFrame = CFrame.new(position + offset),
		Size = bounds,
		Transparency = theme.Transparency,
		Color3 = color,
		Archivable = false,
	}, links)
end

function MeshPartTool:render()
	local props = self.props
	local state = self.state

	local accessoryTypeInfo = props.AccessoryTypeInfo
	local matchingAttachment = state.matchingAttachment
	if not matchingAttachment or not accessoryTypeInfo then
		return nil
	end

	local bounds = accessoryTypeInfo.Bounds
	local offset = accessoryTypeInfo.Offset
	local position = matchingAttachment.Position

	return Roact.createElement(Roact.Portal, {
		target = CoreGui,
	}, {
		BoundingBox = self:renderBorderedBox(bounds, offset, position, matchingAttachment.Parent),
	})
end

function MeshPartTool:willUnmount()
	if self.EditingItemChanged then
		self.EditingItemChanged:Disconnect()
		self.EditingItemChanged = nil
	end

	if self.CFrameChanged then
		self.CFrameChanged:Disconnect()
		self.CFrameChanged = nil
	end

	if self.SizeChanged then
		self.SizeChanged:Disconnect()
		self.SizeChanged = nil
	end

	if self.OnRedo then
		self.OnRedo:Disconnect()
		self.OnRedo = nil
	end

	if self.OnUndo then
		self.OnUndo:Disconnect()
		self.OnUndo = nil
	end

	if self.OnPluginWindowFocusedHandle then
		self.OnPluginWindowFocusedHandle:Disconnect()
		self.OnPluginWindowFocusedHandle = nil
	end
end


MeshPartTool = withContext({
	Stylizer = ContextServices.Stylizer,
	EditingItemContext = EditingItemContext,
	Signals = SignalsContext,
})(MeshPartTool)


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