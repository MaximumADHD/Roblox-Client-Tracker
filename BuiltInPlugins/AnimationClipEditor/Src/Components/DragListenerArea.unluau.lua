-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.DragListener
local var5 = var1.PureComponent:extend("DragListenerArea")
function var5.init(arg1)
   local var185 = {}
   var185.Dragging = false
   arg1.state = var185
   function arg1.onMouseEnter()
      if arg1.props.Mouse then
         arg1.props.Mouse:__pushCursor(arg1.props.Cursor)
      end
   end
   
   function arg1.onMouseLeave()
      if arg1.props.Mouse then
         if not arg1.state.Dragging then
            arg1.props.Mouse:__popCursor()
         end
      end
   end
   
   function arg1.startDragging()
      if arg1.props.OnDragBegan then
         arg1.props.OnDragBegan()
      end
      local var214 = {}
      var214.Dragging = true
      arg1:setState(var214)
   end
   
   function arg1.onDragMoved(arg1)
      if arg1.props.OnDragMoved then
         local var222 = arg1.props
         var222 = arg1
         var222.OnDragMoved(var222)
      end
   end
   
end

function var5.didMount(arg1)
   local var0 = arg1.props.Mouse
   function arg1.stopDragging()
      if arg1.props.Mouse then
         arg1.props.Mouse:__pushCursor(arg1.props.Cursor)
      end
   end
   
end

function var5.willUnmount(arg1)
   arg1.props.Mouse:__resetCursor()
end

local function fun11(arg1)
   local var0 = arg1.props
   local var260 = {}
   var260.Size = var0.Size or UDim2.new(1, 0, 1, 0)
   var260.AnchorPoint = var0.AnchorPoint or Vector2.new()
   var260.ImageTransparency = 1
   var260.BackgroundTransparency = 1
   var1.Event.MouseEnter = arg1.onMouseEnter
   var1.Event.MouseLeave = arg1.onMouseLeave
   local var1 = arg1.startDragging
   var1.Event.MouseButton1Down = var1
   local var275 = {}
   var1 = arg1.state.Dragging
   if var1 then
      local var279 = {}
      var279.OnDragMoved = arg1.onDragMoved
      var279.OnDragEnded = arg1.stopDragging
      local var0 = var1.createElement(var4, var279)
   end
   var275.Target = var1
   return var1.createElement("ImageButton", var260, var275)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var260 = {}
   var260.Size = var0.Size or UDim2.new(1, 0, 1, 0)
   var260.AnchorPoint = var0.AnchorPoint or Vector2.new()
   var260.ImageTransparency = 1
   var260.BackgroundTransparency = 1
   var1.Event.MouseEnter = arg1.onMouseEnter
   var1.Event.MouseLeave = arg1.onMouseLeave
   local var1 = arg1.startDragging
   var1.Event.MouseButton1Down = var1
   local var275 = {}
   var1 = arg1.state.Dragging
   if var1 then
      local var279 = {}
      var279.OnDragMoved = arg1.onDragMoved
      var279.OnDragEnded = arg1.stopDragging
      local var0 = var1.createElement(var4, var279)
   end
   var275.Target = var1
   return var1.createElement("ImageButton", var260, var275)
end

fun11 = var3.withContext
local var284 = {}
var284.Mouse = var3.Mouse
var5 = fun11(var284)(var5)
return var5
