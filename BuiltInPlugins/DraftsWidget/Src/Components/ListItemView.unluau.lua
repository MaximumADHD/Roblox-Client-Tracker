-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Components.AbstractItemView)
local var3 = require(var0.Packages.Framework).UI
local var4 = var3.Pane
local var5 = var3.ScrollingFrame
local var6 = var1.Component:extend("ListItemView")
function var6.init(arg1)
   arg1:setState({})
   arg1.canvasRef = var1.createRef()
   function arg1.contentSizeChanged(arg1)
      local var0 = arg1.canvasRef.current
      if var0 then
         var0.CanvasSize = UDim2.new(1, 0, 0, arg1.Y)
      end
   end
   
end

function var6.render(arg1)
   local var0 = arg1.props.ItemHeight
   local var1 = arg1.props.VerticalAlignment
   local var2 = arg1.props.Padding
   local var64 = {}
   var64.Size = UDim2.new(1, 0, 1, 0)
   var64.GetCurrentSelection = arg1.props.GetCurrentSelection
   var64.OnDoubleClicked = arg1.props.OnDoubleClicked
   var64.OnSelectionChanged = arg1.props.OnSelectionChanged
   var64.MakeMenuActions = arg1.props.MakeMenuActions
   var64.ButtonStyle = arg1.props.ButtonStyle
   var64.Items = arg1.props.Items
   var64.RenderItem = arg1.props.RenderItem
   function var64.RenderContents(arg1)
      local var0 = arg1.canvasRef.current
      if var0 then
         var0.CanvasSize = UDim2.new(1, 0, 0, arg1.Y)
      end
   end
   
   return var1.createElement(var2, var64)
end

return var6
