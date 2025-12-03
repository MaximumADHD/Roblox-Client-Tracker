--!nonstrict
local Signal = require(script.Parent.Parent.Parent.Signal)
local SoundService = game:GetService("SoundService")
local TextService = game:GetService("TextService")
local MeshContentProvider = game:GetService("MeshContentProvider")
local KeyframeSequenceProvider = game:GetService("KeyframeSequenceProvider")

local StatsService = game:GetService("Stats")
local StatsUtils = require(script.Parent.Parent.Parent.Parent.Stats.StatsUtils)

local CircularBuffer = require(script.Parent.Parent.Parent.CircularBuffer)
local Constants = require(script.Parent.Parent.Parent.Constants)
local HEADER_NAMES = Constants.MemoryFormatting.ChartHeaderNames

local MAX_DATASET_COUNT = tonumber(settings():GetFVariable("NewDevConsoleMaxGraphCount"))

local CLIENT_POLLING_INTERVAL = 3 -- seconds
local BYTE_IN_MB = 1048576

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
	self._isRunning = false

	self._doGranularMemUpdate = {}
	self._granularMemTable = {}

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

-- the fetch memoryData functions are used for the Granular memory data.
local function fetchSoundMemoryData()
	local soundMemData = SoundService:GetSoundMemoryData()
	local sortedSoundMem = {}

	for i,v in pairs(soundMemData) do
		table.insert(sortedSoundMem, {
			name = i,
			value = v,
		})
	end

	-- entries are ordered by insert time
	-- we want it sorted by memory size
	-- we could also have it sorted in SoundService to maybe speed this up
	table.sort(sortedSoundMem, function(a, b)
		return a.value > b.value
	end)

	return sortedSoundMem
end

local function fetchGraphicsTextureMemoryData()
	local textureData = StatsService:GetPaginatedMemoryByTexture(Enum.TextureQueryType.NonHumanoid, 0, 100)
	local textureData2 = StatsService:GetPaginatedMemoryByTexture(Enum.TextureQueryType.NonHumanoidOrphaned, 0, 100)
	local sortedTextureData = {}

	local function aggregateData(retData, data)
		for _,v in ipairs(data.Results) do
			local mem = v.MemoryInBytes / BYTE_IN_MB
			table.insert(retData, {
				name = v.TextureId,
				value = mem,
			})
		end
	end

	aggregateData(sortedTextureData, textureData)
	aggregateData(sortedTextureData, textureData2)

	table.sort(sortedTextureData, function(a, b)
		return a.value > b.value
	end)
	return sortedTextureData
end

local function fetchGraphicsTextureCharacterMemoryData()
	local textureData = StatsService:GetPaginatedMemoryByTexture(Enum.TextureQueryType.Humanoid, 0, 100)
	local textureData2 = StatsService:GetPaginatedMemoryByTexture(Enum.TextureQueryType.HumanoidOrphaned, 0, 100)
	local sortedTextureData = {}

	local function aggregateData(retData, data)
		for _,v in ipairs(data.Results) do
			local mem = v.MemoryInBytes / BYTE_IN_MB
			local compTextures = {}

			-- we need to parse out the asset id's from this large string
			-- the first portion involves only including the Texture portions and not color
			local txtComp = v.TextureId
			local tSeries = {}
			for a,b in pairs(string.split(txtComp, " ")) do
				local firstChar = string.sub(b, 1, 2)
				if firstChar == "T[" then
					table.insert(tSeries, b)
				end
			end

			-- next we split out the mesh from the string.
			-- we can have multiple references to same ID so
			-- so we filter them out here
			local assetString = ""
			local dedupe = {}
			for a, b in pairs(tSeries) do
				local gotoAssetStr = string.split(b, ".mesh:")[2]
				-- set to 12 to get pass the ":'" in "rbxassertid:" and "http://""
				local matchIndex = string.find(gotoAssetStr, ":", 12)

				-- we dont want to include the ":" we found
				if matchIndex ~= nil then
					matchIndex = matchIndex - 1
				end
				assetString = string.sub(gotoAssetStr, 1, matchIndex)
				dedupe[assetString] = true
			end

			-- using the finalized strings, we construct the list of assets used for the
			-- composite texture
			for name,_ in pairs(dedupe) do
				table.insert(compTextures, {
					name = name
				})
			end

			table.sort(compTextures, function(a, b)
				return a.name < b.name
			end)

			table.insert(retData, {
				name = "Composite Texture",
				value = mem,
				moreInfo = compTextures,
			})
		end
	end
	aggregateData(sortedTextureData, textureData)
	aggregateData(sortedTextureData, textureData2)

	return sortedTextureData
end

local function fetchGraphicsMeshPartsMemoryData()
	local meshData = MeshContentProvider:getContentMemoryData()
	local sortedMeshData = {}

	for name, bytes in pairs(meshData) do
		local mem = bytes / BYTE_IN_MB
		table.insert(sortedMeshData, {
			name = name,
			value = mem,
		})
	end

	table.sort(sortedMeshData, function(a, b)
		return a.value > b.value
	end)

	return sortedMeshData
end

local function fetchFuncAnimation()
	local memstats = KeyframeSequenceProvider:GetMemStats()
	local sortedAnimationData = {}

	for name, bytes in pairs(memstats) do
		local mem = bytes / BYTE_IN_MB
		table.insert(sortedAnimationData, {
			name = name,
			value = mem,
		})
	end

	table.sort(sortedAnimationData, function(a, b)
		return a.value > b.value
	end)

	return sortedAnimationData
end

local function fetchFontMemoryData()
	local fontMemData = TextService:GetFontMemoryData()
	local sortedFontMem = {}

	for i, v in pairs(fontMemData) do
		table.insert(sortedFontMem, {
			name = i,
			value = v / BYTE_IN_MB,
		})
	end

	table.sort(sortedFontMem, function(a, b)
		return a.value > b.value
	end)

	return sortedFontMem
end

function ClientMemoryData:updateCachedData(categoryName, retrieveDataCallback)
	if self._doGranularMemUpdate[categoryName] then
		self._doGranularMemUpdate[categoryName] = false
		self._granularMemTable[categoryName] = retrieveDataCallback()
	end
end

function ClientMemoryData:getAdditionalMemoryFunc(name)
	local fetchFunc = nil
	if name == "Sounds" then
		fetchFunc = fetchSoundMemoryData

	elseif name == "GraphicsTexture" then
		fetchFunc = fetchGraphicsTextureMemoryData

	elseif name == "GraphicsTextureCharacter" then
		fetchFunc = fetchGraphicsTextureCharacterMemoryData

	elseif name == "GraphicsMeshParts" then
		fetchFunc = fetchGraphicsMeshPartsMemoryData
	elseif name == "csgDictionary" then
		-- this case requires more work to properly reflect the desired changes
	elseif name == "Animation" then
		fetchFunc = fetchFuncAnimation
	elseif name == "gui/FontData" and game:GetEngineFeature("TextServiceGetFontMemoryData") then
		fetchFunc = fetchFontMemoryData
	end

	if fetchFunc then
		return function()
			self:updateCachedData(name, fetchFunc)
			return self._granularMemTable[name]
		end
	end

	return nil
end

function ClientMemoryData:recursiveUpdateEntry(entryList, sortedList, statsItem)
	local name = StatsUtils.GetMemoryAnalyzerStatName(statsItem.DisplayName)
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
		local memFunc = self:getAdditionalMemoryFunc(name)
		if memFunc then
			entryList[name]["additionalInfoFunc"] = memFunc
			self._doGranularMemUpdate[name] = true
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

		-- if there is any change from the previous entry, flag
		-- this category for additionaInfo Update
		if entryList[name]["additionalInfoFunc"] then
			local last = entryList[name].dataSet:back();
			if last.data ~= update.data then
				self._doGranularMemUpdate[name] = true
			end
		end

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

	local entry = entryList[name]

	local availableChildren = {}

	for _, childStatItem in ipairs(children) do
		availableChildren[childStatItem.DisplayName] = true

		self:recursiveUpdateEntry(
			entry.children,
			entry.sortedChildren,
			childStatItem
		)
	end

	-- clean-up children that are no longer present
	if entry.children then
		for label, _ in pairs(entry.children) do
			if availableChildren[label] == nil then
				entry.children[label] = nil

				-- find and remove from sorted array
				for i, value in ipairs(entry.sortedChildren) do
					if label == value.name then
						table.remove(entry.sortedChildren, i)
						break
					end
				end
			end
		end
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

function ClientMemoryData:isRunning()
	return self._isRunning
end

function ClientMemoryData:start()
	spawn(function()
		self._pollingId = self._pollingId + 1
		local instanced_pollingId = self._pollingId
		self._isRunning = true
		while instanced_pollingId == self._pollingId do
			local statsItem = GetMemoryPerformanceStatsItem()
			if not statsItem then
				return
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
		self._isRunning = false
	end)
end

function ClientMemoryData:stop()
	-- listeners are responsible for disconnecting themselves
	self._pollingId = self._pollingId + 1
end

return ClientMemoryData
