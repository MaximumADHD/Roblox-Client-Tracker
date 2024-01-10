-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.SplitPane
local var5 = require(var0.Src.Types)
local var6 = var1.PureComponent:extend("MainSplitPane")
function var6.init(arg1)
   local var951 = {}
   var951.sizes = arg1.props.InitialSizes
   arg1.state = var951
   function arg1.onSizesChange(arg1)
      local var956 = {}
      var956.sizes = arg1
      arg1:setState(var956)
   end
   
end

local function fun35(arg1)
   local var0 = arg1.props
   local var965 = {}
   var965.Size = UDim2.fromScale(1, 1)
   var965.Sizes = arg1.state.sizes
   var965.OnSizesChange = arg1.onSizesChange
   var965.MinSizes = var0.MinSizes
   var965.PaneStyle = "BorderBox"
   var965.BarStyle = "BorderBox"
   var965.UseScale = true
   var965.ClampSize = true
   var965.Layout = var0.Layout
   return var1.createElement(var4, var965, var0.children)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var965 = {}
   var965.Size = UDim2.fromScale(1, 1)
   var965.Sizes = arg1.state.sizes
   var965.OnSizesChange = arg1.onSizesChange
   var965.MinSizes = var0.MinSizes
   var965.PaneStyle = "BorderBox"
   var965.BarStyle = "BorderBox"
   var965.UseScale = true
   var965.ClampSize = true
   var965.Layout = var0.Layout
   return var1.createElement(var4, var965, var0.children)
end

fun35 = var3.withContext
local var979 = {}
var979.Analytics = var3.Analytics
var979.Localization = var3.Localization
var979.Stylizer = var2.Style.Stylizer
var6 = fun35(var979)(var6)
return var6
