--[[
	Avatar wrapper class with helper functions to adding accessories to it properly, as well as
	functions to deform or transfrom any of its layers.
]]

local Util = script.Parent

local AccessoryUtil = require(Util.AccessoryUtil)
local AvatarUtil = require(Util.AvatarUtil)
local getModelFromBackend = require(Util.getModelFromBackend)
local WrapUtil = require(Util.WrapUtil)

local PreviewAvatar = {}
PreviewAvatar.__index = PreviewAvatar

function PreviewAvatar.new(sourceModel, parent)
	local self = setmetatable({}, PreviewAvatar)
	self.model = sourceModel
	self.model.Archivable = false
	self.model.Parent = parent
	self.clothing = {}
	return self
end

function PreviewAvatar.initFromId(assetService, assetId, parent)
	return PreviewAvatar.new(getModelFromBackend(assetService, assetId, true), parent)
end

function PreviewAvatar:transformLayer(layerIndex, size, attachmentCFrameLocal, itemCFrameLocal, attachmentName)
	local layer = self.clothing[layerIndex]
	if layer then
		layer:transform(size, attachmentCFrameLocal, itemCFrameLocal, attachmentName)
	end
end

function PreviewAvatar:deformLayer(layerIndex, cageVertexData, cageType)
	local layer = self.clothing[layerIndex]
	if layer then
		layer:deform(cageVertexData, cageType)
	end
end

function PreviewAvatar:deformAvatarBody(cageVertexData, cageType)
	WrapUtil:deformBody(self.model, cageVertexData, cageType)
end

function PreviewAvatar:addLayer(clothing)
	AccessoryUtil:attachClothingItem(self.model, clothing.model)
	table.insert(self.clothing, clothing)
	return #self.clothing
end

function PreviewAvatar:setLayer(layerIndex, clothing)
	AccessoryUtil:attachClothingItem(self.model, clothing.model)
	self:removeClothing(layerIndex)
	self.clothing[layerIndex] = clothing
end

function PreviewAvatar:removeLayer(layerIndex)
	if self.clothing[layerIndex] then
		self.clothing[layerIndex]:destory()
		self.clothing[layerIndex] = nil
	end
end

function PreviewAvatar:removeAllClothing()
	for _, clothing in ipairs(self.clothing) do
		clothing:destroy()
	end
	self.clothing = {}
end

function PreviewAvatar:destroy()
	self:removeAllClothing()
	if self.model then
		self.model:Destroy()
	end
	self.model = nil
end

return PreviewAvatar