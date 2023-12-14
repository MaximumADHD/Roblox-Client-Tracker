-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.Style.StyleKey
local var6 = var3.UI
local var7 = var6.List
local var8 = var6.TextLabel
local var9 = var2.PureComponent:extend("EventList")
function var9.init(arg1)
   arg1.rightAlignSizes = {}
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.SelectedIndex
   local var3 = string.lower(var0.SearchTerm)
   local var48 = {}
   var48.Rows = var0.Events
   var48.RowComponent = "TextButton"
   function var48.GetRowProps(arg1)
      arg1.rightAlignSizes = {}
   end
   
   return var2.createElement(var7, var48)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.SelectedIndex
   local var3 = string.lower(var0.SearchTerm)
   local var48 = {}
   var48.Rows = var0.Events
   var48.RowComponent = "TextButton"
   function var48.GetRowProps(arg1)
      arg1.rightAlignSizes = {}
   end
   
   return var2.createElement(var7, var48)
end

fun2 = var4.withContext
local var53 = {}
var53.Analytics = var4.Analytics
var53.Localization = var4.Localization
var53.Stylizer = var3.Style.Stylizer
var9 = fun2(var53)(var9)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.SelectedIndex = arg1.selectedIndex
   var0.SearchTerm = arg1.searchTerm
   var0.Events = arg1.events
   return var0
end)(var9)
