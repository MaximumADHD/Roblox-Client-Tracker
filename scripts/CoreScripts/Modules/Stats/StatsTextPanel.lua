--[[
  Filename: StatsTextPanel.lua
  Written by: dbanks
  Description: Panel that shows a "Legend" for a graph, including:
      - name of stat being displayed.
      - current value of stat.
      - target (suggested max) value of stat.
      - average value of stat over the whole graph. 
      particular stat.
--]]

--[[ Services ]]--
local CoreGuiService = game:GetService('CoreGui')

--[[ Modules ]]--
local StatsUtils = require(CoreGuiService.RobloxGui.Modules.Stats.StatsUtils)
local StatsAggregatorClass = require(CoreGuiService.RobloxGui.Modules.Stats.StatsAggregator)
local DecoratedValueLabelClass = require(CoreGuiService.RobloxGui.Modules.Stats.DecoratedValueLabel)

--[[ Globals ]]--
-- Positions
local top = StatsUtils.TextPanelTopMarginPix
local TitlePosition = UDim2.new(0, 
  StatsUtils.TextPanelLeftMarginPix, 
  0, 
  top)
top = top + StatsUtils.TextPanelTitleHeightY
local CurrentValuePosition = UDim2.new(0,
  StatsUtils.TextPanelLeftMarginPix, 
  0, 
  top)
top = top + StatsUtils.TextPanelLegendItemHeightY
local TargetValuePosition = UDim2.new(0,
  StatsUtils.TextPanelLeftMarginPix, 
  0, 
  top)
top = top + StatsUtils.TextPanelLegendItemHeightY
local AverageValuePosition = UDim2.new(0,
  StatsUtils.TextPanelLeftMarginPix, 
  0, 
  top)

-- Sizes
local TitleSize = UDim2.new(1, 
  -StatsUtils.TextPanelLeftMarginPix * 2, 
  0, 
  StatsUtils.TextPanelTitleHeightY)
local LegendItemValueSize = UDim2.new(1, 
  -StatsUtils.TextPanelLeftMarginPix * 2,
  0,
  StatsUtils.TextPanelLegendItemHeightY)

--[[ Classes ]]--
local StatsTextPanelClass = {}
StatsTextPanelClass.__index = StatsTextPanelClass

function StatsTextPanelClass.new(statType) 
  local self = {}
  setmetatable(self, StatsTextPanelClass)

  self._statType = statType
  
  self._frame = Instance.new("Frame")
  self._frame.BackgroundTransparency = 1.0
  self._frame.ZIndex = StatsUtils.TextPanelZIndex
  
  self._titleLabel = Instance.new("TextLabel")

  StatsUtils.StyleTextWidget(self._titleLabel)
  
  self._titleLabel.FontSize = StatsUtils.PanelTitleFontSize
  self._titleLabel.Text = self:_getTitle()
  
  self._titleLabel.Parent = self._frame
  self._titleLabel.Size = TitleSize
  self._titleLabel.Position = TitlePosition
  self._titleLabel.TextXAlignment = Enum.TextXAlignment.Left
  self._titleLabel.TextYAlignment = Enum.TextYAlignment.Top
  
  -- Icon + text widgets to show the current value of this stat.
  self:_addCurrentValueWidget()
  -- Icon + text widgets to show the suggested max value of this stat.
  self:_addTargetValueWidget()
  -- Icon + text widgets to show the average value of this stat.
  self:_addAverageValueWidget()
  
  return self
end

function StatsTextPanelClass:_getTarget()
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


function StatsTextPanelClass:_addCurrentValueWidget()
  self._currentValueWidget = DecoratedValueLabelClass.new(self._statType, 
    "Current")
    
  self._currentValueWidget:PlaceInParent(self._frame, 
    LegendItemValueSize, 
    CurrentValuePosition)

  local decorationFrame = self._currentValueWidget:GetDecorationFrame()    
  local decoration = Instance.new("ImageLabel")
  decoration.Position = UDim2.new(0.5, -StatsUtils.OvalKeySize/2, 
    0.5, -StatsUtils.OvalKeySize/2)
  decoration.Size = UDim2.new(0, StatsUtils.OvalKeySize,
    0, StatsUtils.OvalKeySize)  
  
  decoration.Parent = decorationFrame
  decoration.BackgroundTransparency = 1
	decoration.Image = 'rbxasset://textures/ui/PerformanceStats/OvalKey.png'
  decoration.BorderSizePixel = 0
  self._currentValueDecoration = decoration
end

function StatsTextPanelClass:_addTargetValueWidget()
  self._targetValueWidget = DecoratedValueLabelClass.new(self._statType, 
    "Target")
    
  self._targetValueWidget:PlaceInParent(self._frame, 
    LegendItemValueSize, 
    TargetValuePosition)

  local decorationFrame = self._targetValueWidget:GetDecorationFrame()    
  local decoration = Instance.new("ImageLabel")
  decoration.Position = UDim2.new(0.5, -StatsUtils.TargetKeyWidth/2, 
    0.5, -StatsUtils.TargetKeyHeight/2)
  decoration.Size = UDim2.new(0, StatsUtils.TargetKeyWidth,
    0, StatsUtils.TargetKeyHeight)  
  
  decoration.Parent = decorationFrame
  decoration.BackgroundTransparency = 1
	decoration.Image = 'rbxasset://textures/ui/PerformanceStats/TargetKey.png'
end

function StatsTextPanelClass:_addAverageValueWidget()
  self._averageValueWidget = DecoratedValueLabelClass.new(self._statType, 
    "Average")
    
  self._averageValueWidget:PlaceInParent(self._frame, 
    LegendItemValueSize, 
    AverageValuePosition)

  local decorationFrame = self._averageValueWidget:GetDecorationFrame()
  
  local decoration = Instance.new("Frame")
  decoration.Position = UDim2.new(0, 0, 0.5, -StatsUtils.GraphAverageLineTotalThickness/2)
  decoration.Size = UDim2.new(1, 0, 0, StatsUtils.GraphAverageLineInnerThickness)  
  decoration.Parent = decorationFrame
  
  StatsUtils.StyleAverageLine(decoration)
end

function StatsTextPanelClass:_getTitle()
  return StatsUtils.TypeToName[self._statType]
end

function StatsTextPanelClass:PlaceInParent(parent, size, position) 
  self._frame.Position = position
  self._frame.Size = size
  self._frame.Parent = parent  
end


function StatsTextPanelClass:SetStatsAggregator(aggregator)
  if (self._aggregator) then
    self._aggregator:RemoveListener(self._listenerId)
    self._listenerId = nil
    self._aggregator = nil
  end
  
  self._aggregator = aggregator
  
  self:_refreshVisibility()
end

function StatsTextPanelClass:SetVisible(visible)  
  self._frame.Visible = visible
  self:_refreshVisibility()
end

function StatsTextPanelClass:_shouldBeVisible()
  if StatsUtils.PerformanceStatsShouldBeVisible() then 
    return self._frame.Visible
  else
    return false
  end
end


function StatsTextPanelClass:_refreshVisibility()  
  if self:_shouldBeVisible() then
    self:_startListening()
    self:_updateFromAggregator()
  else
    self:_stopListening()
  end
end

function StatsTextPanelClass:_stopListening()
  if (self._aggregator == nil) then
    return
  end
  
  if (self._listenerId == nil) then 
    return
  end
  
  self._aggregator:RemoveListener(self._listenerId)
  self._listenerId = nil  
end

function StatsTextPanelClass:_startListening()
  if (self._aggregator == nil) then
    return
  end
  
  if (self._listenerId ~= nil) then 
    return
  end
  
  self._listenerId = self._aggregator:AddListener(function()
      self:_updateFromAggregator()
  end)  
end

function StatsTextPanelClass:_updateFromAggregator()
  local value = 0
  local average = 0
  local target = 0
    
  if self._aggregator ~= nil then 
    value = self._aggregator:GetLatestValue()
    average = self._aggregator:GetAverage()
    target = self._aggregator:GetTarget()
  end
  
  self._currentValueWidget:SetValue(value)
  self._targetValueWidget:SetValue(target)
  self._averageValueWidget:SetValue(average)
  
  self._currentValueDecoration.ImageColor3 = StatsUtils.GetColorForValue(value, target) 
  
end

function StatsTextPanelClass:SetZIndex(zIndex)
  -- Pass through to all children.
  self._frame.ZIndex = zIndex
  self._titleLabel.ZIndex = zIndex
  self._currentValueWidget:SetZIndex(zIndex)
  self._averageValueWidget:SetZIndex(zIndex)
end

return StatsTextPanelClass