-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = var0.Packages.DraggerFramework
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = require(var2.DraggerTools.DraggerToolComponent)
local var5 = require(var2.Handles.MoveHandles)
local var6 = require(var2.Handles.RotateHandles)
local var7 = require(var0.Src.DraggerSchemaPivot.PivotHandle)
local var8 = require(var0.Src.DraggerSchemaPivot.DraggerSchema)
local var9 = require(var0.Src.DraggerSchemaPivot.DraggerContext_Pivot)
local var10 = require(var0.Src.RoduxComponents.SelectionUpdaterBound)
local var11 = require(var0.Src.Actions.BeginSelectingPivot)
local var12 = require(var0.Src.Actions.DoneSelectingPivot)
local var13 = require(var0.Src.Utility.EditingMode)
local var14 = require(var0.Src.Utility.StatusMessage)
local var15 = var1.PureComponent:extend("EditPivotSession")
local function fun0(arg1)
   if arg1 ~= var14.None then
      if arg1 == "NoSelection" then
         return false
      end
   end
   return false
   return true
end

function var15.didMount(arg1)
   local var234 = var14
   if arg1.props.statusMessage ~= var234.None then
      local var0 = false
   end
   var234 = true
   arg1._oldShowPivot = arg1._draggerContext:setPivotIndicator(var234)
end

function var15._getCurrentDraggerHandles(arg1)
   if arg1.props.editingMode == "Transform" then
      local var250 = {}
      var250.Outset = 0.5
      var250.ShowBoundingBox = false
      var250.Summonable = false
      var250.MustPositionAtPivot = true
      local var1 = var5.new(arg1._draggerContext, var250, var8.MoveHandlesImplementation.new(arg1._draggerContext, "EditPivot"))
      local var265 = {}
      var265.ShowBoundingBox = false
      var265.Summonable = false
      local var2 = var6.new(arg1._draggerContext, var265, var8.RotateHandlesImplementation.new(arg1._draggerContext, "EditPivot"))
      local var3 = var7.new(arg1._draggerContext)
      return {}
   end
   return {}
end

function var15.render(arg1)
   local var0 = arg1.props.editingMode
   local var1 = {}
   local var2 = arg1.props.Plugin:get()
   local var3 = var2:GetMouse()
   arg1._draggerContext = arg1.props.DraggerContext
   if not arg1._draggerContext then
      local var293 = var9
      var293 = var2
      arg1._draggerContext = var293.new(var293, game, settings(), var8.Selection.new())
   end
   if var0 ~= var13.Transform then
      if var0 == "DraggerContext" then
         if var0 ~= var13.Transform then
            local var0 = false
         end
         local var314 = {}
         var314.Mouse = var3
         var314.DraggerContext = arg1._draggerContext
         var314.DraggerSchema = var8
         local var0 = {}
         var0.AnalyticsName = "EditPivot"
         var0.AllowDragSelect = false
         var0.AllowFreeformDrag = true
         var0.ShowLocalSpaceIndicator = false
         var0.HandlesList = arg1:_getCurrentDraggerHandles()
         var314.DraggerSettings = var0
         var1.DraggerToolComponent = var1.createElement(var4, var314)
      end
   end
   if var0 ~= var13.Transform then
      local var0 = false
   end
   local var331 = {}
   var331.Mouse = var3
   var331.DraggerContext = arg1._draggerContext
   var331.DraggerSchema = var8
   local var4 = {}
   var4.AnalyticsName = "EditPivot"
   var4.AllowDragSelect = false
   var4.AllowFreeformDrag = true
   var4.ShowLocalSpaceIndicator = false
   var4.HandlesList = arg1:_getCurrentDraggerHandles()
   var331.DraggerSettings = var4
   var1.DraggerToolComponent = var1.createElement(var4, var331)
   var1.SelectionUpdaterBound = var1.createElement(var10)
   local var345 = var1
   var345 = var1
   return var345.createFragment(var345)
end

function var15.willUpdate(arg1, arg2, arg3)
   local var0 = arg2.statusMessage
   if var0 ~= var14.None then
      local var0 = false
   end
   arg1._draggerContext:setPivotIndicator(true)
   local var1 = arg1.props.statusMessage
   if var1 ~= var0 then
      if var1 ~= var14.None then
         arg1.props.ToastNotification:hideNotification(var1)
      end
      if var0 ~= var14.None then
         if var0 == "NoSelection" then
            local var0 = false
         else
            local var0 = true
         end
      end
      local var373 = false
      if true then
         arg1.props.ToastNotification:showNotification(arg1.props.Localization:getText("Notification", var0), var0)
      end
   end
end

local function fun12(arg1)
   arg1._draggerContext:setPivotIndicator(arg1._oldShowPivot)
end

function var15.willUnmount(arg1)
   arg1._draggerContext:setPivotIndicator(arg1._oldShowPivot)
end

fun12 = var3.withContext
local var390 = {}
var390.Localization = var3.Localization
var390.Plugin = var3.Plugin
var390.ToastNotification = require(var0.Src.Utility.ToastNotification)
var15 = fun12(var390)(var15)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.editingMode = arg1.editingMode
   var0.statusMessage = arg1.statusMessage
   var0.targetObject = arg1.targetObject
   return var0
end, function(arg1)
   local var0 = {}
   function var0.beginSelectingPivot(arg1)
      if arg1 ~= var14.None then
         if arg1 == "NoSelection" then
            return false
         end
      end
      return false
      return true
   end
   
   function var0.doneSelectingPivot(arg1)
      local var415 = var14
      if arg1.props.statusMessage ~= var415.None then
         local var0 = false
      end
      var415 = true
      arg1._oldShowPivot = arg1._draggerContext:setPivotIndicator(var415)
   end
   
   return var0
end)(var15)
