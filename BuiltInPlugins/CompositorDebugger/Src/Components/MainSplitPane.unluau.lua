-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.SplitPane
local var5 = require(var0.Src.Types)
local var6 = var1.PureComponent:extend("MainSplitPane")
function var6.init(arg1)
   local var140 = {}
   var140.sizes = arg1.props.InitialSizes
   arg1.state = var140
   function arg1.onSizesChange(arg1)
      local var145 = {}
      var145.sizes = arg1
      arg1:setState(var145)
   end
   
end

local function fun3(arg1)
   local var0 = arg1.props
   local var154 = {}
   var154.Size = UDim2.fromScale(1, 1)
   var154.Sizes = arg1.state.sizes
   var154.OnSizesChange = arg1.onSizesChange
   var154.MinSizes = var0.MinSizes
   var154.PaneStyle = "BorderBox"
   var154.BarStyle = "BorderBox"
   var154.UseScale = true
   var154.ClampSize = true
   var154.Layout = var0.Layout
   return var1.createElement(var4, var154, var0.children)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var154 = {}
   var154.Size = UDim2.fromScale(1, 1)
   var154.Sizes = arg1.state.sizes
   var154.OnSizesChange = arg1.onSizesChange
   var154.MinSizes = var0.MinSizes
   var154.PaneStyle = "BorderBox"
   var154.BarStyle = "BorderBox"
   var154.UseScale = true
   var154.ClampSize = true
   var154.Layout = var0.Layout
   return var1.createElement(var4, var154, var0.children)
end

fun3 = var3.withContext
local var168 = {}
var168.Analytics = var3.Analytics
var168.Localization = var3.Localization
var168.Stylizer = var2.Style.Stylizer
var6 = fun3(var168)(var6)
return var6
