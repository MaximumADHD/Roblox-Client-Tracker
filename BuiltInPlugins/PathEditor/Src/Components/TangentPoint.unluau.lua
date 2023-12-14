-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Packages.Framework)
local var4 = game:GetService("UserInputService")
local var5 = var0.Src.Actions
local var6 = require(var5.LockSelectedControlPoint)
local var7 = require(var5.SelectTangentSide)
local var8 = var0.Src.Thunks
local var9 = require(var8.AddWaypoint)
local var10 = require(var8.SelectControlPoint)
local var11 = require(var8.ClearControlPointTangent)
local var12 = require(var8.SetControlPointTangent)
local var13 = require(var0.Src.Resources.Constants)
local var14 = require(var0.Src.Components.DraggablePoint)
local var15 = Enum.KeyCode.LeftShift
local var16 = Enum.KeyCode.LeftControl
local var17 = var2.Component:extend("TangentPoint")
function var17.render(arg1)
   local var0 = arg1.props
   if var0.isPhantom then
      local var0 = "PhantomTangent"
   end
   local var1 = var0.isSelected
   if var1 then
      if var0.SelectedTangentSide ~= var0.side then
         local var0 = false
      end
      local var0 = true
   end
   local var75 = {}
   var75.ZIndex = 1
   var75.AbsolutePosition = var0.absolutePosition
   var75.FollowCursorOnDrag = false
   var75.Style = "Tangent"
   var75.IsSelected = var1
   function var75.OnSelected()
      var0.dispatchSelectControlPoint(var0.index)
      var0.dispatchSelectTangentSide(var0.side)
   end
   
   function var75.OnDoubleClicked()
      var0.dispatchClearControlPointTangent(var0.index, var0.side)
   end
   
   function var75.OnDragStart()
      var0.dispatchAddWaypoint()
      var0.dispatchSelectControlPoint(var0.index)
      var0.dispatchLockSelectedControlPoint(true)
   end
   
   function var75.OnDragMoved(arg1, arg2)
      local var116 = var0
      var116 = var0.position + arg2 - arg1
      var0.dispatchSetControlPointTangent(var0.index, var116.side, var116, false, var4:IsKeyDown(var15))
   end
   
   function var75.OnDragEnd(arg1, arg2)
      var0.dispatchLockSelectedControlPoint(false)
   end
   
   return var2.createElement(var14, var75)
end

return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.LockSelectedControlPoint = arg1.PathReducer.LockSelectedControlPoint
   var0.SelectedTangentSide = arg1.PathReducer.SelectedTangentSide
   return var0
end, function(arg1)
   local var0 = {}
   function var0.dispatchAddWaypoint()
      var0.dispatchSelectControlPoint(var0.index)
      var0.dispatchSelectTangentSide(var0.side)
   end
   
   function var0.dispatchClearControlPointTangent()
      var0.dispatchClearControlPointTangent(var0.index, var0.side)
   end
   
   function var0.dispatchSelectControlPoint()
      var0.dispatchAddWaypoint()
      var0.dispatchSelectControlPoint(var0.index)
      var0.dispatchLockSelectedControlPoint(true)
   end
   
   function var0.dispatchSelectTangentSide(arg1, arg2)
      local var173 = var0
      var173 = var0.position + arg2 - arg1
      var0.dispatchSetControlPointTangent(var0.index, var173.side, var173, false, var4:IsKeyDown(var15))
   end
   
   function var0.dispatchSetControlPointTangent(arg1, arg2)
      var0.dispatchLockSelectedControlPoint(false)
   end
   
   function var0.dispatchLockSelectedControlPoint(arg1)
      local var0 = arg1.props
      if var0.isPhantom then
         local var0 = "PhantomTangent"
      end
      local var1 = var0.isSelected
      if var1 then
         if var0.SelectedTangentSide ~= var0.side then
            local var0 = false
         end
         local var0 = true
      end
      local var195 = {}
      var195.ZIndex = 1
      var195.AbsolutePosition = var0.absolutePosition
      var195.FollowCursorOnDrag = false
      var195.Style = "Tangent"
      var195.IsSelected = var1
      function var195.OnSelected()
         var0.dispatchSelectControlPoint(var0.index)
         var0.dispatchSelectTangentSide(var0.side)
      end
      
      function var195.OnDoubleClicked()
         var0.dispatchClearControlPointTangent(var0.index, var0.side)
      end
      
      function var195.OnDragStart()
         var0.dispatchAddWaypoint()
         var0.dispatchSelectControlPoint(var0.index)
         var0.dispatchLockSelectedControlPoint(true)
      end
      
      function var195.OnDragMoved(arg1, arg2)
         local var236 = var0
         var236 = var0.position + arg2 - arg1
         var0.dispatchSetControlPointTangent(var0.index, var236.side, var236, false, var4:IsKeyDown(var15))
      end
      
      function var195.OnDragEnd(arg1, arg2)
         var0.dispatchLockSelectedControlPoint(false)
      end
      
      return var2.createElement(var14, var195)
   end
   
   return var0
end)(var17)
