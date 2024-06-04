-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.RoactRodux)
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.Dash.join
local var6 = var3.UI
local var7 = var6.LinkText
local var8 = var6.TextLabel
local var9 = var0.Src.Actions
local var10 = var0.Src.Components
local var11 = require(var0.Src.Types)
local var12 = require(var0.Src.Util.ScriptReplacement)
local var13 = var1.PureComponent:extend("ScriptLinkCell")
function var13.init(arg1)
   function arg1.onLinkClick()
      local var45 = arg1
      local var49 = var12
      var49 = arg1.props.Value.Script
      var45 = var45.props.Value.Range
      var49.goToScriptInstance(var49, var45)
   end
   
end

local function fun2(arg1)
   local var0 = arg1.state
   local var1 = arg1.props
   local var2 = var1.Value
   if var2.Range then
      local var60 = {}
      local var63 = {}
      var63.line = var2.Range.start.line
      var63.column = var2.Range.start.character
      var60.Text = var1.Localization:getText("ScriptPane", "LineColumn", var63)
      var60.OnClick = arg1.onLinkClick
      return var1.createElement(var7, var60)
   end
   local var77 = {}
   var77.Text = var2.Script:GetFullName()
   var77.TextXAlignment = Enum.TextXAlignment.Left
   return var1.createElement(var8, var77)
end

function var13.render(arg1)
   local var0 = arg1.state
   local var1 = arg1.props
   local var2 = var1.Value
   if var2.Range then
      local var60 = {}
      local var63 = {}
      var63.line = var2.Range.start.line
      var63.column = var2.Range.start.character
      var60.Text = var1.Localization:getText("ScriptPane", "LineColumn", var63)
      var60.OnClick = arg1.onLinkClick
      return var1.createElement(var7, var60)
   end
   local var77 = {}
   var77.Text = var2.Script:GetFullName()
   var77.TextXAlignment = Enum.TextXAlignment.Left
   return var1.createElement(var8, var77)
end

fun2 = var4.withContext
local var83 = {}
var83.Analytics = var4.Analytics
var83.Localization = var4.Localization
var83.Stylizer = var3.Style.Stylizer
var13 = fun2(var83)(var13)
return var13
