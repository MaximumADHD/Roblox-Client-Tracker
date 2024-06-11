-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Packages.Roact)
local var3 = require(var0.Packages.FitFrame)
local var4 = var3.FitFrameVertical
local var5 = var3.FitTextLabel
local var6 = var2.Component:extend("FluidFitTextLabel")
function var6.init(arg1)
   local var70 = {}
   var70.frameWidth = 0
   arg1.state = var70
   function arg1.resizeContainer(arg1)
      if arg1.state.frameWidth ~= arg1.AbsoluteSize.X then
         local var79 = {}
         var79.frameWidth = arg1.AbsoluteSize.X
         arg1:setState(var79)
      end
   end
   
end

function var6.render(arg1)
   local var90 = {}
   var90.maximumWidth = arg1.state.frameWidth
   var90.width = UDim.new(1, 0)
   local var101 = {}
   var101.BackgroundTransparency = 1
   var101.LayoutOrder = arg1.props.LayoutOrder
   var101.width = UDim.new(1, 0)
   var2.Change.AbsoluteSize = arg1.resizeContainer
   local var111 = {}
   var111.Text = var2.createElement(var5, var1.Dictionary.join(arg1.props, var90))
   return var2.createElement(var4, var101, var111)
end

return var6
