-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.SplitPane
local var5 = require(var0.Src.Types)
local var6 = var1.PureComponent:extend("MainSplitPane")
function var6.init(arg1)
   local var128 = {}
   var128.sizes = arg1.props.InitialSizes
   arg1.state = var128
   function arg1.onSizesChange(arg1)
      local var133 = {}
      var133.sizes = arg1
      arg1:setState(var133)
   end
   
end

local function fun3(arg1)
   local var0 = arg1.props
   local var142 = {}
   var142.Size = UDim2.fromScale(1, 1)
   var142.Sizes = arg1.state.sizes
   var142.OnSizesChange = arg1.onSizesChange
   var142.MinSizes = var0.MinSizes
   var142.PaneStyle = "BorderBox"
   var142.BarStyle = "BorderBox"
   var142.UseScale = true
   var142.ClampSize = true
   var142.Layout = var0.Layout
   return var1.createElement(var4, var142, var0.children)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var142 = {}
   var142.Size = UDim2.fromScale(1, 1)
   var142.Sizes = arg1.state.sizes
   var142.OnSizesChange = arg1.onSizesChange
   var142.MinSizes = var0.MinSizes
   var142.PaneStyle = "BorderBox"
   var142.BarStyle = "BorderBox"
   var142.UseScale = true
   var142.ClampSize = true
   var142.Layout = var0.Layout
   return var1.createElement(var4, var142, var0.children)
end

fun3 = var3.withContext
local var156 = {}
var156.Analytics = var3.Analytics
var156.Localization = var3.Localization
var156.Stylizer = var2.Style.Stylizer
var6 = fun3(var156)(var6)
return var6
