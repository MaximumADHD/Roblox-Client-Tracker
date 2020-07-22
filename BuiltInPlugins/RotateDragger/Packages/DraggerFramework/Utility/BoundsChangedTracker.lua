
--[[
	BoundsChangedTracker object

	Watches a set of parts for cframe and size changes.
]]

local DraggerFramework = script.Parent.Parent

local getFFlagUpdateHandleRoot = require(DraggerFramework.Flags.getFFlagUpdateHandleRoot)

local MAX_PARTS_TO_TRACK_BOUNDS_FOR = 1024

local BoundsChangedTracker = {}
BoundsChangedTracker.__index = BoundsChangedTracker

function BoundsChangedTracker.new(handler)
	return setmetatable({
		_handler = handler,
		_installed = false,
		_partToEntry = {},
		_attachmentToEntry = {},
	}, BoundsChangedTracker)
end

local function hookUpConnections(entry)
	entry.CFrameChangedConnection =
		entry.CFrameChangedSignal:Connect(entry.Trampoline)
	entry.SizeChangedConnection =
		entry.SizeChangedSignal:Connect(entry.Trampoline)
end

local function disconnectConnections(entry)
	entry.CFrameChangedConnection:Disconnect()
	entry.SizeChangedConnection:Disconnect()
end

local function hookUpAttachmentConnections(entry)
	entry.CFrameChangedConnection =
		entry.CFrameChangedSignal:Connect(entry.Trampoline)
end

local function disconnectAttachmentConnections(entry)
	entry.CFrameChangedConnection:Disconnect()
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
end

function BoundsChangedTracker:setAttachments(attachments)
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

function BoundsChangedTracker:setParts(parts)
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
			if getFFlagUpdateHandleRoot() then
				entry = {
					CFrameChangedSignal = (part:GetRootPart() or part):GetPropertyChangedSignal("CFrame"),
					SizeChangedSignal = part:GetPropertyChangedSignal("Size"),
					Trampoline = function()
						self._handler(part)
					end,
				}
			else
				entry = {
					CFrameChangedSignal = part:GetPropertyChangedSignal("CFrame"),
					SizeChangedSignal = part:GetPropertyChangedSignal("Size"),
					Trampoline = function()
						self._handler(part)
					end,
				}
			end
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
