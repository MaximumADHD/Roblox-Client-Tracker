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
local var13 = require(var0.Src.Types)
local var14 = require(var0.Packages.React).PureComponent:extend("LayerPanel")
function var14.init(arg1)
   local var51 = {}
   var51.selectedTab = var11.LAYER_TABS.LayerData
   arg1.state = var51
   function arg1.switchToTab(arg1)
      local var57 = {}
      var57.selectedTab = arg1
      arg1:setState(var57)
   end
   
end

function var14.isVisualizationEnabled(arg1, arg2)
   local var0 = {}
   var0.Blend1D = true
   local var63 = true
   var0.Blend2D = var63
   var63 = arg2
   return var63 and var0[arg2.className]
end

function var14.didUpdate(arg1, arg2)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.HistoryField and var0.HistoryField.id and var0.HistoryField.section and var0.HistoryField.field
   if var1.selectedTab == "selectedTab" then
      if var2 then
         if var1.selectedTab == "selectedTab" then
            if not arg1:isVisualizationEnabled(var0.LayerData) then
               local var92 = {}
               var92.selectedTab = var11.LAYER_TABS.LayerData
               arg1:setState(var92)
            end
         end
      end
   end
   if var1.selectedTab == "selectedTab" then
      if not arg1:isVisualizationEnabled(var0.LayerData) then
         local var104 = {}
         var104.selectedTab = var11.LAYER_TABS.LayerData
         arg1:setState(var104)
      end
   end
   if var2 then
      if arg2.HistoryField then
         if var0.HistoryField.id == "selectedTab" then
            if var0.HistoryField.section == "selectedTab" then
               if var0.HistoryField.field ~= arg2.HistoryField.field then
                  local var122 = {}
                  var122.selectedTab = var11.LAYER_TABS.History
                  arg1:setState(var122)
               end
            end
         end
      end
      local var127 = {}
      var127.selectedTab = var11.LAYER_TABS.History
      arg1:setState(var127)
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
               local var157 = {}
               var157.selectedTab = var11.LAYER_TABS.LayerData
               arg1:setState(var157)
            end
         end
      end
   end
   if var1.selectedTab == "selectedTab" then
      if not arg1:isVisualizationEnabled(var0.LayerData) then
         local var169 = {}
         var169.selectedTab = var11.LAYER_TABS.LayerData
         arg1:setState(var169)
      end
   end
   if var2 then
      if arg2.HistoryField then
         if var0.HistoryField.id == "selectedTab" then
            if var0.HistoryField.section == "selectedTab" then
               if var0.HistoryField.field ~= arg2.HistoryField.field then
                  local var187 = {}
                  var187.selectedTab = var11.LAYER_TABS.History
                  arg1:setState(var187)
               end
            end
         end
      end
      local var192 = {}
      var192.selectedTab = var11.LAYER_TABS.History
      arg1:setState(var192)
   end
end

function var14.render(arg1, arg2)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.HistoryField and var0.HistoryField.id and var0.HistoryField.section and var0.HistoryField.field
   if var1.selectedTab == "selectedTab" then
      if var2 then
         if var1.selectedTab == "selectedTab" then
            if not arg1:isVisualizationEnabled(var0.LayerData) then
               local var157 = {}
               var157.selectedTab = var11.LAYER_TABS.LayerData
               arg1:setState(var157)
            end
         end
      end
   end
   if var1.selectedTab == "selectedTab" then
      if not arg1:isVisualizationEnabled(var0.LayerData) then
         local var169 = {}
         var169.selectedTab = var11.LAYER_TABS.LayerData
         arg1:setState(var169)
      end
   end
   if var2 then
      if arg2.HistoryField then
         if var0.HistoryField.id == "selectedTab" then
            if var0.HistoryField.section == "selectedTab" then
               if var0.HistoryField.field ~= arg2.HistoryField.field then
                  local var187 = {}
                  var187.selectedTab = var11.LAYER_TABS.History
                  arg1:setState(var187)
               end
            end
         end
      end
      local var192 = {}
      var192.selectedTab = var11.LAYER_TABS.History
      arg1:setState(var192)
   end
end

fun4 = var2.withContext
local var197 = {}
var197.Analytics = var2.Analytics
var197.Localization = var2.Localization
var197.Stylizer = var1.Style.Stylizer
var14 = fun4(var197)(var14)
var14 = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.HistoryField = arg1.Status.HistoryField
   return var0
end, function(arg1)
   return {}
end)(var14)
var14.Visualizers = require(script.Visualizers)
return var14
