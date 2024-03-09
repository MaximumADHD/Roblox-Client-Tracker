-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.SplitPane
local var5 = require(var0.Src.Types)
local var6 = var1.PureComponent:extend("MainSplitPane")
function var6.init(arg1)
   local var127 = {}
   var127.sizes = arg1.props.InitialSizes
   arg1.state = var127
   function arg1.onSizesChange(arg1)
      local var132 = {}
      var132.sizes = arg1
      arg1:setState(var132)
   end
   
end

local function fun3(arg1)
   local var0 = arg1.props
   local var141 = {}
   var141.Size = UDim2.fromScale(1, 1)
   var141.Sizes = arg1.state.sizes
   var141.OnSizesChange = arg1.onSizesChange
   var141.MinSizes = var0.MinSizes
   var141.PaneStyle = "BorderBox"
   var141.BarStyle = "BorderBox"
   var141.UseScale = true
   var141.ClampSize = true
   var141.Layout = var0.Layout
   return var1.createElement(var4, var141, var0.children)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var141 = {}
   var141.Size = UDim2.fromScale(1, 1)
   var141.Sizes = arg1.state.sizes
   var141.OnSizesChange = arg1.onSizesChange
   var141.MinSizes = var0.MinSizes
   var141.PaneStyle = "BorderBox"
   var141.BarStyle = "BorderBox"
   var141.UseScale = true
   var141.ClampSize = true
   var141.Layout = var0.Layout
   return var1.createElement(var4, var141, var0.children)
end

fun3 = var3.withContext
local var155 = {}
var155.Analytics = var3.Analytics
var155.Localization = var3.Localization
var155.Stylizer = var2.Style.Stylizer
var6 = fun3(var155)(var6)
return var6
