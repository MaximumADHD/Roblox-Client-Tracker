--!nonstrict
local CircularBuffer = require(script.Parent.Parent.Parent.CircularBuffer)
local Signal = require(script.Parent.Parent.Parent.Signal)

local Constants = require(script.Parent.Parent.Parent.Constants)
local MAX_DATASET_COUNT = tonumber(settings():GetFVariable("NewDevConsoleMaxGraphCount"))

local HEADER_NAMES = Constants.ServerScriptsFormatting.ChartHeaderNames

local SORT_COMPARATOR = {
	[HEADER_NAMES[1]] = function(a, b)
		return a.dataStats.dataSet:back().name < b.dataStats.dataSet:back().name
	end,
	[HEADER_NAMES[2]] = function(a, b)
		return a.dataStats.dataSet:back().data[1] < b.dataStats.dataSet:back().data[1]
	end,
	[HEADER_NAMES[3]] = function(a, b)
		return a.dataStats.dataSet:back().data[2] < b.dataStats.dataSet:back().data[2]
	end,
}

local minOfTable = require(script.Parent.Parent.Parent.Util.minOfTable)
local maxOfTable = require(script.Parent.Parent.Parent.Util.maxOfTable)
local getClientReplicator = require(script.Parent.Parent.Parent.Util.getClientReplicator)

local ServerScriptsData = {}
ServerScriptsData.__index = ServerScriptsData

function ServerScriptsData.new()
	local self = {}
	setmetatable(self, ServerScriptsData)

	self._serverScriptsUpdated = Signal.new()
	self._serverScriptsData = {}
	self._lastUpdate = 0
	self._sortedScriptsData = {}
	self._sortType = HEADER_NAMES[1] -- Name
	self._isRunning = false

	return self
end

function ServerScriptsData:setSortType(sortType)
	if SORT_COMPARATOR[sortType] then
		self._sortType = sortType
		-- do we need a mutex type thing here?
		table.sort(self._sortedScriptsData, SORT_COMPARATOR[self._sortType])
	else
		error(string.format("attempted to pass invalid sortType: %s", tostring(sortType)), 2)
	end
end

function ServerScriptsData:getSortType()
	return self._sortType
end

function ServerScriptsData:Signal()
	return self._serverScriptsUpdated
end

function ServerScriptsData:getCurrentData()
	return self._sortedScriptsData
end


function ServerScriptsData:updateScriptsData(scriptsStats)
	self._lastUpdate = os.time()
	for key, data in pairs(scriptsStats) do
		if not self._serverScriptsData[key] then
			local newBuffer = CircularBuffer.new(MAX_DATASET_COUNT)
			newBuffer:push_back({
				data = data,
				time = self._lastUpdate,
			})

			self._serverScriptsData[key] = {
				max = data,
				min = data,
				dataSet = newBuffer,
			}

			local newEntry = {
				name = key,
				dataStats = self._serverScriptsData[key],
			}

			table.insert(self._sortedScriptsData, newEntry)
		else
			local currMax = {}
			for i,v in pairs(self._serverScriptsData[key].max) do
				currMax[i] = v
			end

			local currMin = {}
			for i, v in pairs(self._serverScriptsData[key].min) do
				currMin[i] = v
			end

			local update = {
				data = data,
				time = self._lastUpdate
			}

			local overwrittenEntry = self._serverScriptsData[key].dataSet:push_back(update)

			if overwrittenEntry then
				for index, value in pairs(overwrittenEntry.data) do
					if currMax[index] == value then
						local iter = self._serverScriptsData[key].dataSet:iterator()
						local dat = iter:next()
						currMax[index] = currMin[index]

						while dat do
							currMax[index]	= dat.data[index] < currMax[index] and currMax[index] or dat.data[index]
							dat = iter:next()
						end
					end
				end
				for index, value in pairs(overwrittenEntry.data) do
					if currMin[index] == value then
						local iter = self._serverScriptsData[key].dataSet:iterator()
						local dat = iter:next()
						currMin[index] = currMax[index]

						while dat do
							currMin[index]	= currMin[index] < dat.data[index] and currMin[index] or dat.data[index]
							dat = iter:next()
						end
					end
				end
			end

			self._serverScriptsData[key].max = maxOfTable(currMax, data)
			self._serverScriptsData[key].min = minOfTable(currMin, data)
		end
	end
end

function ServerScriptsData:isRunning()
	return self._isRunning
end

function ServerScriptsData:start()
	local clientReplicator = getClientReplicator()
	if clientReplicator and not self._statsListenerConnection then
		self._statsListenerConnection = clientReplicator.StatsReceived:connect(function(stats)
			if stats then
				self._lastUpdate = os.time()

				local statsScripts = stats.Scripts
				if statsScripts then
					self:updateScriptsData(statsScripts)
				end

				self._serverScriptsUpdated:Fire(self._sortedScriptsData)
			end
		end)
		clientReplicator:RequestServerStats(true)
		self._isRunning = true
	end
end

function ServerScriptsData:stop()
	-- listeners are responsible for disconnecting themselves
	if self._statsListenerConnection then
		self._statsListenerConnection:Disconnect()
		self._statsListenerConnection = nil
	end
	self._isRunning = false
end

return ServerScriptsData