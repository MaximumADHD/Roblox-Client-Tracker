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
local var14 = require(var0.Src.Types)
local var15 = require(var0.Packages.React).PureComponent:extend("LayerPanel")
function var15.init(arg1)
   local var55 = {}
   var55.selectedTab = var11.LAYER_TABS.LayerData
   arg1.state = var55
   function arg1.switchToTab(arg1)
      local var61 = {}
      var61.selectedTab = arg1
      arg1:setState(var61)
   end
   
end

function var15.isVisualizationEnabled(arg1, arg2)
   local var0 = {}
   var0.Blend1D = true
   local var67 = true
   var0.Blend2D = var67
   var67 = arg2
   return var67 and var0[arg2.className]
end

function var15.didUpdate(arg1, arg2)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.HistoryField and var0.HistoryField.id and var0.HistoryField.section and var0.HistoryField.field
   if var1.selectedTab == "selectedTab" then
      if var2 then
         if var1.selectedTab == "selectedTab" then
            if not arg1:isVisualizationEnabled(var0.LayerData) then
               if var13() then
                  arg1:switchToTab(var11.LAYER_TABS.LayerData)
               else
                  local var102 = {}
                  var102.selectedTab = var11.LAYER_TABS.LayerData
                  arg1:setState(var102)
               end
            end
         end
      end
   end
   if var1.selectedTab == "selectedTab" then
      if not arg1:isVisualizationEnabled(var0.LayerData) then
         if var13() then
            arg1:switchToTab(var11.LAYER_TABS.LayerData)
         else
            local var120 = {}
            var120.selectedTab = var11.LAYER_TABS.LayerData
            arg1:setState(var120)
         end
      end
   end
   if var2 then
      if arg2.HistoryField then
         if var0.HistoryField.id == "selectedTab" then
            if var0.HistoryField.section == "selectedTab" then
               if var0.HistoryField.field ~= arg2.HistoryField.field then
                  if var13() then
                     arg1:switchToTab(var11.LAYER_TABS.History)
                  end
                  local var144 = {}
                  var144.selectedTab = var11.LAYER_TABS.History
                  arg1:setState(var144)
               end
            end
         end
      end
      if var13() then
         arg1:switchToTab(var11.LAYER_TABS.History)
      end
      local var155 = {}
      var155.selectedTab = var11.LAYER_TABS.History
      arg1:setState(var155)
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
                  arg1:switchToTab(var11.LAYER_TABS.LayerData)
               else
                  local var191 = {}
                  var191.selectedTab = var11.LAYER_TABS.LayerData
                  arg1:setState(var191)
               end
            end
         end
      end
   end
   if var1.selectedTab == "selectedTab" then
      if not arg1:isVisualizationEnabled(var0.LayerData) then
         if var13() then
            arg1:switchToTab(var11.LAYER_TABS.LayerData)
         else
            local var209 = {}
            var209.selectedTab = var11.LAYER_TABS.LayerData
            arg1:setState(var209)
         end
      end
   end
   if var2 then
      if arg2.HistoryField then
         if var0.HistoryField.id == "selectedTab" then
            if var0.HistoryField.section == "selectedTab" then
               if var0.HistoryField.field ~= arg2.HistoryField.field then
                  if var13() then
                     arg1:switchToTab(var11.LAYER_TABS.History)
                  end
                  local var233 = {}
                  var233.selectedTab = var11.LAYER_TABS.History
                  arg1:setState(var233)
               end
            end
         end
      end
      if var13() then
         arg1:switchToTab(var11.LAYER_TABS.History)
      end
      local var244 = {}
      var244.selectedTab = var11.LAYER_TABS.History
      arg1:setState(var244)
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
               if var13() then
                  arg1:switchToTab(var11.LAYER_TABS.LayerData)
               else
                  local var191 = {}
                  var191.selectedTab = var11.LAYER_TABS.LayerData
                  arg1:setState(var191)
               end
            end
         end
      end
   end
   if var1.selectedTab == "selectedTab" then
      if not arg1:isVisualizationEnabled(var0.LayerData) then
         if var13() then
            arg1:switchToTab(var11.LAYER_TABS.LayerData)
         else
            local var209 = {}
            var209.selectedTab = var11.LAYER_TABS.LayerData
            arg1:setState(var209)
         end
      end
   end
   if var2 then
      if arg2.HistoryField then
         if var0.HistoryField.id == "selectedTab" then
            if var0.HistoryField.section == "selectedTab" then
               if var0.HistoryField.field ~= arg2.HistoryField.field then
                  if var13() then
                     arg1:switchToTab(var11.LAYER_TABS.History)
                  end
                  local var233 = {}
                  var233.selectedTab = var11.LAYER_TABS.History
                  arg1:setState(var233)
               end
            end
         end
      end
      if var13() then
         arg1:switchToTab(var11.LAYER_TABS.History)
      end
      local var244 = {}
      var244.selectedTab = var11.LAYER_TABS.History
      arg1:setState(var244)
   end
end

fun4 = var2.withContext
local var249 = {}
var249.Analytics = var2.Analytics
var249.Localization = var2.Localization
var249.Stylizer = var1.Style.Stylizer
var15 = fun4(var249)(var15)
var15 = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.HistoryField = arg1.Status.HistoryField
   return var0
end, function(arg1)
   return {}
end)(var15)
var15.Visualizers = require(script.Visualizers)
return var15
