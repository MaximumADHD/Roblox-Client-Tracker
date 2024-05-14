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
   local var228 = var14
   if arg1.props.statusMessage ~= var228.None then
      local var0 = false
   end
   var228 = true
   arg1._oldShowPivot = arg1._draggerContext:setPivotIndicator(var228)
end

function var15._getCurrentDraggerHandles(arg1)
   if arg1.props.editingMode == "Transform" then
      local var244 = {}
      var244.Outset = 0.5
      var244.ShowBoundingBox = false
      var244.Summonable = false
      var244.MustPositionAtPivot = true
      local var1 = var5.new(arg1._draggerContext, var244, var8.MoveHandlesImplementation.new(arg1._draggerContext, "EditPivot"))
      local var259 = {}
      var259.ShowBoundingBox = false
      var259.Summonable = false
      local var2 = var6.new(arg1._draggerContext, var259, var8.RotateHandlesImplementation.new(arg1._draggerContext, "EditPivot"))
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
      local var287 = var9
      var287 = var2
      arg1._draggerContext = var287.new(var287, game, settings(), var8.Selection.new())
   end
   if var0 ~= var13.Transform then
      if var0 == "DraggerContext" then
         if var0 ~= var13.Transform then
            local var0 = false
         end
         local var308 = {}
         var308.Mouse = var3
         var308.DraggerContext = arg1._draggerContext
         var308.DraggerSchema = var8
         local var0 = {}
         var0.AnalyticsName = "EditPivot"
         var0.AllowDragSelect = false
         var0.AllowFreeformDrag = true
         var0.ShowLocalSpaceIndicator = false
         var0.HandlesList = arg1:_getCurrentDraggerHandles()
         var308.DraggerSettings = var0
         var1.DraggerToolComponent = var1.createElement(var4, var308)
      end
   end
   if var0 ~= var13.Transform then
      local var0 = false
   end
   local var325 = {}
   var325.Mouse = var3
   var325.DraggerContext = arg1._draggerContext
   var325.DraggerSchema = var8
   local var4 = {}
   var4.AnalyticsName = "EditPivot"
   var4.AllowDragSelect = false
   var4.AllowFreeformDrag = true
   var4.ShowLocalSpaceIndicator = false
   var4.HandlesList = arg1:_getCurrentDraggerHandles()
   var325.DraggerSettings = var4
   var1.DraggerToolComponent = var1.createElement(var4, var325)
   var1.SelectionUpdaterBound = var1.createElement(var10)
   local var339 = var1
   var339 = var1
   return var339.createFragment(var339)
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
      local var367 = false
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
local var384 = {}
var384.Localization = var3.Localization
var384.Plugin = var3.Plugin
var384.ToastNotification = require(var0.Src.Utility.ToastNotification)
var15 = fun12(var384)(var15)
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
      local var409 = var14
      if arg1.props.statusMessage ~= var409.None then
         local var0 = false
      end
      var409 = true
      arg1._oldShowPivot = arg1._draggerContext:setPivotIndicator(var409)
   end
   
   return var0
end)(var15)
