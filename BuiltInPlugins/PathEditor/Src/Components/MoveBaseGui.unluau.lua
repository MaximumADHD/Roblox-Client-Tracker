-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Packages.React)
local var3 = var0.Src.Actions
local var4 = require(var3.PathChanged)
local var5 = require(var3.ToggleMoveTool)
local var6 = require(var0.Src.Thunks.SetPathPosition)
local var7 = require(var0.Src.Util.getAbsolutePosition)
local var8 = require(var0.Src.Util.getUDim2ScaleFromOffset)
local var9 = require(var0.Src.Components.DraggablePoint)
local var10 = var2.PureComponent:extend("MoveBaseGui")
local function fun7(arg1)
   local var0 = arg1.props
   if var0.SelectedObject then
      if var0.Path2DToolMode == "DoneEditing" then
         return nil
      end
   end
   return nil
   local var1 = var7(var0.SelectedObject.Parent)
   local var2 = var0.SelectedObject:GetBoundingRect2D()
   local var3 = var2.Min
   local var4 = var7(var0.SelectedObject) - var3
   local var5 = {}
   local var80 = {}
   var80.AbsoluteSize = Vector2.new(var2.Width, var2.Height)
   var80.AbsolutePosition = var3
   var80.Style = "RubberBand"
   function var80.OnSelected()
   end
   
   function var80.OnHover()
   end
   
   function var80.OnDeselected()
   end
   
   function var80.OnDragStart()
      local var83 = {}
      var83.extentsOffset = var4
      arg1:setState(var83)
   end
   
   function var80.OnDragMoved(arg1, arg2)
      if arg1.state.extentsOffset == "state" then
         local var0 = arg2 - var1 + arg1.state.extentsOffset
         local var106 = var0
         var106 = var8(UDim2.fromOffset(var0.X, var0.Y), var0.SelectedObject.Parent)
         var106.dispatchSetPathPosition(var106)
      end
   end
   
   function var80.OnDragEnd(arg1, arg2)
      if arg1.state.extentsOffset == "state" then
         local var0 = arg2 - var1 + arg1.state.extentsOffset
         local var128 = var0
         var128 = var8(UDim2.fromOffset(var0.X, var0.Y), var0.SelectedObject.Parent)
         var128.dispatchSetPathPosition(var128, true)
      end
   end
   
   function var80.OnDoubleClicked()
      var0.dispatchToggleMoveTool()
   end
   
   var5.RubberbandPane = var2.createElement(var9, var80)
   local var137 = {}
   local var138 = 2
   var137.DisplayOrder = var138
   var138 = var5
   return var2.createElement("ScreenGui", var137, var138)
end

function var10.render(arg1)
   local var0 = arg1.props
   if var0.SelectedObject then
      if var0.Path2DToolMode == "DoneEditing" then
         return nil
      end
   end
   return nil
   local var1 = var7(var0.SelectedObject.Parent)
   local var2 = var0.SelectedObject:GetBoundingRect2D()
   local var3 = var2.Min
   local var4 = var7(var0.SelectedObject) - var3
   local var5 = {}
   local var80 = {}
   var80.AbsoluteSize = Vector2.new(var2.Width, var2.Height)
   var80.AbsolutePosition = var3
   var80.Style = "RubberBand"
   function var80.OnSelected()
   end
   
   function var80.OnHover()
   end
   
   function var80.OnDeselected()
   end
   
   function var80.OnDragStart()
      local var83 = {}
      var83.extentsOffset = var4
      arg1:setState(var83)
   end
   
   function var80.OnDragMoved(arg1, arg2)
      if arg1.state.extentsOffset == "state" then
         local var0 = arg2 - var1 + arg1.state.extentsOffset
         local var106 = var0
         var106 = var8(UDim2.fromOffset(var0.X, var0.Y), var0.SelectedObject.Parent)
         var106.dispatchSetPathPosition(var106)
      end
   end
   
   function var80.OnDragEnd(arg1, arg2)
      if arg1.state.extentsOffset == "state" then
         local var0 = arg2 - var1 + arg1.state.extentsOffset
         local var128 = var0
         var128 = var8(UDim2.fromOffset(var0.X, var0.Y), var0.SelectedObject.Parent)
         var128.dispatchSetPathPosition(var128, true)
      end
   end
   
   function var80.OnDoubleClicked()
      var0.dispatchToggleMoveTool()
   end
   
   var5.RubberbandPane = var2.createElement(var9, var80)
   local var137 = {}
   local var138 = 2
   var137.DisplayOrder = var138
   var138 = var5
   return var2.createElement("ScreenGui", var137, var138)
end

fun7 = require(var0.Packages.Framework).ContextServices.withContext
var10 = fun7({})(var10)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.Refreshed = arg1.PathReducer.Refreshed
   var0.SelectedObject = arg1.PathReducer.SelectedObject
   var0.Path2DToolMode = arg1.PathReducer.Path2DToolMode
   var0.ControlPoints = arg1.PathReducer.ControlPoints
   var0.SelectedControlPointIndex = arg1.PathReducer.SelectedControlPointIndex
   return var0
end, function(arg1)
   local var0 = {}
   function var0.dispatchPathChanged()
   end
   
   function var0.dispatchToggleMoveTool()
   end
   
   function var0.dispatchSetPathPosition()
   end
   
   return var0
end)(var10)
