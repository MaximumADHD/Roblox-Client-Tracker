--[[
	Extension of PreviewAvatar, includes the ability to automatically regenerate should the
	user try to mess with it in Studio (ie. deleting accidentally).
]]

local InsertService = game:GetService("InsertService")
local HttpService = game:GetService("HttpService")

local Util = script.Parent

local Constants = require(Util.Constants)
local PreviewAvatar = require(Util.PreviewAvatar)
local PreviewUtil = require(Util.PreviewUtil)
local WrapUtil = require(Util.WrapUtil)

local Mannequin = setmetatable({}, {__index = PreviewAvatar})
Mannequin.__index = Mannequin

local function terminateConnections(self)
	if self.AncestryChangedHandle then
		self.AncestryChangedHandle:Disconnect()
		self.AncestryChangedHandle = nil
	end
end

local function init(self)
	if self.sourceDisplayItem then
		self.displayItem = self.sourceDisplayItem:Clone()
		self.displayItem.Name = HttpService:GenerateGUID()
		PreviewUtil.addPreviewClothingFromInstances({self}, {self.displayItem})
		self.AncestryChangedHandle = self.displayItem.AncestryChanged:Connect(function()
			self:reset()
		end)
	else
		self.AncestryChangedHandle = self.model.AncestryChanged:Connect(function()
			self:reset()
		end)
	end
end

function Mannequin:reset()
	terminateConnections(self)
	PreviewAvatar.destroy(self)
	self.model = self.sourceMannequin:Clone()
	self.model.Archivable = false
	self.model.Parent = self.sourceParent
	init(self)
	self.onMannequinReset()
end

function Mannequin.new(displayItem, mannequinAvatar, parent, onMannequinReset)
	if not mannequinAvatar then
		mannequinAvatar = InsertService:LoadLocalAsset(Constants.MANNEQUIN_PATH)
	end

	local sourceMannequin = mannequinAvatar:Clone()
	WrapUtil:makeDeformerNamesUnique(sourceMannequin)

	local self = setmetatable(PreviewAvatar.new(sourceMannequin:Clone(), parent), Mannequin)

	self.sourceMannequin = sourceMannequin

	WrapUtil:makeDeformerNamesUnique(displayItem)
	self.sourceDisplayItem = displayItem

	self.sourceParent = parent
	self.onMannequinReset = onMannequinReset

	init(self)

	return self
end

function Mannequin:destroy()
	terminateConnections(self)

	self.sourceMannequin = nil
	self.sourceDisplayItem = nil

	if self.displayItem then
		self.displayItem:Destroy()
		self.displayItem = nil
	end

	PreviewAvatar.destroy(self)
end

return Mannequin