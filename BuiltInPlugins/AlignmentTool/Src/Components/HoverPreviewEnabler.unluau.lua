-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("UserInputService")
local var1 = game:GetService("RunService")
local var2 = script.Parent.Parent.Parent
local var3 = require(var2.Packages.Roact)
local var4 = require(var2.Src.Actions.SetPreviewVisible)
local var5 = var3.PureComponent:extend("HoverPreviewEnabler")
function var5.init(arg1)
   function arg1.mouseMoved()
      if not arg1.props.previewVisible then
         arg1.props.setPreviewVisible(true)
      end
   end
   
   function arg1.mouseLeave()
      arg1.props.setPreviewVisible(false)
   end
   
end

function var5.didMount(arg1)
   local var0 = var0:GetMouseLocation()
   var1:BindToRenderStep("getMouseLocation", 1, function()
      if not arg1.props.previewVisible then
         arg1.props.setPreviewVisible(true)
      end
   end)
end

function var5.willUnmount(arg1)
   arg1.mouseLeave()
   var1:UnbindFromRenderStep("getMouseLocation")
end

function var5.render(arg1)
   local var65 = {}
   var65.BackgroundTransparency = 1
   var65.Size = UDim2.new(1, 0, 1, 0)
   var3.Event.MouseMoved = arg1.mouseMoved
   var3.Event.MouseLeave = arg1.mouseLeave
   return var3.createElement("Frame", var65, arg1.props[var3.Children])
end

return require(var2.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.previewVisible = arg1.previewVisible
   return var0
end, function(arg1)
   local var0 = {}
   function var0.setPreviewVisible()
      if not arg1.props.previewVisible then
         arg1.props.setPreviewVisible(true)
      end
   end
   
   return var0
end)(var5)
