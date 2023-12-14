-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Cryo)
local var4 = require(var0.Core.Util.DebugFlags)
local var5 = var2.PureComponent:extend("DraggableButton")
function var5.init(arg1, arg2)
   arg1.clicked = false
   arg1.clickPosition = Vector2.new(0, 0)
   arg1.willFireClickOnMouseUp = false
   if var4.shouldDebugWarnings() then
      if arg2[var2.Event.MouseButton1Down] then
         warn("MouseButton1Down should not be defined on DraggableButton. Use onMouseDown instead.")
      end
      if arg2[var2.Event.MouseMoved] then
         warn("MouseButton1Down should not be defined on DraggableButton. Use onMouseMoved instead.")
      end
      if arg2[var2.Event.MouseButton1Up] then
         warn("MouseButton1Up should not be defined on DraggableButton. Use onMouseUp instead.")
      end
   end
   function arg1.onMouseButton1Down(arg1, arg2, arg3)
      arg1.clicked = true
      arg1.clickPosition = Vector2.new(arg2, arg3)
      arg1.willFireClickOnMouseUp = true
      if arg2.onMouseDown then
         local var63 = arg2
         var63 = arg1
         var63.onMouseDown(var63, arg2, arg3)
      end
   end
   
   function arg1.onMouseMoved(arg1, arg2, arg3)
      if arg1.clicked then
         if arg1.willFireClickOnMouseUp then
            local var0 = arg1
            local var1 = var0.clickPosition
            if 4 < Vector2.new(arg2, arg3) - var1.magnitude then
               arg1.willFireClickOnMouseUp = false
               if arg2.onDragStart then
                  local var87 = arg2
                  var87 = arg1
                  var1 = arg2
                  var0 = arg3
                  var87.onDragStart(var87, var1, var0)
               end
            end
         end
      end
      if arg2.onMouseMoved then
         local var91 = arg2
         var91 = arg1
         var91.onMouseMoved(var91, arg2, arg3)
      end
   end
   
   function arg1.onMouseButton1Up(arg1, arg2, arg3)
      arg1.clicked = false
      arg1.clickPosition = Vector2.new(arg2, arg3)
      if arg1.willFireClickOnMouseUp then
         arg1.willFireClickOnMouseUp = false
         if arg2.onClick then
            local var111 = arg2
            var111 = arg1
            var111.onClick(var111, arg2, arg3)
         end
      end
      if arg2.onMouseUp then
         local var117 = arg2
         var117 = arg1
         var117.onMouseUp(var117, arg2, arg3)
      end
   end
   
end

function var5.render(arg1)
   local var0 = nil
   local var127 = {}
   var2.Event.MouseButton1Down = arg1.onMouseButton1Down
   var2.Event.MouseMoved = arg1.onMouseMoved
   var2.Event.MouseButton1Up = arg1.onMouseButton1Up
   var127.onDragStart = var3.None
   var127.onClick = var3.None
   var127.onMouseDown = var3.None
   var127.onMouseMoved = var3.None
   var127.onMouseUp = var3.None
   var0 = var3.Dictionary.join(arg1.props, var127)
   return var2.createElement("ImageButton", var0)
end

return var5
