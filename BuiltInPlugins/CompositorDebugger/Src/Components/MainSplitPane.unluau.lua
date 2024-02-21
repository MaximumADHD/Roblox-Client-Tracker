-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.SplitPane
local var5 = require(var0.Src.Types)
local var6 = var1.PureComponent:extend("MainSplitPane")
function var6.init(arg1)
   local var124 = {}
   var124.sizes = arg1.props.InitialSizes
   arg1.state = var124
   function arg1.onSizesChange(arg1)
      local var129 = {}
      var129.sizes = arg1
      arg1:setState(var129)
   end
   
end

local function fun3(arg1)
   local var0 = arg1.props
   local var138 = {}
   var138.Size = UDim2.fromScale(1, 1)
   var138.Sizes = arg1.state.sizes
   var138.OnSizesChange = arg1.onSizesChange
   var138.MinSizes = var0.MinSizes
   var138.PaneStyle = "BorderBox"
   var138.BarStyle = "BorderBox"
   var138.UseScale = true
   var138.ClampSize = true
   var138.Layout = var0.Layout
   return var1.createElement(var4, var138, var0.children)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var138 = {}
   var138.Size = UDim2.fromScale(1, 1)
   var138.Sizes = arg1.state.sizes
   var138.OnSizesChange = arg1.onSizesChange
   var138.MinSizes = var0.MinSizes
   var138.PaneStyle = "BorderBox"
   var138.BarStyle = "BorderBox"
   var138.UseScale = true
   var138.ClampSize = true
   var138.Layout = var0.Layout
   return var1.createElement(var4, var138, var0.children)
end

fun3 = var3.withContext
local var152 = {}
var152.Analytics = var3.Analytics
var152.Localization = var3.Localization
var152.Stylizer = var2.Style.Stylizer
var6 = fun3(var152)(var6)
return var6
