--[[
  Filename: ClientMemoryAnalyzer.lua
  Written by: dbanks
  Description: Widget to display client memory usage.
--]]

--[[ Services ]]--
local StatsService = game:GetService("Stats")
local CoreGuiService = game:GetService('CoreGui')

--[[ Modules ]]--
local BaseMemoryAnalyzerClass = require(CoreGuiService.RobloxGui.Modules.Stats.BaseMemoryAnalyzer)
local CommonUtils = require(CoreGuiService.RobloxGui.Modules.Common.CommonUtil)
local StatsUtils = require(CoreGuiService.RobloxGui.Modules.Stats.StatsUtils)
local TreeViewItem = require(CoreGuiService.RobloxGui.Modules.Stats.TreeViewItem)

--[[ Helper functions ]]--
local function __GetMemoryPerformanceStatsItem()
  local performanceStats = StatsService and StatsService:FindFirstChild("PerformanceStats")
  if performanceStats == nil then
    return nil
  end  

  local memoryStats = performanceStats:FindFirstChild(
      StatsUtils.StatNames[StatsUtils.StatType_Memory])          
  return memoryStats
end

local function __FillInMemoryUsageTreeRecursive(treeViewItem, statsItem)
  local statId = statsItem.Name
  local statLabel = StatsUtils.GetMemoryAnalyzerStatName(statId)
  local statValue = statsItem:GetValue()

  treeViewItem:setLabelAndValue(statLabel, statValue)
  
  local rawChildren = statsItem:GetChildren()
  -- sort children by name.
  local sortedChildren = CommonUtils.SortByName(rawChildren)
  
  for i, childStatItem in ipairs(sortedChildren) do
    local childStatId = childStatItem.Name
    local childTreeItem = treeViewItem:getOrMakeChildById(childStatId)
    __FillInMemoryUsageTreeRecursive(childTreeItem, childStatItem)
  end
end

--[[ Classes ]]--

--////////////////////////////////////
--
-- ClientMemoryAnalyzerClass
-- The whole table customized for Client memory.
--
--////////////////////////////////////
local ClientMemoryAnalyzerClass = {}
-- Derive from BaseMemoryAnalyzerClass
setmetatable(ClientMemoryAnalyzerClass, BaseMemoryAnalyzerClass)
ClientMemoryAnalyzerClass.__index = ClientMemoryAnalyzerClass

function ClientMemoryAnalyzerClass.new(parentFrame) 
    local self = BaseMemoryAnalyzerClass.new(parentFrame)
    setmetatable(self, ClientMemoryAnalyzerClass)

    self._rootTreeViewItem = nil
    
    -- am I currently listening for updates?
    self._shouldListenForUpdates = false
    
    -- management of loop that does the listening.
    -- Note: it is not enough to just track _shouldListenForUpdates.
    -- If we called
    --    startListeningForUpdates
    --    stopListeningForUpdates
    --    startListeningForUpdates
    -- in quick succession, then in the second startListeningForUpdates, 
    -- _shouldListenForUpdates is false, but we still have a loop spawned from 
    -- the earlier call to startListeningForUpdates.
    self._spawnedLoopScheduled = false
    
    return self
end

-- Start a thread that wakes up every n seconds
-- and updates contents of stats widget.
function ClientMemoryAnalyzerClass:startListeningForUpdates()
    self._shouldListenForUpdates = true
    
    -- If we have already scheduled a loop to start, we're done.
    if (self._spawnedLoopScheduled) then 
        return
    end
    self._spawnedLoopScheduled = true
    
    spawn(function()
            while(self._shouldListenForUpdates) do 
                self:refreshMemoryUsageTree()
                self:renderUpdates()
                wait(1)
            end
            -- Note that scheduled loop is now dead.
            self._spawnedLoopScheduled = false
        end)
end

-- Stop the thread that does the updates.
function ClientMemoryAnalyzerClass:stopListeningForUpdates()        
  self._shouldListenForUpdates = false
end

-- Generate the memory usage tree.
function ClientMemoryAnalyzerClass:refreshMemoryUsageTree()
    if (self._rootTreeViewItem == nil) then 
        self._rootTreeViewItem = TreeViewItem.new("root", nil)
    end
    
    local statsItem = __GetMemoryPerformanceStatsItem()
    if statsItem == nil then
        return nil
    end
    
    __FillInMemoryUsageTreeRecursive(self._rootTreeViewItem, statsItem)
end

function ClientMemoryAnalyzerClass:getMemoryUsageTree()
    return self._rootTreeViewItem
end

return ClientMemoryAnalyzerClass
