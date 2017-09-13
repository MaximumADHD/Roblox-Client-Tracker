--[[
  Filename: ClientMemoryAnalyzer.lua
  Written by: dbanks
  Description: Widget to display client memory usage.
  
  FIXME(dbanks)
  2017/08/21
  Remove once FFlag::ImproveClientAndServerMemoryTabLayout is on for good.
--]]

--[[ Services ]]--
local StatsService = game:GetService("Stats")
local CoreGuiService = game:GetService('CoreGui')

--[[ Modules ]]--
local BaseMemoryAnalyzerClass = require(CoreGuiService.RobloxGui.Modules.Stats.DEPRECATED_BaseMemoryAnalyzer)
local CommonUtils = require(CoreGuiService.RobloxGui.Modules.Common.CommonUtil)
local StatsUtils = require(CoreGuiService.RobloxGui.Modules.Stats.StatsUtils)

--[[ Helper functions ]]--
function __GetMemoryPerformanceStatsItem()
  local performanceStats = StatsService and StatsService:FindFirstChild("PerformanceStats")
  if performanceStats == nil then
    return nil
  end  

  local memoryStats = performanceStats:FindFirstChild(
      StatsUtils.StatNames[StatsUtils.StatType_Memory])          
  return memoryStats
end

function __GetMemoryTypeNameValueTripletsRecursive(statsItem, prefix)
  local retVal = {}

  local statType = statsItem.Name
  local statName = StatsUtils.GetMemoryAnalyzerStatName(statType)
  local statValue = statsItem:GetValue()

  table.insert(retVal, {statType, prefix .. statName, statValue})

  local rawChildren = statsItem:GetChildren()
  -- sort children by name.
  local sortedChildren = CommonUtils.SortByName(rawChildren)
  
  for i, childItem in ipairs(sortedChildren) do
    local childTriplets = __GetMemoryTypeNameValueTripletsRecursive(childItem,
        prefix .. BaseMemoryAnalyzerClass.Indent)
    retVal = CommonUtils.TableConcat(retVal, childTriplets)
  end

  return retVal
end

-- Read out the entire breakdown of memory data from performance
-- stats, in the form of an ordered array of {memory stat type, value}
-- pairs.
function __GetMemoryTypeNameValueTriplets()
  local retVal = {}
          
  local memoryStats = __GetMemoryPerformanceStatsItem()
  if memoryStats == nil then
    return retVal
  end
  
  retVal = __GetMemoryTypeNameValueTripletsRecursive(memoryStats, "")

  return retVal
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
    _spawnedLoopScheduled = true
    
    spawn(function()
            while(self._shouldListenForUpdates) do 
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
      
-- Override: where do we get type/name/value triplets?
function ClientMemoryAnalyzerClass:getMemoryTypeNameValueTriplets()
    -- We pull them out of the stats service.
    return __GetMemoryTypeNameValueTriplets()
end

return ClientMemoryAnalyzerClass
