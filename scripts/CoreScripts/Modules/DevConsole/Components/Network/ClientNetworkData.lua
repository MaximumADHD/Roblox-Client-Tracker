local LogService = game:GetService("LogService")
local Signal = require(script.Parent.Parent.Parent.Signal)

local function newHttpEntry(num, method, status, time, requestType, url, response)
	return {
		Num = num,
		Method = method,
		Status = status,
		Time = time,
		RequestType = requestType,
		URL = url,
		Response = response
	}
end

local instance
local ClientNetworkData = {}
ClientNetworkData.__index = ClientNetworkData

function ClientNetworkData.new()
	local self = {}
	setmetatable(self, ClientNetworkData)

	self._httpEntryAdded = Signal.new()
	self._httpSummaryTable = {}
	self._httpSummaryCount = 0
	self._httpEntryList = {}
	self._httpEntryCount = 0
	return self
end

function ClientNetworkData:addHttpEntry(httpResult)
	-- append new entry to the back of the list
	self._httpEntryCount = self._httpEntryCount +1
	local entry = newHttpEntry(
						self._httpEntryCount,
						httpResult.Method,
						httpResult.Status,
						httpResult.Time,
						httpResult.RequestType,
						httpResult.URL,
						httpResult.Response
					)
	table.insert(self._httpEntryList, entry)

	-- update Summary Data
	local requestType = httpResult.RequestType
	if not self._httpSummaryTable[requestType] then
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
		self._httpSummaryTable[requestType].RequestCount = self._httpSummaryTable[requestType].RequestCount + 1
		if httpResult.Status >= 400 then
			self._httpSummaryTable[requestType].FailedCount = self._httpSummaryTable[requestType].FailedCount + 1
		end
		self._httpSummaryTable[requestType].AverageTime = (self._httpSummaryTable[requestType].AverageTime *
			self._httpSummaryTable[requestType].RequestCount + httpResult.Time -
			self._httpSummaryTable[requestType].AverageTime)/self._httpSummaryTable[requestType].RequestCount
		if httpResult.Time < self._httpSummaryTable[requestType].MinTime then
			self._httpSummaryTable[requestType].MinTime = httpResult.Time
		end
		if httpResult.Time > self._httpSummaryTable[requestType].MaxTime then
			self._httpSummaryTable[requestType].MaxTime = httpResult.Time
		end
	end
end

function ClientNetworkData:resetHttpEntryList()
	self._httpSummaryTable = {}
	self._httpEntryList = {}
	self._httpEntryCount = 0
	local history = LogService:GetHttpResultHistory()

	for _,httpResult in pairs(history) do
		self:addHttpEntry(httpResult)
	end
end

function ClientNetworkData:Signal()
	return self._httpEntryAdded
end

function ClientNetworkData:getCurrentData()
	return {
		summaryTable = self._httpSummaryTable,
		summaryCount = self._httpSummaryCount,
		entryList = self._httpEntryList,
		entryCount = self._httpEntryCount,
	}
end
function ClientNetworkData:start()
	if not self._httpResultConnection then

		self._httpResultConnection = LogService.HttpResultOut:connect(function (httpResult)
			self:addHttpEntry(httpResult)
			self._httpEntryAdded:Fire(self._httpSummaryTable, self._httpSummaryCount, self._httpEntryList, self._httpEntryCount)
		end)
		self:resetHttpEntryList()
	end
end

function ClientNetworkData:stop()
	-- listeners are responsible for disconnecting themselves
	if self._httpResultConnection then
		self._httpResultConnection:Disconnect()
		self._httpResultConnection = nil
	end
end

local function GetInstance()
	if not instance then
		instance = ClientNetworkData.new()
	end
	return instance
end

return GetInstance()