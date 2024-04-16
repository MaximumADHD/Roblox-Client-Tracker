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
   local var2 = var7(var0.SelectedObject)
   local var3 = var0.SelectedObject:GetBoundingRect()
   local var4 = {}
   local var79 = {}
   var79.AbsoluteSize = Vector2.new(var3.Width, var3.Height)
   var79.AbsolutePosition = var3.Min
   var79.Style = "RubberBand"
   function var79.OnSelected()
   end
   
   function var79.OnHover()
   end
   
   function var79.OnDeselected()
   end
   
   function var79.OnDragStart()
      local var82 = {}
      var82.extentsOffset = var2
      arg1:setState(var82)
   end
   
   function var79.OnDragMoved(arg1, arg2)
      if arg1.state.extentsOffset == "state" then
         local var0 = arg2 - var1 + arg1.state.extentsOffset
         local var105 = var0
         var105 = var8(UDim2.fromOffset(var0.X, var0.Y), var0.SelectedObject.Parent)
         var105.dispatchSetPathPosition(var105)
      end
   end
   
   function var79.OnDragEnd(arg1, arg2)
      if arg1.state.extentsOffset == "state" then
         local var0 = arg2 - var1 + arg1.state.extentsOffset
         local var127 = var0
         var127 = var8(UDim2.fromOffset(var0.X, var0.Y), var0.SelectedObject.Parent)
         var127.dispatchSetPathPosition(var127, true)
      end
   end
   
   function var79.OnDoubleClicked()
      var0.dispatchToggleMoveTool()
   end
   
   var4.RubberbandPane = var2.createElement(var9, var79)
   local var136 = {}
   local var137 = 2
   var136.DisplayOrder = var137
   var137 = var4
   return var2.createElement("ScreenGui", var136, var137)
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
   local var2 = var7(var0.SelectedObject)
   local var3 = var0.SelectedObject:GetBoundingRect()
   local var4 = {}
   local var79 = {}
   var79.AbsoluteSize = Vector2.new(var3.Width, var3.Height)
   var79.AbsolutePosition = var3.Min
   var79.Style = "RubberBand"
   function var79.OnSelected()
   end
   
   function var79.OnHover()
   end
   
   function var79.OnDeselected()
   end
   
   function var79.OnDragStart()
      local var82 = {}
      var82.extentsOffset = var2
      arg1:setState(var82)
   end
   
   function var79.OnDragMoved(arg1, arg2)
      if arg1.state.extentsOffset == "state" then
         local var0 = arg2 - var1 + arg1.state.extentsOffset
         local var105 = var0
         var105 = var8(UDim2.fromOffset(var0.X, var0.Y), var0.SelectedObject.Parent)
         var105.dispatchSetPathPosition(var105)
      end
   end
   
   function var79.OnDragEnd(arg1, arg2)
      if arg1.state.extentsOffset == "state" then
         local var0 = arg2 - var1 + arg1.state.extentsOffset
         local var127 = var0
         var127 = var8(UDim2.fromOffset(var0.X, var0.Y), var0.SelectedObject.Parent)
         var127.dispatchSetPathPosition(var127, true)
      end
   end
   
   function var79.OnDoubleClicked()
      var0.dispatchToggleMoveTool()
   end
   
   var4.RubberbandPane = var2.createElement(var9, var79)
   local var136 = {}
   local var137 = 2
   var136.DisplayOrder = var137
   var137 = var4
   return var2.createElement("ScreenGui", var136, var137)
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
