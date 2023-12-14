-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.SplitPane
local var5 = require(var0.Src.Types)
local var6 = var1.PureComponent:extend("MainSplitPane")
function var6.init(arg1)
   local var1028 = {}
   var1028.sizes = arg1.props.InitialSizes
   arg1.state = var1028
   function arg1.onSizesChange(arg1)
      local var1033 = {}
      var1033.sizes = arg1
      arg1:setState(var1033)
   end
   
end

local function fun35(arg1)
   local var0 = arg1.props
   local var1042 = {}
   var1042.Size = UDim2.fromScale(1, 1)
   var1042.Sizes = arg1.state.sizes
   var1042.OnSizesChange = arg1.onSizesChange
   var1042.MinSizes = var0.MinSizes
   var1042.PaneStyle = "BorderBox"
   var1042.BarStyle = "BorderBox"
   var1042.UseScale = true
   var1042.ClampSize = true
   var1042.Layout = var0.Layout
   return var1.createElement(var4, var1042, var0.children)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1042 = {}
   var1042.Size = UDim2.fromScale(1, 1)
   var1042.Sizes = arg1.state.sizes
   var1042.OnSizesChange = arg1.onSizesChange
   var1042.MinSizes = var0.MinSizes
   var1042.PaneStyle = "BorderBox"
   var1042.BarStyle = "BorderBox"
   var1042.UseScale = true
   var1042.ClampSize = true
   var1042.Layout = var0.Layout
   return var1.createElement(var4, var1042, var0.children)
end

fun35 = var3.withContext
local var1056 = {}
var1056.Analytics = var3.Analytics
var1056.Localization = var3.Localization
var1056.Stylizer = var2.Style.Stylizer
var6 = fun35(var1056)(var6)
return var6
