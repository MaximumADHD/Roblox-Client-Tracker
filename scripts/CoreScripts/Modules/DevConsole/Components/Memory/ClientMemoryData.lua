local Signal = require(script.Parent.Parent.Parent.Signal)
local SoundService = game:GetService("SoundService")

local StatsService = game:GetService("Stats")
local StatsUtils = require(script.Parent.Parent.Parent.Parent.Stats.StatsUtils)

local CircularBuffer = require(script.Parent.Parent.Parent.CircularBuffer)
local Constants = require(script.Parent.Parent.Parent.Constants)
local HEADER_NAMES = Constants.MemoryFormatting.ChartHeaderNames

local MAX_DATASET_COUNT = tonumber(settings():GetFVariable("NewDevConsoleMaxGraphCount"))
local FFlagEnableGranularMemoryTabStats = settings():GetFFlag("EnableGranularMemoryTabStats")

local CLIENT_POLLING_INTERVAL = 3 -- seconds

local SORT_COMPARATOR = {
	[HEADER_NAMES[1]] = function(a, b)
		return a.name < b.name
	end,
	[HEADER_NAMES[2]] = function(a, b)
		return a.dataStats.dataSet:back().data < b.dataStats.dataSet:back().data
	end,
}

local ClientMemoryData = {}
ClientMemoryData.__index = ClientMemoryData

function ClientMemoryData.new()
	local self = {}
	setmetatable(self, ClientMemoryData)

	self._pollingId = 0
	self._totalMemory = 0
	self._memoryData = {}
	self._memoryDataSorted = {}
	self._treeViewUpdatedSignal = Signal.new()
	self._totalMemoryUpdated = Signal.new()
	self._sortType = HEADER_NAMES[1]

	return self
end

local function GetMemoryPerformanceStatsItem()
	local performanceStats = StatsService and StatsService:FindFirstChild("PerformanceStats")
	if not performanceStats then
		return nil
	end
	local memoryStats = performanceStats:FindFirstChild(
		StatsUtils.StatNames[StatsUtils.StatType_Memory])
	return memoryStats
end

local function getAdditionalMemoryFunc(name)
	if FFlagEnableGranularMemoryTabStats then
		if name == "Sounds" then
			return function()
				-- GetSoundMemoryData returns a table with the assetId
				-- as the key and the memory allocated in MB as the value
				local soundMemData = SoundService:GetSoundMemoryData()
				local sortedSoundMem = {}

				for i,v in pairs(soundMemData) do
					table.insert(sortedSoundMem, {
						name = i,
						value = v,
					})
				end

				table.sort(sortedSoundMem, function(a, b)
					return a.value > b.value
				end)

				return sortedSoundMem
			end
		elseif name == "Texture" then
		elseif name == "Mesh" then
		elseif name == "CSG" then
		elseif name == "Animation" then
		end
		return nil
	end
end

function ClientMemoryData:recursiveUpdateEntry(entryList, sortedList, statsItem)
	local name = StatsUtils.GetMemoryAnalyzerStatName(statsItem.Name)
	local data = statsItem:GetValue()

	local children = statsItem:GetChildren()

	if not entryList[name] then
		local newBuffer = CircularBuffer.new(MAX_DATASET_COUNT)

		newBuffer:push_back({
			data = data,
			time = self._lastUpdate
		})

		entryList[name] = {
			min = data,
			max = data,
			dataSet = newBuffer,
			children = #children > 0 and {},
			sortedChildren = #children > 0 and {},
		}

		-- Mem Data is aggregated from allocations and deallocations and
		-- does not know about where the allocations come from. So, that data
		-- can't be par't of the tree we get from Stats
		-- We attach a callback for the specific entries that need to
		-- show addition memory to handle this.
		local memFunc = getAdditionalMemoryFunc(name)
		if memFunc then
			entryList[name]["additionalInfoFunc"] = memFunc
		end

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

	for _, childStatItem in ipairs(children) do
		self:recursiveUpdateEntry(
			entryList[name].children,
			entryList[name].sortedChildren,
			childStatItem
		)
	end
end

function ClientMemoryData:totalMemSignal()
	return self._totalMemoryUpdated
end

function ClientMemoryData:treeUpdatedSignal()
	return self._treeViewUpdatedSignal
end

function ClientMemoryData:getSortType()
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

function ClientMemoryData:setSortType(sortType)
	if SORT_COMPARATOR[sortType] then
		self._sortType = sortType
		-- do we need a mutex type thing here?
		recursiveSort(self._memoryDataSorted, SORT_COMPARATOR[self._sortType])
	else
		error(string.format("attempted to pass invalid sortType: %s", tostring(sortType)), 2)
	end
end

function ClientMemoryData:getMemoryData()
	return self._memoryDataSorted
end

function ClientMemoryData:start()
	spawn(function()
		self._pollingId = self._pollingId + 1
		local instanced_pollingId = self._pollingId
		while instanced_pollingId == self._pollingId do
			local statsItem = GetMemoryPerformanceStatsItem()
			if not statsItem then
				return nil
			end
			self._lastUpdate = os.time()
			self:recursiveUpdateEntry(self._memoryData, self._memoryDataSorted, statsItem)

			if self._totalMemory ~= statsItem:getValue() then
				self._totalMemory = statsItem:getValue()
				self._totalMemoryUpdated:Fire(self._totalMemory)
			end

			self._treeViewUpdatedSignal:Fire(self._memoryDataSorted)

			wait(CLIENT_POLLING_INTERVAL)
		end
	end)
end

function ClientMemoryData:stop()
	-- listeners are responsible for disconnecting themselves
	self._pollingId = self._pollingId + 1
end

return ClientMemoryData