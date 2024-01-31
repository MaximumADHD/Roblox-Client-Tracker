-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Pane
local var6 = var4.TextLabel
local var7 = var1.PureComponent:extend("ExampleComponent")
local function fun2(arg1)
   local var123 = {}
   var123.Style = "Box"
   var123.Padding = 10
   local var126 = {}
   local var130 = {}
   var130.AutomaticSize = Enum.AutomaticSize.XY
   var130.Style = "Title"
   var130.Text = arg1.props.Localization:getText("Plugin", "Text")
   var126.Text = var1.createElement(var6, var130)
   return var1.createElement(var5, var123, var126)
end

function var7.render(arg1)
   local var123 = {}
   var123.Style = "Box"
   var123.Padding = 10
   local var126 = {}
   local var130 = {}
   var130.AutomaticSize = Enum.AutomaticSize.XY
   var130.Style = "Title"
   var130.Text = arg1.props.Localization:getText("Plugin", "Text")
   var126.Text = var1.createElement(var6, var130)
   return var1.createElement(var5, var123, var126)
end

fun2 = var3.withContext
local var139 = {}
var139.Analytics = var3.Analytics
var139.Localization = var3.Localization
var139.Stylizer = var2.Style.Stylizer
var7 = fun2(var139)(var7)
return var7
