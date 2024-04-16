-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.Framework)
local var2 = var1.ContextServices
local var3 = var1.UI
local var4 = var3.Pane
local var5 = var3.Tabs
local var6 = var3.TextLabel
local var7 = var0.Src.Components
local var8 = require(var7.LayerView)
local var9 = require(var7.HistoryGraph)
local var10 = var0.Src.Util
local var11 = require(var10.AnalyticsEnums)
local var12 = require(var10.Constants)
local var13 = require(var10.debugFlags)
local var14 = require(var0.Src.Types)
local var15 = require(var0.Packages.React).PureComponent:extend("LayerPanel")
function var15.init(arg1)
   local var54 = {}
   var54.lastTabSwitch = os.clock()
   var54.selectedTab = var12.LAYER_TABS.LayerData
   var54.oldTab = var12.LAYER_TABS.LayerData
   arg1.state = var54
   function arg1.switchToTab(arg1, arg2)
      if arg1 == "props" then
      end
      local var79 = var11.LAYER_TABS
      var79 = arg2
      arg1.props.Analytics:report("onLayerTabChanged", var11.LAYER_TABS[arg1.state.selectedTab], var79[arg1], var79, os.clock() - arg1.state.lastTabSwitch)
      local var89 = {}
      var89.lastTabSwitch = os.clock()
      var89.oldTab = arg1.state.selectedTab
      var89.selectedTab = arg1
      arg1:setState(var89)
   end
   
end

function var15.isVisualizationEnabled(arg1)
   local var97 = {}
   var97.lastTabSwitch = os.clock()
   var97.selectedTab = var12.LAYER_TABS.LayerData
   var97.oldTab = var12.LAYER_TABS.LayerData
   arg1.state = var97
   function arg1.switchToTab(arg1, arg2)
      if arg1 == "props" then
      end
      local var122 = var11.LAYER_TABS
      var122 = arg2
      arg1.props.Analytics:report("onLayerTabChanged", var11.LAYER_TABS[arg1.state.selectedTab], var122[arg1], var122, os.clock() - arg1.state.lastTabSwitch)
      local var132 = {}
      var132.lastTabSwitch = os.clock()
      var132.oldTab = arg1.state.selectedTab
      var132.selectedTab = arg1
      arg1:setState(var132)
   end
   
end

function var15.didUpdate(arg1, arg2)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.HistoryField and var0.HistoryField.id and var0.HistoryField.section and var0.HistoryField.field
   if var1.selectedTab == "selectedTab" then
      if var2 then
         if var1.selectedTab == "selectedTab" then
            if not arg1:isVisualizationEnabled(var0.LayerData) then
               arg1.switchToTab(var12.LAYER_TABS.LayerData, var11.TAB_SWITCH_REASONS.NoData)
            end
         end
      end
   end
   if var1.selectedTab == "selectedTab" then
      if not arg1:isVisualizationEnabled(var0.LayerData) then
         arg1.switchToTab(var12.LAYER_TABS.LayerData, var11.TAB_SWITCH_REASONS.NoData)
      end
   end
   if var2 then
      if arg2.HistoryField then
         if var0.HistoryField.id == "selectedTab" then
            if var0.HistoryField.section == "selectedTab" then
               if var0.HistoryField.field ~= arg2.HistoryField.field then
                  arg1.switchToTab(var12.LAYER_TABS.History, var11.TAB_SWITCH_REASONS.HistoryIcon)
               end
            end
         end
      end
      arg1.switchToTab(var12.LAYER_TABS.History, var11.TAB_SWITCH_REASONS.HistoryIcon)
   end
end

local function fun5(arg1, arg2)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.HistoryField and var0.HistoryField.id and var0.HistoryField.section and var0.HistoryField.field
   if var1.selectedTab == "selectedTab" then
      if var2 then
         if var1.selectedTab == "selectedTab" then
            if not arg1:isVisualizationEnabled(var0.LayerData) then
               arg1.switchToTab(var12.LAYER_TABS.LayerData, var11.TAB_SWITCH_REASONS.NoData)
            end
         end
      end
   end
   if var1.selectedTab == "selectedTab" then
      if not arg1:isVisualizationEnabled(var0.LayerData) then
         arg1.switchToTab(var12.LAYER_TABS.LayerData, var11.TAB_SWITCH_REASONS.NoData)
      end
   end
   if var2 then
      if arg2.HistoryField then
         if var0.HistoryField.id == "selectedTab" then
            if var0.HistoryField.section == "selectedTab" then
               if var0.HistoryField.field ~= arg2.HistoryField.field then
                  arg1.switchToTab(var12.LAYER_TABS.History, var11.TAB_SWITCH_REASONS.HistoryIcon)
               end
            end
         end
      end
      arg1.switchToTab(var12.LAYER_TABS.History, var11.TAB_SWITCH_REASONS.HistoryIcon)
   end
end

function var15.render(arg1, arg2)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.HistoryField and var0.HistoryField.id and var0.HistoryField.section and var0.HistoryField.field
   if var1.selectedTab == "selectedTab" then
      if var2 then
         if var1.selectedTab == "selectedTab" then
            if not arg1:isVisualizationEnabled(var0.LayerData) then
               arg1.switchToTab(var12.LAYER_TABS.LayerData, var11.TAB_SWITCH_REASONS.NoData)
            end
         end
      end
   end
   if var1.selectedTab == "selectedTab" then
      if not arg1:isVisualizationEnabled(var0.LayerData) then
         arg1.switchToTab(var12.LAYER_TABS.LayerData, var11.TAB_SWITCH_REASONS.NoData)
      end
   end
   if var2 then
      if arg2.HistoryField then
         if var0.HistoryField.id == "selectedTab" then
            if var0.HistoryField.section == "selectedTab" then
               if var0.HistoryField.field ~= arg2.HistoryField.field then
                  arg1.switchToTab(var12.LAYER_TABS.History, var11.TAB_SWITCH_REASONS.HistoryIcon)
               end
            end
         end
      end
      arg1.switchToTab(var12.LAYER_TABS.History, var11.TAB_SWITCH_REASONS.HistoryIcon)
   end
end

fun5 = var2.withContext
local var285 = {}
var285.Analytics = var2.Analytics
var285.Localization = var2.Localization
var285.Stylizer = var1.Style.Stylizer
var15 = fun5(var285)(var15)
var15 = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.HistoryField = arg1.Status.HistoryField
   return var0
end, function(arg1)
   return {}
end)(var15)
var15.Visualizers = require(script.Visualizers)
return var15
