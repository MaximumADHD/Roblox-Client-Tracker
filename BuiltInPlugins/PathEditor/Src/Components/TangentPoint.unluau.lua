-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Packages.React)
local var3 = game:GetService("UserInputService")
local var4 = require(var0.Packages.Framework).ContextServices
local var5 = var0.Src.Actions
local var6 = require(var5.LockSelectedControlPoint)
local var7 = require(var5.SelectTangentSide)
local var8 = var0.Src.Thunks
local var9 = require(var8.RecordChangeHistory)
local var10 = require(var8.SelectControlPoint)
local var11 = require(var8.ClearControlPointTangent)
local var12 = require(var8.SetControlPointTangent)
local var13 = require(var8.OpenContextMenu)
local var14 = require(var0.Src.Resources.Constants)
local var15 = require(var0.Src.Components.DraggablePoint)
local var16 = Enum.KeyCode.LeftShift
local var17 = Enum.KeyCode.LeftControl
local var18 = var2.Component:extend("TangentPoint")
local function fun6(arg1)
   local var0 = arg1.props
   if var0.isPhantom then
      local var0 = "PhantomTangent"
   end
   if var0.SelectedTangentSide ~= var0.side then
      local var0 = false
   end
   local var81 = {}
   var81.ZIndex = 1
   var81.AbsolutePosition = var0.absolutePosition
   var81.FollowCursorOnDrag = false
   var81.Style = "Tangent"
   var81.IsSelected = true
   function var81.OnSelected()
      var0.dispatchSelectControlPoint(var0.index)
      var0.dispatchSelectTangentSide(var0.side)
   end
   
   function var81.OnDoubleClicked()
      var0.dispatchClearControlPointTangent(var0.index, var0.side)
   end
   
   function var81.OnDragStart()
      var0.dispatchRecordChangeHistory("Move Tangent")
      var0.dispatchSelectControlPoint(var0.index)
      var0.dispatchLockSelectedControlPoint(true)
   end
   
   function var81.OnDragMoved(arg1, arg2)
      local var123 = var0
      var123 = var0.position + arg2 - arg1
      var0.dispatchSetControlPointTangent(var0.index, var123.side, var123, false, var3:IsKeyDown(var16))
   end
   
   function var81.OnDragEnd(arg1, arg2)
      var0.dispatchLockSelectedControlPoint(false)
      var0.dispatchRecordChangeHistory()
   end
   
   function var81.OnRightClicked()
      var0.dispatchSelectControlPoint(var0.index)
      var0.dispatchSelectTangentSide(var0.side)
      var0.dispatchOpenContextMenu(var0.PluginContext, var0.Localization)
   end
   
   return var2.createElement(var15, var81)
end

function var18.render(arg1)
   local var0 = arg1.props
   if var0.isPhantom then
      local var0 = "PhantomTangent"
   end
   if var0.SelectedTangentSide ~= var0.side then
      local var0 = false
   end
   local var81 = {}
   var81.ZIndex = 1
   var81.AbsolutePosition = var0.absolutePosition
   var81.FollowCursorOnDrag = false
   var81.Style = "Tangent"
   var81.IsSelected = true
   function var81.OnSelected()
      var0.dispatchSelectControlPoint(var0.index)
      var0.dispatchSelectTangentSide(var0.side)
   end
   
   function var81.OnDoubleClicked()
      var0.dispatchClearControlPointTangent(var0.index, var0.side)
   end
   
   function var81.OnDragStart()
      var0.dispatchRecordChangeHistory("Move Tangent")
      var0.dispatchSelectControlPoint(var0.index)
      var0.dispatchLockSelectedControlPoint(true)
   end
   
   function var81.OnDragMoved(arg1, arg2)
      local var123 = var0
      var123 = var0.position + arg2 - arg1
      var0.dispatchSetControlPointTangent(var0.index, var123.side, var123, false, var3:IsKeyDown(var16))
   end
   
   function var81.OnDragEnd(arg1, arg2)
      var0.dispatchLockSelectedControlPoint(false)
      var0.dispatchRecordChangeHistory()
   end
   
   function var81.OnRightClicked()
      var0.dispatchSelectControlPoint(var0.index)
      var0.dispatchSelectTangentSide(var0.side)
      var0.dispatchOpenContextMenu(var0.PluginContext, var0.Localization)
   end
   
   return var2.createElement(var15, var81)
end

fun6 = var4.withContext
local var149 = {}
var149.PluginContext = var4.Plugin
var149.Localization = var4.Localization
var18 = fun6(var149)(var18)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.LockSelectedControlPoint = arg1.PathReducer.LockSelectedControlPoint
   var0.SelectedTangentSide = arg1.PathReducer.SelectedTangentSide
   return var0
end, function(arg1)
   local var0 = {}
   function var0.dispatchRecordChangeHistory()
      var0.dispatchSelectControlPoint(var0.index)
      var0.dispatchSelectTangentSide(var0.side)
   end
   
   function var0.dispatchClearControlPointTangent()
      var0.dispatchClearControlPointTangent(var0.index, var0.side)
   end
   
   function var0.dispatchSelectControlPoint()
      var0.dispatchRecordChangeHistory("Move Tangent")
      var0.dispatchSelectControlPoint(var0.index)
      var0.dispatchLockSelectedControlPoint(true)
   end
   
   function var0.dispatchSelectTangentSide(arg1, arg2)
      local var201 = var0
      var201 = var0.position + arg2 - arg1
      var0.dispatchSetControlPointTangent(var0.index, var201.side, var201, false, var3:IsKeyDown(var16))
   end
   
   function var0.dispatchSetControlPointTangent(arg1, arg2)
      var0.dispatchLockSelectedControlPoint(false)
      var0.dispatchRecordChangeHistory()
   end
   
   function var0.dispatchLockSelectedControlPoint()
      var0.dispatchSelectControlPoint(var0.index)
      var0.dispatchSelectTangentSide(var0.side)
      var0.dispatchOpenContextMenu(var0.PluginContext, var0.Localization)
   end
   
   function var0.dispatchOpenContextMenu(arg1)
      local var0 = arg1.props
      if var0.isPhantom then
         local var0 = "PhantomTangent"
      end
      if var0.SelectedTangentSide ~= var0.side then
         local var0 = false
      end
      local var238 = {}
      var238.ZIndex = 1
      var238.AbsolutePosition = var0.absolutePosition
      var238.FollowCursorOnDrag = false
      var238.Style = "Tangent"
      var238.IsSelected = true
      function var238.OnSelected()
         var0.dispatchSelectControlPoint(var0.index)
         var0.dispatchSelectTangentSide(var0.side)
      end
      
      function var238.OnDoubleClicked()
         var0.dispatchClearControlPointTangent(var0.index, var0.side)
      end
      
      function var238.OnDragStart()
         var0.dispatchRecordChangeHistory("Move Tangent")
         var0.dispatchSelectControlPoint(var0.index)
         var0.dispatchLockSelectedControlPoint(true)
      end
      
      function var238.OnDragMoved(arg1, arg2)
         local var280 = var0
         var280 = var0.position + arg2 - arg1
         var0.dispatchSetControlPointTangent(var0.index, var280.side, var280, false, var3:IsKeyDown(var16))
      end
      
      function var238.OnDragEnd(arg1, arg2)
         var0.dispatchLockSelectedControlPoint(false)
         var0.dispatchRecordChangeHistory()
      end
      
      function var238.OnRightClicked()
         var0.dispatchSelectControlPoint(var0.index)
         var0.dispatchSelectTangentSide(var0.side)
         var0.dispatchOpenContextMenu(var0.PluginContext, var0.Localization)
      end
      
      return var2.createElement(var15, var238)
   end
   
   return var0
end)(var18)
