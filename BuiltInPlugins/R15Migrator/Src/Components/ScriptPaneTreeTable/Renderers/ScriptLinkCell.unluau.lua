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
local var9 = var6.Tooltip
local var10 = require(var0.Src.Types)
local var11 = require(var0.Src.Util.ScriptReplacement)
local var12 = var1.PureComponent:extend("ScriptLinkCell")
function var12.init(arg1)
   function arg1.onLinkClick()
      local var42 = arg1
      local var46 = var11
      var46 = arg1.props.Value.Script
      var42 = var42.props.Value.Range
      var46.goToScriptInstance(var46, var42)
   end
   
end

local function fun2(arg1)
   local var0 = arg1.state
   local var1 = arg1.props
   local var2 = var1.Value
   if var2.Range then
      local var57 = {}
      local var60 = {}
      var60.line = var2.Range.startLine
      var60.column = var2.Range.startCharacter
      var57.Text = var1.Localization:getText("ScriptPane", "LineColumn", var60)
      var57.OnClick = arg1.onLinkClick
      return var1.createElement(var7, var57)
   end
   local var72 = {}
   var72.Text = var2.Script:GetFullName()
   var72.TextTruncate = Enum.TextTruncate.AtEnd
   var72.TextXAlignment = Enum.TextXAlignment.Left
   local var78 = {}
   local var82 = {}
   var82.Text = var2.Script:GetFullName()
   var78.Tooltip = var1.createElement(var9, var82)
   return var1.createElement(var8, var72, var78)
end

function var12.render(arg1)
   local var0 = arg1.state
   local var1 = arg1.props
   local var2 = var1.Value
   if var2.Range then
      local var57 = {}
      local var60 = {}
      var60.line = var2.Range.startLine
      var60.column = var2.Range.startCharacter
      var57.Text = var1.Localization:getText("ScriptPane", "LineColumn", var60)
      var57.OnClick = arg1.onLinkClick
      return var1.createElement(var7, var57)
   end
   local var72 = {}
   var72.Text = var2.Script:GetFullName()
   var72.TextTruncate = Enum.TextTruncate.AtEnd
   var72.TextXAlignment = Enum.TextXAlignment.Left
   local var78 = {}
   local var82 = {}
   var82.Text = var2.Script:GetFullName()
   var78.Tooltip = var1.createElement(var9, var82)
   return var1.createElement(var8, var72, var78)
end

fun2 = var4.withContext
local var88 = {}
var88.Analytics = var4.Analytics
var88.Localization = var4.Localization
var88.Stylizer = var3.Style.Stylizer
var12 = fun2(var88)(var12)
return var12
