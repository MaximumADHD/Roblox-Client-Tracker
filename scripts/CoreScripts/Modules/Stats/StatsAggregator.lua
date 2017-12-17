--[[
  Filename: StatsAggregator.lua
  Written by: dbanks
  Description: Gather and store stats on regular heartbeat.
--]]

--[[ Services ]]--
local CoreGuiService = game:GetService('CoreGui')

--[[ Modules ]]--
local StatsUtils = require(CoreGuiService.RobloxGui.Modules.Stats.StatsUtils)

--[[ Classes ]]--
local StatsAggregatorClass = {}
StatsAggregatorClass.__index = StatsAggregatorClass

function StatsAggregatorClass.new(statType, numSamples, pauseBetweenSamples) 
  local self = {}
  setmetatable(self, StatsAggregatorClass)
  
  self._statType = statType
  self._numSamples = numSamples
  self._pauseBetweenSamples = pauseBetweenSamples
  
  self._statName = StatsUtils.StatNames[self._statType]
  self._statMaxName = StatsUtils.StatMaxNames[self._statType]
  
  -- init our circular buffer.
  self._samples = {}
  for i = 0, numSamples-1, 1 do 
    self._samples[i] = 0
  end
  self._oldestIndex = 0
  
  self._listeners = {}
  
  -- FIXME(dbanks)
  -- Just want to be real clear this is a key, not an array index.
  self._nextListenerId = 1001
  
  return self
end

function StatsAggregatorClass:AddListener(callbackFunction)
  local id = self._nextListenerId
  self._nextListenerId = self._nextListenerId+1
  self._listeners[id] = callbackFunction
  return id
end

function StatsAggregatorClass:RemoveListener(listenerId)
  self._listeners[listenerId] = nil
end

function StatsAggregatorClass:_notifyAllListeners()
  for listenerId, listenerCallback in pairs(self._listeners) do
    listenerCallback()
  end
end

function StatsAggregatorClass:StartListening()
  -- On a regular heartbeat, wake up and read the latest
  -- value into circular buffer.
  -- Don't bother if we're already listening.
  if (self._listening == true) then 
    return
  end
  
  spawn(function()
      self._listening = true
      while(self._listening) do          
          local statValue = self:_getStatValue()
          self:_storeStatValue(statValue)
          self:_notifyAllListeners()
          wait(self._pauseBetweenSamples)
      end
    end)
end

function StatsAggregatorClass:StopListening()
  self._listening = false
end

function StatsAggregatorClass:GetValues()
  -- Get the past N values, from oldest to newest.
  local retval = {}
  local actualIndex
  for i = 0, self._numSamples-1, 1 do
    actualIndex = (self._oldestIndex + i) % self._numSamples
    retval[i+1] = self._samples[actualIndex]
  end
  return retval
end

function StatsAggregatorClass:GetAverage()
  -- Get average of past N values.
  local retval = 0.0
  for i = 0, self._numSamples-1, 1 do
    retval = retval + self._samples[i]
  end
  return retval / self._numSamples  
end

function StatsAggregatorClass:GetLatestValue()
  -- Get latest value.
  local index = (self._oldestIndex + self._numSamples -1) % self._numSamples
  return self._samples[index]
end

function StatsAggregatorClass:_storeStatValue(value)
  -- Store this as the latest value in our circular buffer.
  self._samples[self._oldestIndex] = value
  self._oldestIndex = (self._oldestIndex + 1) % self._numSamples
end

function StatsAggregatorClass:_getStatValue()
  -- Look up and return the statistic we care about.
  local statsService = game:GetService("Stats")
  if statsService == nil then
    return 0
  end
  
  local performanceStats = statsService:FindFirstChild("PerformanceStats")
  if performanceStats == nil then
    return 0
  end  
  
  local itemStats = performanceStats:FindFirstChild(self._statName)
  if itemStats == nil then
    return 0
  end
  
  return itemStats:GetValue()
end

function StatsAggregatorClass:GetTarget()
  -- Look up and return the statistic we care about.
  local statsService = game:GetService("Stats")
  if statsService == nil then
    return 0
  end
  
  local performanceStats = statsService:FindFirstChild("PerformanceStats")
  if performanceStats == nil then
    return 0
  end  
  
  local itemStats = performanceStats:FindFirstChild(self._statMaxName)
  if itemStats == nil then
    return 0
  end
  
  return itemStats:GetValue()
end

return StatsAggregatorClass
