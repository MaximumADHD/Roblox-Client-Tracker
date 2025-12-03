--!nonstrict
local Signal = require(script.Parent.Parent.Parent.Signal)
local CircularBuffer = require(script.Parent.Parent.Parent.CircularBuffer)
local Constants = require(script.Parent.Parent.Parent.Constants)
local HEADER_NAMES = Constants.MemoryFormatting.ChartHeaderNames

local MAX_DATASET_COUNT = tonumber(settings():GetFVariable("NewDevConsoleMaxGraphCount"))
local BYTES_PER_MB = 1048576.0

local SORT_COMPARATOR = {
	[HEADER_NAMES[1]] = function(a, b)
		return a.name < b.name
	end,
	[HEADER_NAMES[2]] = function(a, b)
		return a.dataStats.dataSet:back().data < b.dataStats.dataSet:back().data
	end,
}

local getClientReplicator = require(script.Parent.Parent.Parent.Util.getClientReplicator)

local ServerMemoryData = {}
ServerMemoryData.__index = ServerMemoryData

function ServerMemoryData.new()
	local self = {}

	setmetatable(self, ServerMemoryData)
	self._init = false
	self._isRunning = false
	self._totalMemory = 0

	self._memoryData = {}
	self._memoryDataSorted = {}

	self._coreTreeData = {}
	self._coreTreeDataSorted = {}

	self._placeTreeData = {}
	self._placeTreeDataSorted = {}

	self._placeScriptTreeData = {}
	self._placeScriptTreeDataSorted = {}

	self._coreScriptTreeData = {}
	self._coreScriptTreeDataSorted = {}

	self._treeViewUpdated = Signal.new()
	self._sortType = HEADER_NAMES[1]

	return self
end

function ServerMemoryData:updateEntry(entryList, sortedList, name, data)
	if not entryList[name] then
		local newBuffer = CircularBuffer.new(MAX_DATASET_COUNT)

		newBuffer:push_back({
			data = data,
			time = self._lastUpdate
		})

		entryList[name] = {
			min = data,
			max = data,
			dataSet = newBuffer
		}

		local newEntry = {
			name = name,
			dataStats = entryList[name]
		}

		table.insert(sortedList, newEntry)
	else
		local currMax = entryList[name].max
		local currMin = entryList[name].min

		local update = {
			data = data,
			time = self._lastUpdate
		}

		local overwrittenEntry = entryList[name].dataSet:push_back(update)

		if overwrittenEntry then
			local iter = entryList[name].dataSet:iterator()
			local dat = iter:next()
			if currMax == overwrittenEntry.data then
				currMax = currMin
				while dat do
					currMax	= dat.data < currMax and currMax or dat.data
					dat = iter:next()
				end
			end
			if currMin == overwrittenEntry.data then
				currMin = currMax
				while dat do
					currMin	= currMin < dat.data and currMin or dat.data
					dat = iter:next()
				end
			end
		end

		entryList[name].max = currMax < data and data or currMax
		entryList[name].min = currMin < data and currMin or data
	end
end

function ServerMemoryData:updateEntryList(entryList, sortedList, statsItems)
	-- All values are in bytes.
	-- Convert to MB ASAP.
	local totalMB = 0
	for label, numBytes in pairs(statsItems) do
		local value = numBytes / BYTES_PER_MB
		totalMB = totalMB + value

		self:updateEntry(entryList, sortedList, label, value)
	end

	-- clean-up children that are no longer present
	for label, _ in pairs(entryList) do
		if statsItems[label] == nil then
			entryList[label] = nil

			-- find and remove from sorted array
			for i, value in ipairs(sortedList) do
				if label == value.name then
					table.remove(sortedList, i)
					break
				end
			end
		end
	end

	return totalMB
end

function ServerMemoryData:updateWithTreeStats(stats)
	local update = {
		PlaceMemory = 0,
		CoreMemory = 0,
		UntrackedMemory = 0,
		PlaceScriptMemory = 0,
		CoreScriptMemory = 0,
	}

	for key, value in pairs(stats) do
		if key == "totalServerMemory" then
			self._totalMemory = value / BYTES_PER_MB
		elseif key == "developerTags" then
			update.PlaceMemory = self:updateEntryList(self._placeTreeData, self._placeTreeDataSorted, value)
		elseif key == "internalCategories" then
			update.CoreMemory = self:updateEntryList(self._coreTreeData, self._coreTreeDataSorted, value)
		elseif key == "placeScriptMemoryCategories" then
			update.PlaceScriptMemory = self:updateEntryList(self._placeScriptTreeData, self._placeScriptTreeDataSorted, value)
		elseif key == "coreScriptMemoryCategories" then
			update.CoreScriptMemory = self:updateEntryList(self._coreScriptTreeData, self._coreScriptTreeDataSorted, value)
		end
	end

	update.UntrackedMemory = self._totalMemory - update.PlaceMemory - update.CoreMemory

	if self._init then
		for name, value in pairs(update) do
			self:updateEntry(
				self._memoryData["Memory"].children,
				self._memoryData["Memory"].sortedChildren,
				name,
				value
			)
		end

		self:updateEntry(self._memoryData, self._memoryDataSorted, "Memory", self._totalMemory)
	else
		local memChildren = {}
		local memChildrenSorted = {}

		for name, value in pairs(update) do
			self:updateEntry(memChildren, memChildrenSorted, name, value)
		end

		self:updateEntry(self._memoryData, self._memoryDataSorted, "Memory", self._totalMemory)

		memChildren["PlaceMemory"].children = self._placeTreeData
		memChildren["PlaceMemory"].sortedChildren = self._placeTreeDataSorted

		memChildren["CoreMemory"].children = self._coreTreeData
		memChildren["CoreMemory"].sortedChildren = self._coreTreeDataSorted

		memChildren["PlaceScriptMemory"].children = self._placeScriptTreeData
		memChildren["PlaceScriptMemory"].sortedChildren = self._placeScriptTreeDataSorted

		memChildren["CoreScriptMemory"].children = self._coreScriptTreeData
		memChildren["CoreScriptMemory"].sortedChildren = self._coreScriptTreeDataSorted

		self._memoryData["Memory"].children = memChildren
		self._memoryData["Memory"].sortedChildren = memChildrenSorted

		self._init = true
	end

end

function ServerMemoryData:totalMemSignal()
	return self._totalMemoryUpdated
end

function ServerMemoryData:treeUpdatedSignal()
	return self._treeViewUpdated
end

function ServerMemoryData:getSortType()
	return self._sortType
end

local function recursiveSort(memoryDataSort, comparator)
	table.sort(memoryDataSort, comparator)
	for _, entry in pairs(memoryDataSort) do
		if entry.dataStats.sortedChildren then
			recursiveSort(entry.dataStats.sortedChildren, comparator)
		end
	end
end

function ServerMemoryData:setSortType(sortType)
	if SORT_COMPARATOR[sortType] then
		self._sortType = sortType
		recursiveSort(self._memoryDataSorted, SORT_COMPARATOR[self._sortType])
	else
		error(string.format("attempted to pass invalid sortType: %s", tostring(sortType)), 2)
	end
end

function ServerMemoryData:getMemoryData()
	return self._memoryDataSorted
end

function ServerMemoryData:isRunning()
	return self._isRunning
end

function ServerMemoryData:start()
	local clientReplicator = getClientReplicator()
	if clientReplicator and not self._statsListenerConnection then
		self._statsListenerConnection = clientReplicator.StatsReceived:connect(function(stats)
			if not stats.ServerMemoryTree then
				return
			end
			self._lastUpdate = os.time()

			local serverMemoryTree = stats.ServerMemoryTree
			if serverMemoryTree then
				self:updateWithTreeStats(serverMemoryTree)
				self._treeViewUpdated:Fire(self._memoryDataSorted)
			end

		end)
		clientReplicator:RequestServerStats(true)
		self._isRunning = true
	end
end

function ServerMemoryData:stop()
	-- listeners are responsible for disconnecting themselves
	local clientReplicator = getClientReplicator()
	if clientReplicator then
		clientReplicator:RequestServerStats(false)
		self._statsListenerConnection:Disconnect()
		self._isRunning = false
	end
end

return ServerMemoryData
