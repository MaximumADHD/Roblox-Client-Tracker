-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Pane
local var6 = var4.TextLabel
local var7 = var1.PureComponent:extend("ExampleComponent")
local function fun0(arg1)
   local var31 = {}
   var31.Style = "Box"
   var31.Padding = 10
   local var34 = {}
   local var38 = {}
   var38.AutomaticSize = Enum.AutomaticSize.XY
   var38.Style = "Title"
   var38.Text = arg1.props.Localization:getText("Plugin", "Text")
   var34.Text = var1.createElement(var6, var38)
   return var1.createElement(var5, var31, var34)
end

function var7.render(arg1)
   local var31 = {}
   var31.Style = "Box"
   var31.Padding = 10
   local var34 = {}
   local var38 = {}
   var38.AutomaticSize = Enum.AutomaticSize.XY
   var38.Style = "Title"
   var38.Text = arg1.props.Localization:getText("Plugin", "Text")
   var34.Text = var1.createElement(var6, var38)
   return var1.createElement(var5, var31, var34)
end

fun0 = var3.withContext
local var47 = {}
var47.Analytics = var3.Analytics
var47.Localization = var3.Localization
var47.Stylizer = var2.Style.Stylizer
var7 = fun0(var47)(var7)
return var7
