--[[
  Filename: BarGraph.lua
  Written by: dbanks
  Description: A simple bar graph.
--]]

--[[ Services ]]--
local CoreGuiService = game:GetService('CoreGui')

--[[ Globals ]]--
local BarZIndex = 1
local LineZIndex = 2


--[[ Modules ]]--
local StatsUtils = require(CoreGuiService.RobloxGui.Modules.Stats.StatsUtils)

--[[ Classes ]]--
local BarGraphClass = {}
BarGraphClass.__index = BarGraphClass

function BarGraphClass.new(showExtras) 
  local self = {}
  setmetatable(self, BarGraphClass)

  self._barFrame = Instance.new("Frame")
  self._barFrame.Name = "PS_BarFrame"
  self._barFrame.BackgroundTransparency = 1.0

  self._lineFrame = Instance.new("Frame")
  self._lineFrame.Name = "PS_LineFrame"
  self._lineFrame.BackgroundTransparency = 1.0

  self._showExtras = showExtras

  -- All of the values we are showing in the bar graph, in order.
  self._values = {}
  self._bars = {}
  -- Average of these values.
  self._average = 0
  -- Suggested max for these values.
  self._target = 0

  if self._showExtras then
    self:_addGraphTarget()
    self:_addGraphAverage()
  end

  return self
end

function BarGraphClass:SetZIndex(zIndex)
  self._barFrame.ZIndex = zIndex
  self._lineFrame.ZIndex = zIndex + 1
  if self._showExtras then
    self._targetLine.ZIndex = self._lineFrame.ZIndex
    self._averageLine.ZIndex = self._lineFrame.ZIndex
  end
end

function BarGraphClass:PlaceInParent(parent, size, position) 
  self._barFrame.Position = position
  self._barFrame.Size = size
  self._barFrame.Parent = parent
  self._lineFrame.Position = position
  self._lineFrame.Size = size
  self._lineFrame.Parent = parent
end

function BarGraphClass:SetAxisMax(axisMax) 
  self._axisMax = axisMax
end

function BarGraphClass:SetValues(values) 
  self._values = values
end

function BarGraphClass:SetAverage(average) 
  self._average = average
end

function BarGraphClass:SetTarget(target) 
  -- Set the target value, move corresponding graph line 
  -- accordingly (if present).
  self._target = target
  self:_moveGraphTarget()
end

function BarGraphClass:_updateBarCount(newBarCount)
  -- Make sure we have exactly this number of bars in _bars.
  -- Reuse old ones if possible.
  -- If we have more old ones than we need, delete them.
  local newBars = {}
  local currentBarCount = table.getn(self._bars)
  
  for i = 1, currentBarCount, 1 do
    if (i <= currentBarCount) then
      table.insert(newBars, self._bars[i])
    else
      self._bars[i].Destroy()
    end
  end
  
  for i = currentBarCount + 1, newBarCount, 1 do 
    table.insert(newBars, self:_makeNthBar(i))
  end
  
  self._bars = newBars
end
  

function BarGraphClass:Render()    
  local numValues = table.getn(self._values)
  
  self:_updateBarCount(numValues)
  
  for i, value in ipairs(self._values) do
    self:_updateBar(i, value, numValues)
  end  

  if self._showExtras then
    self:_moveGraphAverage()
  end
end


function BarGraphClass:_addGraphTarget() 
  -- Add the line used to mark target value.
  local line = Instance.new("ImageLabel")
  line.Name = "TargetLine"
  line.Size = UDim2.new(1, 0, 0, StatsUtils.GraphTargetLineInnerThickness)

  line.Image = 'rbxasset://textures/ui/PerformanceStats/TargetLine.png'
  line.BackgroundTransparency = 1
  line.Parent = self._lineFrame
  line.ZIndex = self._lineFrame.ZIndex 
  line.BorderSizePixel = 0

  line.Changed:connect(function()
      self:_updateTargetLineImageSize()
    end)

  self._targetLine = line
  self:_updateTargetLineImageSize()
end

function BarGraphClass:_updateTargetLineImageSize()
  self._targetLine.ImageRectSize = self._targetLine.AbsoluteSize
end

function BarGraphClass:_addGraphAverage() 
  -- Add the line used to mark average of current values.
  local line = Instance.new("Frame")
  line.Name = "AverageLine"
  line.Size = UDim2.new(1, 0, 0, StatsUtils.GraphAverageLineInnerThickness)

  line.Parent = self._lineFrame
  line.ZIndex = self._lineFrame.ZIndex

  StatsUtils.StyleAverageLine(line)

  self._averageLine = line
end

function BarGraphClass:_moveGraphTarget() 
  -- Update position of graph target line, if present.
  if self._targetLine == nil then 
    return
  end
  self._targetLine.Position = UDim2.new(0, 
    0, (
      self._axisMax - self._target)/self._axisMax,
    -StatsUtils.GraphTargetLineInnerThickness/2)
end

function BarGraphClass:_moveGraphAverage()  
  -- Update position of graph average line, if present.
  if self._averageLine == nil then 
    return
  end

  -- Never let it go above axis max.
  local adjustedAverage = math.min(self._average, self._axisMax)

  self._averageLine.Position = UDim2.new(0, 
    0, 
    (self._axisMax - adjustedAverage)/self._axisMax,
    -StatsUtils.GraphAverageLineTotalThickness/2)
end

function BarGraphClass:_makeNthBar(index)
  -- Make the nth bar in the bar graph.
  local realIndex = index-1
  local bar = Instance.new("Frame")
  bar.Name = string.format("Bar_%d", realIndex)
  bar.Parent = self._barFrame  
  bar.ZIndex = self._barFrame.ZIndex
  bar.BorderSizePixel = 0
  return bar
end

function BarGraphClass:_updateBar(i, value, numValues) 
  -- Update nth bar in graph: size, position, and color.
  local bar = self._bars[i]
  local realIndex = i-1

  -- Don't let it go off the chart.
  local clampedValue = math.max(0, math.min(value, self._axisMax))

  bar.Position = UDim2.new(realIndex/numValues, 0,
    (self._axisMax - clampedValue)/self._axisMax, 0)
  bar.Size = UDim2.new(1/numValues, 0, 
    clampedValue/self._axisMax, 0)

  bar.BackgroundColor3 = StatsUtils.GetColorForValue(value, self._target)
end

return BarGraphClass