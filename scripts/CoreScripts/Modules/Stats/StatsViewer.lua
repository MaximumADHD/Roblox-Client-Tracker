--[[
  Filename: StatsButtonViewer.lua
  Written by: dbanks
  Description: Widget that displays one or more stats in closeup view:
      text and graphics.
--]]

--[[ Services ]]--
local CoreGuiService = game:GetService('CoreGui')

--[[ Modules ]]--
local StatsUtils = require(CoreGuiService.RobloxGui.Modules.Stats.StatsUtils)
local StatsTextPanelClass = require(CoreGuiService.RobloxGui.Modules.Stats.StatsTextPanel)
local StatsAnnotatedGraphClass = require(CoreGuiService.RobloxGui.Modules.Stats.StatsAnnotatedGraph)

--[[ Globals ]]--
local TextPanelXFraction = 0.4
local GraphXFraction = 1 - TextPanelXFraction

local TextPanelPosition = UDim2.new(0, 0, 0, 0)
local TextPanelSize = UDim2.new(TextPanelXFraction, 0, 1, 0)
local GraphPosition = UDim2.new(TextPanelXFraction, 0, 0, 0)
local GraphSize = UDim2.new(GraphXFraction, 0, 1, 0)

--[[ Classes ]]--
local StatsViewerClass = {}
StatsViewerClass.__index = StatsViewerClass


function StatsViewerClass.new() 
  local self = {}
  setmetatable(self, StatsViewerClass)
  
  self._frameImageLabel = Instance.new("ImageLabel")
  self._frameImageLabel.Name = "PS_Viewer"
	self._frameImageLabel.Image = 'rbxasset://textures/ui/PerformanceStats/BackgroundRounded.png'
  self._frameImageLabel.ScaleType = Enum.ScaleType.Slice
  self._frameImageLabel.SliceCenter = Rect.new(10, 10, 22, 22)
  self._frameImageLabel.BackgroundTransparency = 1
  self._frameImageLabel.ImageColor3 = StatsUtils.NormalColor
  self._frameImageLabel.ImageTransparency = StatsUtils.Transparency 
  
  self._textPanel = nil
  self._statType = nil
  self._graph = nil

  return self
end

function StatsViewerClass:OnPerformanceStatsShouldBeVisibleChanged()
  if self._graph then 
    self._graph:OnPerformanceStatsShouldBeVisibleChanged()
  end
  if self._textPanel then 
    self._textPanel:OnPerformanceStatsShouldBeVisibleChanged()
  end
  if self._textPanel then 
    self._textPanel:OnVisibilityChanged()
  end
end

function StatsViewerClass:GetIsVisible()
  return self._frameImageLabel.Visible
end

function StatsViewerClass:GetStatType()
  return self._statType
end

function StatsViewerClass:SetSizeAndPosition(size, position)
  self._frameImageLabel.Size = size
  self._frameImageLabel.Position = position
end

function StatsViewerClass:SetParent(parent)
  self._frameImageLabel.Parent = parent
end
  
function StatsViewerClass:SetVisible(visible)
  self._frameImageLabel.Visible = visible
  
  if (self._graph) then   
    self._graph:SetVisible(visible)
  end
  
  if (self._textPanel) then 
    self._textPanel:SetVisible(visible)
  end
end

function StatsViewerClass:SetStatType(statType) 
  self._statType = statType
  self._frameImageLabel:ClearAllChildren()
  -- If there's already a text panel, make it clear it is no longer visible.
  if (self._textPanel) then 
    self._textPanel:SetVisible(false)
    self._textPanel = nil
  end
  
  self._textPanel = StatsTextPanelClass.new(statType, true)
  self._textPanel:PlaceInParent(self._frameImageLabel,
    TextPanelSize, 
    TextPanelPosition)
  
  self._graph = StatsAnnotatedGraphClass.new(statType, true)
  self._graph:PlaceInParent(self._frameImageLabel, 
    GraphSize, 
    GraphPosition)
  
  self._textPanel:SetZIndex(StatsUtils.TextZIndex)
  self._graph:SetZIndex(StatsUtils.GraphZIndex)
  
  self._graph:SetVisible(self._frameImageLabel.Visible)
  self._textPanel:SetVisible(self._frameImageLabel.Visible)

  
  self:_applyStatsAggregator();
end

function StatsViewerClass:_applyStatsAggregator()
  if (self._aggregator == nil) then 
    return
  end
  
  if (self._textPanel) then 
    self._textPanel:SetStatsAggregator(self._aggregator)
  end
  if (self._graph) then 
      self._graph:SetStatsAggregator(self._aggregator)
  end
end
  

function StatsViewerClass:SetStatsAggregator(aggregator) 
  self._aggregator = aggregator
  self:_applyStatsAggregator();
 end

return StatsViewerClass