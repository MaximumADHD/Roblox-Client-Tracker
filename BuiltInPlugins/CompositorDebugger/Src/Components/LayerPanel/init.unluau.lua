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
local var11 = require(var10.Constants)
local var12 = require(var10.debugFlags)
local var13 = require(var0.LuaFlags.GetFFlagTestRefactoring)
local var14 = game:DefineFastFlag("CDFixSwitchToTab", false)
local var15 = require(var0.Src.Types)
local var16 = require(var0.Packages.React).PureComponent:extend("LayerPanel")
function var16.init(arg1)
   local var60 = {}
   var60.selectedTab = var11.LAYER_TABS.LayerData
   arg1.state = var60
   function arg1.switchToTab(arg1)
      local var66 = {}
      var66.selectedTab = arg1
      arg1:setState(var66)
   end
   
end

function var16.isVisualizationEnabled(arg1, arg2)
   local var0 = {}
   var0.Blend1D = true
   local var72 = true
   var0.Blend2D = var72
   var72 = arg2
   return var72 and var0[arg2.className]
end

function var16.didUpdate(arg1, arg2)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.HistoryField and var0.HistoryField.id and var0.HistoryField.section and var0.HistoryField.field
   if var1.selectedTab == "selectedTab" then
      if var2 then
         if var1.selectedTab == "selectedTab" then
            if not arg1:isVisualizationEnabled(var0.LayerData) then
               if var13() then
                  if var14 then
                     arg1.switchToTab(var11.LAYER_TABS.LayerData)
                  else
                     arg1:switchToTab(var11.LAYER_TABS.LayerData)
                     local var112 = {}
                     var112.selectedTab = var11.LAYER_TABS.LayerData
                     arg1:setState(var112)
                  end
               else
                  local var117 = {}
                  var117.selectedTab = var11.LAYER_TABS.LayerData
                  arg1:setState(var117)
               end
            end
         end
      end
   end
   if var1.selectedTab == "selectedTab" then
      if not arg1:isVisualizationEnabled(var0.LayerData) then
         if var13() then
            if var14 then
               arg1.switchToTab(var11.LAYER_TABS.LayerData)
            else
               arg1:switchToTab(var11.LAYER_TABS.LayerData)
               local var140 = {}
               var140.selectedTab = var11.LAYER_TABS.LayerData
               arg1:setState(var140)
            end
         else
            local var145 = {}
            var145.selectedTab = var11.LAYER_TABS.LayerData
            arg1:setState(var145)
         end
      end
   end
   if var2 then
      if arg2.HistoryField then
         if var0.HistoryField.id == "selectedTab" then
            if var0.HistoryField.section == "selectedTab" then
               if var0.HistoryField.field ~= arg2.HistoryField.field then
                  if var13() then
                     if var14 then
                        arg1.switchToTab(var11.LAYER_TABS.History)
                     end
                     arg1:switchToTab(var11.LAYER_TABS.History)
                  end
                  local var174 = {}
                  var174.selectedTab = var11.LAYER_TABS.History
                  arg1:setState(var174)
               end
            end
         end
      end
      if var13() then
         if var14 then
            arg1.switchToTab(var11.LAYER_TABS.History)
         end
         arg1:switchToTab(var11.LAYER_TABS.History)
      end
      local var190 = {}
      var190.selectedTab = var11.LAYER_TABS.History
      arg1:setState(var190)
   end
end

local function fun4(arg1, arg2)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.HistoryField and var0.HistoryField.id and var0.HistoryField.section and var0.HistoryField.field
   if var1.selectedTab == "selectedTab" then
      if var2 then
         if var1.selectedTab == "selectedTab" then
            if not arg1:isVisualizationEnabled(var0.LayerData) then
               if var13() then
                  if var14 then
                     arg1.switchToTab(var11.LAYER_TABS.LayerData)
                  else
                     arg1:switchToTab(var11.LAYER_TABS.LayerData)
                     local var231 = {}
                     var231.selectedTab = var11.LAYER_TABS.LayerData
                     arg1:setState(var231)
                  end
               else
                  local var236 = {}
                  var236.selectedTab = var11.LAYER_TABS.LayerData
                  arg1:setState(var236)
               end
            end
         end
      end
   end
   if var1.selectedTab == "selectedTab" then
      if not arg1:isVisualizationEnabled(var0.LayerData) then
         if var13() then
            if var14 then
               arg1.switchToTab(var11.LAYER_TABS.LayerData)
            else
               arg1:switchToTab(var11.LAYER_TABS.LayerData)
               local var259 = {}
               var259.selectedTab = var11.LAYER_TABS.LayerData
               arg1:setState(var259)
            end
         else
            local var264 = {}
            var264.selectedTab = var11.LAYER_TABS.LayerData
            arg1:setState(var264)
         end
      end
   end
   if var2 then
      if arg2.HistoryField then
         if var0.HistoryField.id == "selectedTab" then
            if var0.HistoryField.section == "selectedTab" then
               if var0.HistoryField.field ~= arg2.HistoryField.field then
                  if var13() then
                     if var14 then
                        arg1.switchToTab(var11.LAYER_TABS.History)
                     end
                     arg1:switchToTab(var11.LAYER_TABS.History)
                  end
                  local var293 = {}
                  var293.selectedTab = var11.LAYER_TABS.History
                  arg1:setState(var293)
               end
            end
         end
      end
      if var13() then
         if var14 then
            arg1.switchToTab(var11.LAYER_TABS.History)
         end
         arg1:switchToTab(var11.LAYER_TABS.History)
      end
      local var309 = {}
      var309.selectedTab = var11.LAYER_TABS.History
      arg1:setState(var309)
   end
end

function var16.render(arg1, arg2)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.HistoryField and var0.HistoryField.id and var0.HistoryField.section and var0.HistoryField.field
   if var1.selectedTab == "selectedTab" then
      if var2 then
         if var1.selectedTab == "selectedTab" then
            if not arg1:isVisualizationEnabled(var0.LayerData) then
               if var13() then
                  if var14 then
                     arg1.switchToTab(var11.LAYER_TABS.LayerData)
                  else
                     arg1:switchToTab(var11.LAYER_TABS.LayerData)
                     local var231 = {}
                     var231.selectedTab = var11.LAYER_TABS.LayerData
                     arg1:setState(var231)
                  end
               else
                  local var236 = {}
                  var236.selectedTab = var11.LAYER_TABS.LayerData
                  arg1:setState(var236)
               end
            end
         end
      end
   end
   if var1.selectedTab == "selectedTab" then
      if not arg1:isVisualizationEnabled(var0.LayerData) then
         if var13() then
            if var14 then
               arg1.switchToTab(var11.LAYER_TABS.LayerData)
            else
               arg1:switchToTab(var11.LAYER_TABS.LayerData)
               local var259 = {}
               var259.selectedTab = var11.LAYER_TABS.LayerData
               arg1:setState(var259)
            end
         else
            local var264 = {}
            var264.selectedTab = var11.LAYER_TABS.LayerData
            arg1:setState(var264)
         end
      end
   end
   if var2 then
      if arg2.HistoryField then
         if var0.HistoryField.id == "selectedTab" then
            if var0.HistoryField.section == "selectedTab" then
               if var0.HistoryField.field ~= arg2.HistoryField.field then
                  if var13() then
                     if var14 then
                        arg1.switchToTab(var11.LAYER_TABS.History)
                     end
                     arg1:switchToTab(var11.LAYER_TABS.History)
                  end
                  local var293 = {}
                  var293.selectedTab = var11.LAYER_TABS.History
                  arg1:setState(var293)
               end
            end
         end
      end
      if var13() then
         if var14 then
            arg1.switchToTab(var11.LAYER_TABS.History)
         end
         arg1:switchToTab(var11.LAYER_TABS.History)
      end
      local var309 = {}
      var309.selectedTab = var11.LAYER_TABS.History
      arg1:setState(var309)
   end
end

fun4 = var2.withContext
local var314 = {}
var314.Analytics = var2.Analytics
var314.Localization = var2.Localization
var314.Stylizer = var1.Style.Stylizer
var16 = fun4(var314)(var16)
var16 = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.HistoryField = arg1.Status.HistoryField
   return var0
end, function(arg1)
   return {}
end)(var16)
var16.Visualizers = require(script.Visualizers)
return var16
