--[[
	A wrapper for either a rigid or caged accessory, meant to be added as a layer to a PreviewAvatar.
]]

local Util = script.Parent

local AccessoryUtil = require(Util.AccessoryUtil)
local getModelFromBackend = require(Util.getModelFromBackend)
local WrapUtil = require(Util.WrapUtil)

local PreviewClothing = {}
PreviewClothing.__index = PreviewClothing

function PreviewClothing.new(sourceModel, autoscale)
	local self = setmetatable({}, PreviewClothing)
	self.model = sourceModel
	self.autoscale = if autoscale == nil then true else autoscale
	self.model.Archivable = false
	return self
end

function PreviewClothing.initFromId(assetService, assetId)
	return PreviewClothing.new(getModelFromBackend(assetService, assetId, false))
end

function PreviewClothing:transform(size, attachmentCFrameLocal, itemCFrameLocal, attachmentName)
	-- need to detach weld first
	local handle = AccessoryUtil:getHandle(self.model)
	local weld = handle:FindFirstChildWhichIsA("WeldConstraint")
	if weld then
		weld:Destroy()
	end
	handle.Size = size
	AccessoryUtil:createOrReuseAttachmentInstance(handle, handle.Parent, attachmentName, attachmentCFrameLocal, itemCFrameLocal)
	AccessoryUtil:attachClothingItem(handle.Parent, handle, attachmentName, self.autoscale)
end

function PreviewClothing:deform(cageVertexData, cageType)
	local handle = AccessoryUtil:getHandle(self.model)
	WrapUtil:deformClothing(handle, cageVertexData, cageType)
end

function PreviewClothing:destroy()
	self.model:Destroy()
	self.model = nil
end

return PreviewClothing