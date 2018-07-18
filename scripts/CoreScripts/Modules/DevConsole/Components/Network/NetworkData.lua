local LogService = game:GetService("LogService")
local CircularBuffer = require(script.Parent.Parent.Parent.CircularBuffer)
local Signal = require(script.Parent.Parent.Parent.Signal)

local Constants = require(script.Parent.Parent.Parent.Constants)
local HEADER_NAMES = Constants.NetworkFormatting.ChartHeaderNames

local MAX_NUM_ENTRIES = tonumber(settings():GetFVariable("NewDevConsoleMaxHttpCount"))

local SORT_COMPARATOR = {
	[HEADER_NAMES[1]] = function(a, b)
		return a.Num < b.Num
	end,
	[HEADER_NAMES[2]] = function(a, b)
		return a.Method < b.Method
	end,
	[HEADER_NAMES[3]] = function(a, b)
		return a.Status < b.Status
	end,
	[HEADER_NAMES[4]] = function(a, b)
		return a.Time < b.Time
	end,
	[HEADER_NAMES[5]] = function(a, b)
		return a.RequestType < b.RequestType
	end,
	[HEADER_NAMES[6]] = function(a, b)
		return a.Url < b.Url
	end,
}

local function newHttpEntry(num, method, status, time, requestType, url, response)
	return {
		Num = num,
		Method = method,
		Status = status,
		Time = time,
		RequestType = requestType,
		Url = url,
		Response = response
	}
end

local NetworkData = {}
NetworkData.__index = NetworkData

function NetworkData.new( isClient )
	local self = {}
	setmetatable(self, NetworkData)

	self._isClient = isClient
	self._httpResultSignal = isClient and LogService.HttpResultOut or LogService.ServerHttpResultOut

	self._httpEntryAdded = Signal.new()
	self._httpSummaryTable = {}
	self._httpSummaryCount = 0
	self._httpEntryBuffer = CircularBuffer.new(MAX_NUM_ENTRIES)

	self._httpLifeTimeEntryCount = 0
	self._sortType = HEADER_NAMES[1] -- Num
	return self
end

function NetworkData:addHttpEntry(httpResult)
	-- append new entry to the back of the list
	self._httpLifeTimeEntryCount = self._httpLifeTimeEntryCount + 1
	local entry = newHttpEntry(
		self._httpLifeTimeEntryCount,
		httpResult.Method,
		httpResult.Status,
		httpResult.Time,
		httpResult.RequestType,
		httpResult.URL,
		httpResult.Response
	)

	self._httpEntryBuffer:push_back(entry)

	-- update Summary Data
	local requestType = httpResult.RequestType
	local summaryTable = self._httpSummaryTable[requestType]

	if not summaryTable then
		self._httpSummaryCount = self._httpSummaryCount + 1

		self._httpSummaryTable[requestType] = {
			RequestType = requestType,
			RequestCount = 1,
			FailedCount = 0,
			AverageTime = httpResult.Time,
			MinTime = httpResult.Time,
			MaxTime = httpResult.Time,
		}

		if httpResult.Status >= 400 then
			self._httpSummaryTable[httpResult.RequestType].FailedCount = 1
		end
	else
		summaryTable.RequestCount = summaryTable.RequestCount + 1
		if httpResult.Status >= 400 then
			summaryTable.FailedCount = summaryTable.FailedCount + 1
		end

		summaryTable.AverageTime = ((summaryTable.AverageTime * summaryTable.RequestCount) +
			httpResult.Time - summaryTable.AverageTime) / summaryTable.RequestCount

		if httpResult.Time < summaryTable.MinTime then
			summaryTable.MinTime = httpResult.Time
		end
		if httpResult.Time > summaryTable.MaxTime then
			summaryTable.MaxTime = httpResult.Time
		end
	end
end

function NetworkData:setSortType(sortType)
	if SORT_COMPARATOR[sortType] then
		self._sortType = sortType
		self._httpEntryAdded:Fire(
			self._httpSummaryTable,
			self._httpSummaryCount,
			self:getSortedEntries()
		)
	else
		error(string.format("attempted to pass invalid sortType: %s", tostring(sortType)), 2)
	end
end

function NetworkData:getSortType()
	return self._sortType
end

function NetworkData:resetHttpEntryList()
	self._httpSummaryTable = {}
	self._httpEntryBuffer:reset()
	self._httpLifeTimeEntryCount = 0
	if self._isClient then
		local history = LogService:GetHttpResultHistory()

		if history then
			for _,httpResult in pairs(history) do
				self:addHttpEntry(httpResult)
			end
		end
	end
end

function NetworkData:Signal()
	return self._httpEntryAdded
end

function NetworkData:getSortedEntries()
	local iter = self._httpEntryBuffer:iterator()
	local data = iter:next()
	local entryList = {}
	local count = 1

	while data do
		entryList[count] = data
		count = count + 1
		data = iter:next()
	end

	table.sort(entryList, SORT_COMPARATOR[self._sortType])

	return entryList
end

function NetworkData:getCurrentData()
	return {
		summaryTable = self._httpSummaryTable,
		summaryCount = self._httpSummaryCount,
		entryList = self:getSortedEntries(),
	}
end

function NetworkData:start()
	if not self._httpResultConnection then
		if self._additionHttpSetup then
			self._additionHttpSetup()
		end

		self._httpResultConnection = self._httpResultSignal:connect(function (httpResult)
			self:addHttpEntry(httpResult)
			self._httpEntryAdded:Fire(
				self._httpSummaryTable,
				self._httpSummaryCount,
				self:getSortedEntries()
			)
		end)

		self:resetHttpEntryList()

		if not self._isClient then
			self._onHttpResultApprovedConnection = LogService.OnHttpResultApproved:connect( function (isApproved)
				LogService:RequestHttpResultApproved()
				if isApproved then
					self._onHttpResultApprovedConnection:Disconnect()
					self._onHttpResultApprovedConnection = nil
				end
			end)
			LogService:RequestServerHttpResult()
		end
	end
end

function NetworkData:stop()
	if self._httpResultConnection then
		self._httpResultConnection:Disconnect()
		self._httpResultConnection = nil
	end
end

return NetworkData