--[[
	ServerMemoryData
	a non-rendering version of ServerMemoryAnalyzer
--]]
local NetworkClient = game:GetService("NetworkClient")
local TreeViewItem = require(script.Parent.Parent.Parent.Parent.Stats.TreeViewItem)
local Signal = require(script.Parent.Parent.Parent.Signal)

local instance
local ServerMemoryData = {}
ServerMemoryData.__index = ServerMemoryData

function ServerMemoryData.new()
	local self = {}
	setmetatable(self, ServerMemoryData)

	self._polling = false
	self._rootTreeViewItem = TreeViewItem.new("Memory", nil)
		-- make sure the childen are in the order I want them in.
	self._coreTreeViewItem = self._rootTreeViewItem:getOrMakeChildById("CoreMemory")
	self._placeTreeViewItem = self._rootTreeViewItem:getOrMakeChildById("PlaceMemory")
	self._untrackedTreeViewItem = self._rootTreeViewItem:getOrMakeChildById("UntrackedMemory")

	self._treeViewUpdatedSignal = Signal.new()
	self._totalServerMemoryUpdated = Signal.new()
	self._searchTerm = ""

	return self
end

-- labelToBytesUsedMap maps string to "num bytes used".
-- for each item in the map:
-- Make sure there's a child in the tree for that string.
-- Update that child to have latest value.
-- Add value to a sum total.
-- Return the sum total.
local BYTES_PER_MB = 1048576.0
local function __ReadAndSumValues(treeViewItem, labelToBytesUsedMap)
	local totalMB = 0;

	for label, numBytes in pairs(labelToBytesUsedMap) do
		-- Convert to MB.
		local numMB = numBytes / BYTES_PER_MB
		totalMB = totalMB + numMB
		local childTreeViewItem = treeViewItem:getOrMakeChildById(label)
		childTreeViewItem:setLabelAndValue(label, numMB)
	end
	return totalMB
end

function ServerMemoryData:updateWithTreeStats(stats)
	if not self._rootTreeViewItem then
		self._rootTreeViewItem = TreeViewItem.new("root", nil)
		-- make sure the childen are in the order I want them in.
		self._coreTreeViewItem = self._rootTreeViewItem:getOrMakeChildById("CoreMemory")
		self._placeTreeViewItem = self._rootTreeViewItem:getOrMakeChildById("PlaceMemory")
		self._untrackedTreeViewItem = self._rootTreeViewItem:getOrMakeChildById("UntrackedMemory")
	end

	-- All values are in bytes.
	-- Convert to MB ASAP.
	local totalServerMemory = 0
	for key, value in pairs(stats) do
		if key == "totalServerMemory" then
			totalServerMemory = value / BYTES_PER_MB

		elseif key == "developerTags" then
			local sum = __ReadAndSumValues(self._placeTreeViewItem, value)
			self._placeTreeViewItem:setLabelAndValue("PlaceMemory", sum)
		elseif key == "internalCategories" then
			local sum = __ReadAndSumValues(self._coreTreeViewItem, value)
			self._coreTreeViewItem:setLabelAndValue("CoreMemory", sum)
		end
	end

	self._rootTreeViewItem:setLabelAndValue("Memory", totalServerMemory)

	-- Update untracked.
	local untrackedMemory = totalServerMemory -
		(self._coreTreeViewItem:getValue() + self._placeTreeViewItem:getValue())
	self._untrackedTreeViewItem:setLabelAndValue("UntrackedMemory", untrackedMemory)

end

function ServerMemoryData:GetTreeView()
	return self._rootTreeViewItem
end
function ServerMemoryData:treeUpdatedSignal()
	return self._treeViewUpdatedSignal
end

function ServerMemoryData:SetSearchTerm(searchTerm)
	self._searchTerm = searchTerm
end

function ServerMemoryData:start()
	local clientReplicator = NetworkClient:GetChildren()[1]

	if clientReplicator and not self._statsListenerConnection then
		self._statsListenerConnection = clientReplicator.StatsReceived:connect(function(stats)
			if not stats.ServerMemoryTree then
				return
			end
			local serverMemoryTree = stats.ServerMemoryTree

			self:updateWithTreeStats(serverMemoryTree)

			self._treeViewUpdatedSignal:Fire(self._rootTreeViewItem)

		end)
		clientReplicator:RequestServerStats(true)
	end
end

function ServerMemoryData:stop()
	-- listeners are responsible for disconnecting themselves
	local clientReplicator = NetworkClient:GetChildren()[1]
	if clientReplicator then
		clientReplicator:RequestServerStats(false)
		self._statsListenerConnection:Disconnect()
	end
end

local function GetInstance()
	if not instance then
		instance = ServerMemoryData.new()
	end
	return instance
end

return GetInstance()
