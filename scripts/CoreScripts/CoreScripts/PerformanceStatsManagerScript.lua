--!nonstrict

--[[
		Filename: PerformanceStatsManagerScript.lua
		Written by: dbanks
		Description: Handles performance stats gui.
--]]

--[[ Services ]]--
local PlayersService = game:GetService("Players")
local Settings = UserSettings()
local GameSettings = Settings.GameSettings
local CoreGuiService = game:GetService('CoreGui')
local AnalyticsService = game:GetService("RbxAnalyticsService")

--[[ Modules ]]--
local StatsAggregatorManagerClass = require(CoreGuiService.RobloxGui.Modules.Stats.StatsAggregatorManager)
local StatsButtonClass = require(CoreGuiService.RobloxGui.Modules.Stats.StatsButton)
local StatsUtils = require(CoreGuiService.RobloxGui.Modules.Stats.StatsUtils)
local StatsViewerClass = require(CoreGuiService.RobloxGui.Modules.Stats.StatsViewer)

--[[ Flags ]]--
local GetFFlagLazyPerfStatsInit = require(CoreGuiService.RobloxGui.Modules.Flags.GetFFlagLazyPerfStatsInit)
local FFlagLazyPerfStatsInit = GetFFlagLazyPerfStatsInit()

--[[ Script Variables ]]--
local masterFrame = nil
local statsAggregatorManager = nil
local statsViewer = nil
local statsButtonsByType = {}
local currentStatType = nil

local OpenCounterName = "OpenPerformanceProfiler"
local TimeOpenCounterName = "TimeOpenPerformanceProfiler"
local openTimeStamp = nil

if not FFlagLazyPerfStatsInit then
  masterFrame = Instance.new("Frame")
  masterFrame.Name = "PerformanceStats"
  statsAggregatorManager = StatsAggregatorManagerClass.getSingleton()
  statsViewer = StatsViewerClass.new()
  for i, statType in ipairs(StatsUtils.AllStatTypes) do
    local button = StatsButtonClass.new(statType)
    statsButtonsByType[statType] = button
  end
end

function ShowMasterFrame()
  masterFrame.Visible = true
  masterFrame.Parent = CoreGuiService.RobloxGui
end

function HideMasterFrame()
  masterFrame.Visible = false
  masterFrame.Parent = nil
end

--[[ Functions ]]--
function ConfigureMasterFrame()
  -- Set up the main frame that contains the whole PS GUI.
  -- Avoid the top button bar.
  masterFrame.Position = UDim2.new(0, 0, 0, 0)
  masterFrame.Size = UDim2.new(1, 0, 1, 0)
  masterFrame.Selectable = false
  masterFrame.BackgroundTransparency = 1.0
  masterFrame.Active = false
  masterFrame.ZIndex = 0

  HideMasterFrame()

  -- FIXME(dbanks)
  -- Debug, can see the whole frame.
  -- masterFrame.BackgroundColor3 = Color3.new(0, 0.5, 0.5)
  -- masterFrame.BackgroundTransparency = 0.8
end

function ConfigureStatButtonsInMasterFrame()
  -- Set up the row of buttons across the top and handler for button press.
  for i, statType in ipairs(StatsUtils.AllStatTypes) do
    AddButton(statType, i)
  end
end

function OnButtonToggled(toggledStatType)
  local toggledButton = statsButtonsByType[toggledStatType]
  local selectedState = toggledButton._isSelected
  selectedState = not selectedState

  if (selectedState) then
    currentStatType = toggledStatType
  else
    currentStatType = nil
  end

  UpdateButtonSelectedStates()
  UpdateViewerVisibility()
end

function UpdateButtonSelectedStates()
  for i, buttonType in ipairs(StatsUtils.AllStatTypes) do
      local button = statsButtonsByType[buttonType]
      button:SetIsSelected(buttonType == currentStatType)
  end
end

function UpdateViewerVisibility()
  -- If a particular button/tab is on, show the Viewer.
  --
  -- Don't bother if we're already there.
  if (currentStatType == nil) then
    if statsViewer:GetIsVisible() then
      statsViewer:SetVisible(false)
      statsViewer:SetStatsAggregator(nil)
    end
  else
    local somethingChanged = false
    if not statsViewer:GetIsVisible() then
      somethingChanged = true
      statsViewer:SetVisible(true)
    end

    if currentStatType ~= statsViewer:GetStatType() then
      statsViewer:SetStatType(currentStatType)
      statsViewer:SetStatsAggregator(statsAggregatorManager:GetAggregator(currentStatType))
      somethingChanged = true
    end

    if somethingChanged then
      -- track it.
      AnalyticsService:TrackEvent("Game", "Enlarge PerfStat", currentStatType, 0)
    end
  end
end

function AddButton(statType, index)
  -- Configure size and position of button.
  -- Configure callback behavior to toggle
  --    button on or off and show/hide viewer.
  -- Parent button in main screen.
  local button = statsButtonsByType[statType]

  button:SetParent(masterFrame)
  button:SetStatsAggregator(
    statsAggregatorManager:GetAggregator(statType))

  local fraction = 1.0/StatsUtils.NumButtonTypes
  local size = UDim2.new(fraction, 0, 0, StatsUtils.ButtonHeight)
  local position = UDim2.new(fraction * (index - 1), 0, 0, 0)
  button:SetSizeAndPosition(size, position)

  button:SetToggleCallbackFunction(OnButtonToggled)
end

function ConfigureStatViewerInMasterFrame()
  -- Set up the widget that shows currently selected button.
  statsViewer:SetParent(masterFrame)

  local size = UDim2.new(0, StatsUtils.ViewerWidth, 0, StatsUtils.ViewerHeight)
  local position = UDim2.new(1, -StatsUtils.ViewerWidth,
    0, StatsUtils.ButtonHeight + StatsUtils.ViewerTopMargin)

  statsViewer:SetSizeAndPosition(size, position)
end

if FFlagLazyPerfStatsInit then
  function CreatePerformanceStatsUI()
    statsAggregatorManager = StatsAggregatorManagerClass.getSingleton()
    statsAggregatorManager:StartListening()

    masterFrame = Instance.new("Frame")
    masterFrame.Name = "PerformanceStats"

    statsButtonsByType = {}
    for i, statType in StatsUtils.AllStatTypes do
      local button = StatsButtonClass.new(statType)
      statsButtonsByType[statType] = button
    end

    statsViewer = StatsViewerClass.new()
    currentStatType = nil

    ConfigureMasterFrame()
    ConfigureStatButtonsInMasterFrame()
    ConfigureStatViewerInMasterFrame()

    UpdateButtonSelectedStates()
    UpdateViewerVisibility()

    ShowMasterFrame()
  end

  function DestroyPerformanceStatsUI()
    -- Notify children so they stop listening to aggregators before destruction
    if statsViewer then
      statsViewer:OnPerformanceStatsShouldBeVisibleChanged()
    end
    for _, buttonType in ipairs(StatsUtils.AllStatTypes) do
      local button = statsButtonsByType[buttonType]
      if button then
        button:OnPerformanceStatsShouldBeVisibleChanged()
      end
    end

    if masterFrame then
      masterFrame:Destroy()
      masterFrame = nil
    end

    statsViewer = nil
    statsButtonsByType = {}
    currentStatType = nil

    if statsAggregatorManager then
      statsAggregatorManager:StopListening()
    end
  end

  function UpdatePerformanceStatsVisibility()
    local shouldBeVisible = StatsUtils.PerformanceStatsShouldBeVisible()
  
      local isVisible = masterFrame ~= nil
  
      if shouldBeVisible == isVisible then
        return
      end
  
      if shouldBeVisible then
        CreatePerformanceStatsUI()
      else
        DestroyPerformanceStatsUI()
      end
  
      local actionName = "Hide PerfStats"
      if shouldBeVisible then
        actionName = "Show PerfStats"
      end
    
      AnalyticsService:TrackEvent("Game", actionName, "", 0)
    
      if shouldBeVisible then
        openTimeStamp = time()
        AnalyticsService:ReportCounter(OpenCounterName, 1)
      else
        if openTimeStamp then
          local timeDiff = time() - openTimeStamp
          AnalyticsService:ReportStats(TimeOpenCounterName, timeDiff)
        end
      end
  end
else
  function UpdatePerformanceStatsVisibility()
    local shouldBeVisible = StatsUtils.PerformanceStatsShouldBeVisible()
  
    if (shouldBeVisible == masterFrame.Visible) then
      return
    end
  
    if shouldBeVisible then
      ShowMasterFrame()
    else
      HideMasterFrame()
    end
  
    -- Let the children respond to the transition that they are/are not visible.
    statsViewer:OnPerformanceStatsShouldBeVisibleChanged()
    for i, buttonType in ipairs(StatsUtils.AllStatTypes) do
        local button = statsButtonsByType[buttonType]
        button:OnPerformanceStatsShouldBeVisibleChanged()
    end
  
    -- track it.
    local actionName = "Hide PerfStats"
    if shouldBeVisible then
      actionName = "Show PerfStats"
    end
  
    AnalyticsService:TrackEvent("Game", actionName, "", 0)
  
    if shouldBeVisible then
      openTimeStamp = time()
      AnalyticsService:ReportCounter(OpenCounterName, 1)
    else
      if openTimeStamp then
        local timeDiff = time() - openTimeStamp
        AnalyticsService:ReportStats(TimeOpenCounterName, timeDiff)
      end
    end
  end
end

--[[ Top Level Code ]]--
GameSettings.PerformanceStatsVisibleChanged:connect(
  UpdatePerformanceStatsVisibility)

if not FFlagLazyPerfStatsInit then
  ConfigureMasterFrame()
  ConfigureStatButtonsInMasterFrame()
  ConfigureStatViewerInMasterFrame()

  UpdateButtonSelectedStates()
  UpdateViewerVisibility()
  UpdatePerformanceStatsVisibility()
end

spawn(function()
    local localPlayer = PlayersService.LocalPlayer
    while not localPlayer do
      PlayersService.PlayerAdded:wait()
      localPlayer = PlayersService.LocalPlayer
    end
    UpdatePerformanceStatsVisibility()
end)
