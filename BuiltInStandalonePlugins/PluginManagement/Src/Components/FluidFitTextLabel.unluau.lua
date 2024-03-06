-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Packages.Roact)
local var3 = require(var0.Packages.FitFrame)
local var4 = var3.FitFrameVertical
local var5 = var3.FitTextLabel
local var6 = var2.Component:extend("FluidFitTextLabel")
function var6.init(arg1)
   local var23 = {}
   var23.frameWidth = 0
   arg1.state = var23
   function arg1.resizeContainer(arg1)
      if arg1.state.frameWidth ~= arg1.AbsoluteSize.X then
         local var32 = {}
         var32.frameWidth = arg1.AbsoluteSize.X
         arg1:setState(var32)
      end
   end
   
end

function var6.render(arg1)
   local var43 = {}
   var43.maximumWidth = arg1.state.frameWidth
   var43.width = UDim.new(1, 0)
   local var54 = {}
   var54.BackgroundTransparency = 1
   var54.LayoutOrder = arg1.props.LayoutOrder
   var54.width = UDim.new(1, 0)
   var2.Change.AbsoluteSize = arg1.resizeContainer
   local var64 = {}
   var64.Text = var2.createElement(var5, var1.Dictionary.join(arg1.props, var43))
   return var2.createElement(var4, var54, var64)
end

return var6
