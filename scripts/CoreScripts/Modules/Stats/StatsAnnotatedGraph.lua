--[[
  Filename: StatsAnnotatedGraph.lua
  Written by: dbanks
  Description: A graph plus extra annotations like axis markings, 
      target lines, etc.
--]]

--[[ Services ]]--
local CoreGuiService = game:GetService('CoreGui')

--[[ Globals ]]--
local Margin = 10
local LabelXWidth = 30

--[[ Modules ]]--
local StatsUtils = require(CoreGuiService.RobloxGui.Modules.Stats.StatsUtils)
local BarGraphClass = require(CoreGuiService.RobloxGui.Modules.Stats.BarGraph)

--[[ Classes ]]--
local StatsAnnotatedGraphClass = {}
StatsAnnotatedGraphClass.__index = StatsAnnotatedGraphClass

function StatsAnnotatedGraphClass.new(statType, isMaximized) 
  local self = {}
  setmetatable(self, StatsAnnotatedGraphClass)

  self._statType = statType
  self._statMaxName = StatsUtils.StatMaxNames[statType]
  self._isMaximized = isMaximized

  self._values = {}
  
  -- Average value of all bars in the graph.
  self._average = 0
  -- Suggested max value for the stat being measured.
  self._target = 0
  -- Max value we display on the y-axis.  Values higher than this are truncated.
  self._axisMax = 0
  
  self._frame = Instance.new("Frame")
  self._frame.Name = "PS_AnnotatedGraph"
  self._frame.BackgroundTransparency = 1.0
    self._frame.ZIndex = StatsUtils.GraphZIndex

  self._topLabel = Instance.new("TextLabel")
  self._topLabel.Name = "PS_TopAxisLabel"
  self._topLabel.Parent = self._frame
  self._topLabel.TextXAlignment = Enum.TextXAlignment.Left
  self._topLabel.TextYAlignment = Enum.TextYAlignment.Top
  self._topLabel.FontSize = StatsUtils.PanelGraphFontSize
  
  self._bottomLabel = Instance.new("TextLabel")
  self._bottomLabel.Name = "PS_BottomAxisLabel"
  self._bottomLabel.Parent = self._frame
  self._bottomLabel.TextXAlignment = Enum.TextXAlignment.Left
  self._bottomLabel.TextYAlignment = Enum.TextYAlignment.Bottom
  self._bottomLabel.FontSize = StatsUtils.PanelGraphFontSize

  local showExtras = isMaximized
  self._graph = BarGraphClass.new(showExtras)

  StatsUtils.StyleTextWidget(self._topLabel)
  StatsUtils.StyleTextWidget(self._bottomLabel)

  self:_layoutElements()

  return self
end

function StatsAnnotatedGraphClass:SetZIndex(zIndex)
  self._frame.ZIndex = zIndex
  self._topLabel.ZIndex = zIndex
  self._bottomLabel.ZIndex = zIndex
  self._graph:SetZIndex(zIndex)
end

function StatsAnnotatedGraphClass:_layoutElements()
  local labelWidth
  if (self._isMaximized) then
    labelWidth = LabelXWidth
    
    self._topLabel.Visible = true
    self._bottomLabel.Visible = true
  else
    labelWidth = 0
    
    self._topLabel.Visible = false
    self._bottomLabel.Visible = false
  end
  
  local GraphFramePosition = UDim2.new(0, Margin, 0, Margin)
  local GraphFrameSize = UDim2.new(1, -(2 * Margin + labelWidth), 1, -2 * Margin)

  local TopLabelFramePosition = UDim2.new(1, -(Margin + labelWidth), 0, Margin)
  local TopLabelFrameSize = UDim2.new(0, labelWidth, 0.333, -2 * Margin)
  local BottomLabelFramePosition = UDim2.new(1, -(Margin + labelWidth), 0.666, Margin)
  local BottomLabelFrameSize = UDim2.new(0, labelWidth, 0.333, -2 * Margin)
  
  self._topLabel.Size = TopLabelFrameSize
  self._topLabel.Position = TopLabelFramePosition
  self._bottomLabel.Size = BottomLabelFrameSize
  self._bottomLabel.Position = BottomLabelFramePosition
  
  self._graph:PlaceInParent(self._frame, GraphFrameSize, GraphFramePosition)
end

function StatsAnnotatedGraphClass:PlaceInParent(parent, size, position) 
  self._frame.Position = position
  self._frame.Size = size
  self._frame.Parent = parent
end

function StatsAnnotatedGraphClass:_getTarget()
  -- Get the current target value for the graphed stat.
  if self._performanceStats == nil then
    return 0
  end  
  
  local maxItemStats = self._performanceStats:FindFirstChild(self._statMaxName)
  if maxItemStats == nil then
    return 0
  end
  
  return maxItemStats:GetValue()
end

function StatsAnnotatedGraphClass:_render()  
  self._graph:SetAxisMax(self._axisMax)
  self._graph:SetValues(self._values)

  self._graph:SetAverage(self._average)
  self._graph:SetTarget(self._target)
  self._graph:Render()
  
  self._topLabel.Text = string.format("%.2f", self._axisMax)
  self._bottomLabel.Text = string.format("%.2f", 0,.0)
end

function StatsAnnotatedGraphClass:_calculateAxisMax()
  -- Calculate an optimal max axis label for this graph, given this 'target' value.
  -- We want target to be roughly in the middle.
  -- Say, roughly twice the target.
  local max = self._target * 2
  local orderOfMagnitude = self:_recursiveGetOrderOfMagnitude(1.0, max)
  local div = math.floor(0.5 + max/orderOfMagnitude)
  self._axisMax = div * orderOfMagnitude
end

function StatsAnnotatedGraphClass:SetStatsAggregator(aggregator)
  if (self._aggregator) then
    self._aggregator:RemoveListener(self._listenerId)
    self._listenerId = nil
    self._aggregator = nil
  end
  
  self._aggregator = aggregator
  
  self:_refreshVisibility()
end

function StatsAnnotatedGraphClass:_stopListening()
  if (self._aggregator == nil) then
    return
  end
  
  if (self._listenerId == nil) then 
    return
  end
  
  self._aggregator:RemoveListener(self._listenerId)
  self._listenerId = nil  
end

function StatsAnnotatedGraphClass:_startListening()
  if (self._aggregator == nil) then
    return
  end
  
  if (self._listenerId ~= nil) then 
    return
  end
  
  self._listenerId = self._aggregator:AddListener(function()
      self:_updateValuesAndRender()
  end)  
end

function StatsAnnotatedGraphClass:_shouldBeVisible()
  if StatsUtils:PerformanceStatsShouldBeVisible() then 
    return self._frame.Visible
  else
    return false
  end
end

function StatsAnnotatedGraphClass:SetVisible(visible)
  self._frame.Visible = visible
  self:_refreshVisibility()
end

function StatsAnnotatedGraphClass:_refreshVisibility()
  if self:_shouldBeVisible() then
    self:_startListening()
    self:_updateValuesAndRender()
  else
    self:_stopListening()
  end
end

function StatsAnnotatedGraphClass:OnPerformanceStatsShouldBeVisibleChanged()
  self:_refreshVisibility()
end

function StatsAnnotatedGraphClass:_recursiveGetOrderOfMagnitude(estimate, target)
  if (estimate > target) then 
    return self:_recursiveGetOrderOfMagnitude(estimate/10.0, target)
  end
  
  if (estimate * 10 >= target) then 
    return estimate
  end
  
  return self:_recursiveGetOrderOfMagnitude(estimate*10.0, target)
end

function StatsAnnotatedGraphClass:_updateValuesAndRender() 
  self._values = {}
  self._average = 0
  self._target = 0
  if self._aggregator ~= nil then 
    self._values = self._aggregator:GetValues()
    self._average = self._aggregator:GetAverage()
    self._target = self._aggregator:GetTarget()
  end
  
  self:_calculateAxisMax()
  self:_render()
end

return StatsAnnotatedGraphClass
