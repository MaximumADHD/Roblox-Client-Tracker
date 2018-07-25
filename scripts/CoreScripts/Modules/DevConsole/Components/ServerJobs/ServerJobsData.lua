local CircularBuffer = require(script.Parent.Parent.Parent.CircularBuffer)
local Signal = require(script.Parent.Parent.Parent.Signal)

local Constants = require(script.Parent.Parent.Parent.Constants)
local HEADER_NAMES = Constants.ServerJobsFormatting.ChartHeaderNames

local MAX_DATASET_COUNT = tonumber(settings():GetFVariable("NewDevConsoleMaxGraphCount"))

local SORT_COMPARATOR = {
	[HEADER_NAMES[1]] = function(a, b) -- "Name"
		return a.name < b.name
	end,
	[HEADER_NAMES[2]] = function(a, b) -- "DutyCycle(%)"
		return a.dataStats.dataSet:back().data[1] < b.dataStats.dataSet:back().data[1]
	end,
	[HEADER_NAMES[3]] = function(a, b) -- "Steps Per Sec (/s)"
		return a.dataStats.dataSet:back().data[2] < b.dataStats.dataSet:back().data[2]
	end,
	[HEADER_NAMES[4]] = function(a, b) -- "Step Time (ms)"
		return a.dataStats.dataSet:back().data[3] < b.dataStats.dataSet:back().data[3]
	end,
}

local minOfTable = require(script.Parent.Parent.Parent.Util.minOfTable)
local maxOfTable = require(script.Parent.Parent.Parent.Util.maxOfTable)
local getClientReplicator = require(script.Parent.Parent.Parent.Util.getClientReplicator)

local ServerJobsData = {}
ServerJobsData.__index = ServerJobsData

function ServerJobsData.new()
	local self = {}
	setmetatable(self, ServerJobsData)

	self._serverJobsUpdated = Signal.new()
	self._serverJobsData = {}
	self._sortedJobsData = {}
	self._sortType = HEADER_NAMES[1] -- Name
	self._lastUpdate = 0

	return self
end

function ServerJobsData:setSortType(sortType)
	if SORT_COMPARATOR[sortType] then
		self._sortType = sortType
		-- do we need a mutex type thing here?
		table.sort(self._sortedJobsData, SORT_COMPARATOR[self._sortType])
	else
		error(string.format("attempted to pass invalid sortType: %s", tostring(sortType)), 2)
	end
end

function ServerJobsData:getSortType()
	return self._sortType
end

function ServerJobsData:Signal()
	return self._serverJobsUpdated
end

function ServerJobsData:getCurrentData()
	return self._sortedJobsData
end

function ServerJobsData:updateServerJobsData(updatedJobs)
	self._lastUpdate = os.time()
	for key, data in pairs(updatedJobs) do
		if not self._serverJobsData[key] then
			local newBuffer = CircularBuffer.new(MAX_DATASET_COUNT)
			newBuffer:push_back({
				data = data,
				time = self._lastUpdate,
			})

			self._serverJobsData[key] = {
				max = data,
				min = data,
				dataSet = newBuffer,
			}

			local newEntry = {
				name = key,
				dataStats = self._serverJobsData[key],
			}

			table.insert(self._sortedJobsData, newEntry)
		else
			local currMax = self._serverJobsData[key].max
			local currMin = self._serverJobsData[key].min

			local update = {
				data = data,
				time = self._lastUpdate
			}

			local overwrittenEntry = self._serverJobsData[key].dataSet:push_back(update)

			if overwrittenEntry then
				local iter = self._serverJobsData[key].dataSet:iterator()
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

			self._serverJobsData[key].max = maxOfTable(currMax, data)
			self._serverJobsData[key].min = minOfTable(currMin, data)
		end
	end
end

function ServerJobsData:start()
	local clientReplicator = getClientReplicator()
	if clientReplicator and not self._statsListenerConnection then
		self._statsListenerConnection = clientReplicator.StatsReceived:connect(function(stats)
			local serverJobsList = stats.Jobs

			if serverJobsList then
				self:updateServerJobsData(serverJobsList)
				self._serverJobsUpdated:Fire(self._sortedJobsData)
			end
		end)
		clientReplicator:RequestServerStats(true)
	end
end

function ServerJobsData:stop()
	if self._statsListenerConnection then
		self._statsListenerConnection:Disconnect()
		self._statsListenerConnection = nil
	end
end

return ServerJobsData