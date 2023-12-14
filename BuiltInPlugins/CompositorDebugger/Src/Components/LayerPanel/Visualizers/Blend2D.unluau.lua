-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).Dash.join
local var3 = require(script.Parent.BlendBase)
local var4 = var1.PureComponent:extend("Blend2DVisualization")
function var4.render(arg1)
   local var29 = {}
   var29.Show2D = true
   var29.Stylizer = arg1.props.Stylizer.Blend
   return var1.createElement(var3, var2(arg1.props, var29))
end

return var4
