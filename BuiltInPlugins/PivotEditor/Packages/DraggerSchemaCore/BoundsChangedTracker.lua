
--[[
	BoundsChangedTracker object

	Watches a set of parts for cframe and size changes.
]]

local DraggerSchemaCore = script.Parent
local Packages = DraggerSchemaCore.Parent
local DraggerFramework = Packages.DraggerFramework

local getEngineFeatureModelPivotVisual = require(DraggerFramework.Flags.getEngineFeatureModelPivotVisual)

local MAX_PARTS_TO_TRACK_BOUNDS_FOR = 1024

local BoundsChangedTracker = {}
BoundsChangedTracker.__index = BoundsChangedTracker

function BoundsChangedTracker.new(draggerContext, handler)
	if getEngineFeatureModelPivotVisual() then
		local self = setmetatable({
			_handler = handler,
			_installed = false,
			_partToEntry = {},
			_attachmentToEntry = {},
		}, BoundsChangedTracker)

		self._basisPivotChangedTrampoline = function()
			handler(self._basisObject)
		end

		return self
	else
		return setmetatable({
			_handler = handler,
			_installed = false,
			_partToEntry = {},
			_attachmentToEntry = {},
		}, BoundsChangedTracker)
	end
end

local function hookUpConnections(entry)
	entry.CFrameChangedConnection =
		entry.CFrameChangedSignal:Connect(entry.Trampoline)
	if entry.RootCFrameChangedSignal then
		entry.RootCFrameChangedConnection = entry.RootCFrameChangedSignal:Connect(entry.Trampoline)
	end
	entry.SizeChangedConnection =
		entry.SizeChangedSignal:Connect(entry.Trampoline)
end

local function disconnectConnections(entry)
	entry.CFrameChangedConnection:Disconnect()
	if entry.RootCFrameChangedConnection then
		entry.RootCFrameChangedConnection:Disconnect()
	end
	entry.SizeChangedConnection:Disconnect()
end

local function hookUpAttachmentConnections(entry)
	entry.CFrameChangedConnection =
		entry.CFrameChangedSignal:Connect(entry.Trampoline)
end

local function disconnectAttachmentConnections(entry)
	entry.CFrameChangedConnection:Disconnect()
end

function BoundsChangedTracker:_hookupBasisConnection()
	self._basisPivotChangedConnection = 
		self._basisPivotChangedSignal:Connect(self._basisPivotChangedTrampoline)
end

function BoundsChangedTracker:_disconnectBasisConnection()
	self._basisPivotChangedConnection:Disconnect()
end

function BoundsChangedTracker:install()
	assert(not self._installed)
	self._installed = true
	for _, entry in pairs(self._partToEntry) do
		hookUpConnections(entry)
	end
	for _, entry in pairs(self._attachmentToEntry) do
		hookUpAttachmentConnections(entry)
	end
	if getEngineFeatureModelPivotVisual() then
		if self._basisObject then
			self:_hookupBasisConnection()
		end
	end
end

function BoundsChangedTracker:uninstall()
	assert(self._installed)
	self._installed = false
	for _, entry in pairs(self._partToEntry) do
		disconnectConnections(entry)
	end
	for _, entry in pairs(self._attachmentToEntry) do
		disconnectAttachmentConnections(entry)
	end
	if getEngineFeatureModelPivotVisual() then
		if self._basisObject then
			self:_disconnectBasisConnection()
		end
	end
end

function BoundsChangedTracker:setSelection(selectionInfo)
	self:_setAttachments(selectionInfo:getAllAttachments())
	self:_setParts(selectionInfo:getObjectsToTransform())
	if getEngineFeatureModelPivotVisual() then
		self:_setBasisObject(selectionInfo:getBasisObject())
	end
end

-- Public access for the AlignmentTool, which borrows this class
function BoundsChangedTracker:setParts(parts)
	self:_setParts(parts)
end

function BoundsChangedTracker:_setBasisObject(object)
	if self._basisObject ~= object then
		if self._installed and self._basisObject then
			self:_disconnectBasisConnection()
		end
		self._basisObject = object
		if object then
			if object:IsA("BasePart") then
				self._basisPivotChangedSignal = object:GetPropertyChangedSignal("PivotOffset")
			elseif object:IsA("Model") then
				if object.PrimaryPart then
					self._basisPivotChangedSignal = object.PrimaryPart:GetPropertyChangedSignal("PivotOffset")
				else
					self._basisPivotChangedSignal = object:GetPropertyChangedSignal("WorldPivot")
				end
			else
				self._basisPivotChangedSignal = nil
			end
			if self._installed then
				self:_hookupBasisConnection()
			end
		end
	end
end

function BoundsChangedTracker:_setAttachments(attachments)
	local attachmentToNewEntry = {}
	for _, attachment in ipairs(attachments) do
		local entry = self._attachmentToEntry[attachment]
		self._attachmentToEntry[attachment] = nil
		if not entry then
			entry = {
				CFrameChangedSignal = attachment:GetPropertyChangedSignal("CFrame"),
				Trampoline = function()
					self._handler(attachment)
				end,
			}
			if self._installed then
				hookUpAttachmentConnections(entry)
			end
		end
		attachmentToNewEntry[attachment] = entry
	end
	if self._installed then
		for attachment, entry in pairs(self._attachmentToEntry) do
			if not attachmentToNewEntry[attachment] then
				disconnectAttachmentConnections(entry)
			end
		end
	end
	self._attachmentToEntry = attachmentToNewEntry
end

function BoundsChangedTracker:_setParts(parts)
	local newPartToEntry = {}
	for index, part in ipairs(parts) do
		if index > MAX_PARTS_TO_TRACK_BOUNDS_FOR then
			-- Too expensive to handle bounds changes for more than ~1000 parts,
			-- so only handle the first 1024 parts for large selections. This
			-- only effects the visible behavior of the tool in very uncommon
			-- scenarios. E.g., if you move an object, select a large multiple
			-- selection containing that object and at least 1024 other parts,
			-- and press undo.
			break
		end
		local entry = self._partToEntry[part]
		self._partToEntry[part] = nil
		if not entry then
			local rootPart = part:GetRootPart()
			local rootCFrameChangedSignal
			if rootPart and rootPart ~= part then
				rootCFrameChangedSignal = rootPart:GetPropertyChangedSignal("CFrame")
			end

			entry = {
				CFrameChangedSignal = part:GetPropertyChangedSignal("CFrame"),
				RootCFrameChangedSignal = rootCFrameChangedSignal,
				SizeChangedSignal = part:GetPropertyChangedSignal("Size"),
				Trampoline = function()
					self._handler(part)
				end,
			}

			if self._installed then
				hookUpConnections(entry)
			end
		end
		assert(not newPartToEntry[part]) -- Selection should not have duplicates
		newPartToEntry[part] = entry
	end
	if self._installed then
		for part, entry in pairs(self._partToEntry) do
			if not newPartToEntry[part] then
				disconnectConnections(entry)
			end
		end
	end
	self._partToEntry = newPartToEntry
end

return BoundsChangedTracker
