--[[
  Filename: StatsButton.lua
  Written by: dbanks
  Description: Button that displays latest deets of one or two 
    particular stats.
--]]

--[[ Services ]]--
local CoreGuiService = game:GetService('CoreGui')

--[[ Modules ]]--
local StyleWidgets = require(CoreGuiService.RobloxGui.Modules.StyleWidgets)
local StatsUtils = require(CoreGuiService.RobloxGui.Modules.Stats.StatsUtils)
local StatsMiniTextPanelClass = require(CoreGuiService.RobloxGui.Modules.Stats.StatsMiniTextPanel)
local StatsAnnotatedGraphClass = require(CoreGuiService.RobloxGui.Modules.Stats.StatsAnnotatedGraph)

--[[ Globals ]]--
local TextPanelXFraction = 0.5
local GraphXFraction = 1 - TextPanelXFraction

local TextPanelPosition = UDim2.new(0, 0, 0, 0)
local TextPanelSize = UDim2.new(TextPanelXFraction, 0, 1, -StyleWidgets.TabSelectionHeight)
local GraphPosition = UDim2.new(TextPanelXFraction, 0, 0, 0)
local GraphSize = UDim2.new(GraphXFraction, 0, 1, -StyleWidgets.TabSelectionHeight)

--[[ Classes ]]--
local StatsButtonClass = {}
StatsButtonClass.__index = StatsButtonClass

function StatsButtonClass.new(statType) 
  local self = {}
  setmetatable(self, StatsButtonClass)

  self._statType = statType
  self._button = Instance.new("TextButton")
  self._button.Name = "PS_Button"
  self._button.Text = ""
  
  StatsUtils.StyleButton(self._button)

  self._textPanel = StatsMiniTextPanelClass.new(statType)
  self._textPanel:PlaceInParent(self._button,
    TextPanelSize, 
    TextPanelPosition)
        
  self._graph = StatsAnnotatedGraphClass.new(statType, false)
  self._graph:PlaceInParent(self._button, 
    GraphSize, 
    GraphPosition)
  
  self._textPanel:SetZIndex(StatsUtils.TextZIndex)
  self._graph:SetZIndex(StatsUtils.GraphZIndex)

  self._tabSelection = StyleWidgets.MakeTabSelectionWidget(self._button)

  self._isSelected = false
  
  self:_updateTabSelectionState();
  
  return self
end

function StatsButtonClass:OnPerformanceStatsShouldBeVisibleChanged()
  if self._graph then 
    self._graph:OnPerformanceStatsShouldBeVisibleChanged()
  end
  
  if self._textPanel then 
    self._textPanel:OnPerformanceStatsShouldBeVisibleChanged()
  end
end

function StatsButtonClass:SetToggleCallbackFunction(callbackFunction) 
    self._button.MouseButton1Click:connect(function() 
          callbackFunction(self._statType)
        end)
end

function StatsButtonClass:SetSizeAndPosition(size, position)
  self._button.Size = size;
  self._button.Position = position;
end

function StatsButtonClass:SetIsSelected(isSelected)
  self._isSelected = isSelected
  self:_updateTabSelectionState();
end

function StatsButtonClass:_updateTabSelectionState()
  self._tabSelection.Visible = self._isSelected
end

function StatsButtonClass:SetParent(parent)
  self._button.Parent = parent
end
  
function StatsButtonClass:SetStatsAggregator(aggregator) 
  self._textPanel:SetStatsAggregator(aggregator)
  self._graph:SetStatsAggregator(aggregator)
end
  
return StatsButtonClass