--[[
	ClientMemoryData
		- a non-rendering version of ClientMemoryAnalyzer
--]]
local Signal = require(script.Parent.Parent.Parent.Signal)

local StatsService = game:GetService("Stats")
local CommonUtils = require(script.Parent.Parent.Parent.Parent.Common.CommonUtil)
local StatsUtils = require(script.Parent.Parent.Parent.Parent.Stats.StatsUtils)
local TreeViewItem = require(script.Parent.Parent.Parent.Parent.Stats.TreeViewItem)

local instance
local clientMemoryPollingInterval = 5 -- seconds

local ClientMemoryData = {}
ClientMemoryData.__index = ClientMemoryData

function ClientMemoryData.new()
	local self = {}
	setmetatable(self, ClientMemoryData)

	self._pollingId = 0
	self._rootTreeViewItem = TreeViewItem.new("Memory", nil)
	self._totalClientMemory = 0
	self._treeViewUpdatedSignal = Signal.new()
	self._totalClientMemoryUpdated = Signal.new()

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

local function FillInMemoryUsageTreeRecursive(treeViewItem, statsItem)
	if not treeViewItem then return end

	local statId = statsItem.Name
	local statLabel = StatsUtils.GetMemoryAnalyzerStatName(statId)
	local statValue = statsItem:GetValue()

	treeViewItem:setLabelAndValue(statLabel, statValue)
	local rawChildren = statsItem:GetChildren()

	local sortedChildren = CommonUtils.SortByName(rawChildren)

	for _, childStatItem in ipairs(sortedChildren) do
		local childStatId = childStatItem.Name
		local childTreeItem = treeViewItem:getOrMakeChildById(childStatId)
		FillInMemoryUsageTreeRecursive(childTreeItem, childStatItem)
	end
end

function ClientMemoryData:totalMemSignal()
	return self._totalClientMemoryUpdated
end

function ClientMemoryData:treeUpdatedSignal()
	return self._treeViewUpdatedSignal
end

function ClientMemoryData:SetSearchTerm(searchTerm)
	self._searchTerm = searchTerm
end

function ClientMemoryData:start()
	spawn(function()
		self._pollingId = self._pollingId + 1
		local instanced_pollingId = self._pollingId
		while instanced_pollingId == self._pollingId do
			if self._rootTreeViewItem ~= nil then
				local statsItem = GetMemoryPerformanceStatsItem()
				if not statsItem then
					return nil
				end

				FillInMemoryUsageTreeRecursive(self._rootTreeViewItem, statsItem)

				if self._totalClientMemory ~= self._rootTreeViewItem:getValue() then
					self._totalClientMemory = self._rootTreeViewItem:getValue()
					self._totalClientMemoryUpdated:Fire(self._totalClientMemory)
				end

				self._treeViewUpdatedSignal:Fire(self._rootTreeViewItem)
			end
			wait(clientMemoryPollingInterval)
		end
	end)
end

function ClientMemoryData:GetRootTreeViewItem()
	return self._rootTreeViewItem
end

function ClientMemoryData:stop()
	-- listeners are responsible for disconnecting themselves
	self._pollingId = self._pollingId + 1
end

local function GetInstance()
	if not instance then
		instance = ClientMemoryData.new()
	end
	return instance
end

return GetInstance()
