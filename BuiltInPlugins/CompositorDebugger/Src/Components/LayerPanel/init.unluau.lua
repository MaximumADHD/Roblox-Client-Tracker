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
local var15 = require(var0.LuaFlags.GetFFlagFixHistory)
local var16 = require(var0.Src.Types)
local var17 = require(var0.Packages.React).PureComponent:extend("LayerPanel")
function var17.init(arg1)
   local var64 = {}
   var64.selectedTab = var11.LAYER_TABS.LayerData
   arg1.state = var64
   function arg1.switchToTab(arg1)
      local var70 = {}
      var70.selectedTab = arg1
      arg1:setState(var70)
   end
   
end

function var17.isVisualizationEnabled(arg1, arg2)
   local var0 = {}
   var0.Blend1D = true
   local var76 = true
   var0.Blend2D = var76
   var76 = arg2
   return var76 and var0[arg2.className]
end

function var17.didUpdate(arg1, arg2)
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
                     local var116 = {}
                     var116.selectedTab = var11.LAYER_TABS.LayerData
                     arg1:setState(var116)
                  end
               else
                  local var121 = {}
                  var121.selectedTab = var11.LAYER_TABS.LayerData
                  arg1:setState(var121)
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
               local var144 = {}
               var144.selectedTab = var11.LAYER_TABS.LayerData
               arg1:setState(var144)
            end
         else
            local var149 = {}
            var149.selectedTab = var11.LAYER_TABS.LayerData
            arg1:setState(var149)
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
                  local var178 = {}
                  var178.selectedTab = var11.LAYER_TABS.History
                  arg1:setState(var178)
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
      local var194 = {}
      var194.selectedTab = var11.LAYER_TABS.History
      arg1:setState(var194)
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
                     local var235 = {}
                     var235.selectedTab = var11.LAYER_TABS.LayerData
                     arg1:setState(var235)
                  end
               else
                  local var240 = {}
                  var240.selectedTab = var11.LAYER_TABS.LayerData
                  arg1:setState(var240)
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
               local var263 = {}
               var263.selectedTab = var11.LAYER_TABS.LayerData
               arg1:setState(var263)
            end
         else
            local var268 = {}
            var268.selectedTab = var11.LAYER_TABS.LayerData
            arg1:setState(var268)
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
                  local var297 = {}
                  var297.selectedTab = var11.LAYER_TABS.History
                  arg1:setState(var297)
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
      local var313 = {}
      var313.selectedTab = var11.LAYER_TABS.History
      arg1:setState(var313)
   end
end

function var17.render(arg1, arg2)
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
                     local var235 = {}
                     var235.selectedTab = var11.LAYER_TABS.LayerData
                     arg1:setState(var235)
                  end
               else
                  local var240 = {}
                  var240.selectedTab = var11.LAYER_TABS.LayerData
                  arg1:setState(var240)
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
               local var263 = {}
               var263.selectedTab = var11.LAYER_TABS.LayerData
               arg1:setState(var263)
            end
         else
            local var268 = {}
            var268.selectedTab = var11.LAYER_TABS.LayerData
            arg1:setState(var268)
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
                  local var297 = {}
                  var297.selectedTab = var11.LAYER_TABS.History
                  arg1:setState(var297)
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
      local var313 = {}
      var313.selectedTab = var11.LAYER_TABS.History
      arg1:setState(var313)
   end
end

fun4 = var2.withContext
local var318 = {}
var318.Analytics = var2.Analytics
var318.Localization = var2.Localization
var318.Stylizer = var1.Style.Stylizer
var17 = fun4(var318)(var17)
var17 = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.HistoryField = arg1.Status.HistoryField
   return var0
end, function(arg1)
   return {}
end)(var17)
var17.Visualizers = require(script.Visualizers)
return var17
