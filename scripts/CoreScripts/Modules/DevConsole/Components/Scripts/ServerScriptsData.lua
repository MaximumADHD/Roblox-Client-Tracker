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
			local currMax = self._serverScriptsData[key].max
			local currMin = self._serverScriptsData[key].min

			local update = {
				data = data,
				time = self._lastUpdate
			}

			local overwrittenEntry = self._serverScriptsData[key].dataSet:push_back(update)

			if overwrittenEntry then
				local iter = self._serverScriptsData[key].dataSet:iterator()
				local dat = iter:next()
				if currMax == overwrittenEntry.data then
					currMax = currMin
					while dat do
						currMax = maxOfTable(dat, currMax)
						dat = iter:next()
					end
				end
				if currMin == overwrittenEntry.data then
					currMin = currMax
					while dat do
						currMin = minOfTable(dat, currMin)
						dat = iter:next()
					end
				end
			end

			self._serverScriptsData[key].max = maxOfTable(currMax, data)
			self._serverScriptsData[key].min = minOfTable(currMin, data)
		end
	end
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
	end
end

function ServerScriptsData:stop()
	-- listeners are responsible for disconnecting themselves
	if self._statsListenerConnection then
		self._statsListenerConnection:Disconnect()
		self._statsListenerConnection = nil
	end
end

return ServerScriptsData