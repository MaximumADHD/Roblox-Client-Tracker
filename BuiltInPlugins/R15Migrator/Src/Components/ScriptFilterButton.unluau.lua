-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.Dash
local var5 = var4.append
local var6 = var4.join
local var7 = var4.map
local var8 = var2.UI
local var9 = var8.IconButton
local var10 = var8.showContextMenu
local var11 = var0.Src.Actions
local var12 = var0.Src.Components
local var13 = require(var0.Src.Util.ScriptReplacement)
local var14 = require(var0.Src.Types)
local var15 = var0.Src.Util
local var16 = var1.PureComponent:extend("ScriptFilterButton")
local function var17(arg1, arg2, arg3, arg4, arg5)
   local var0 = {}
   var0.Text = arg5 or arg1 ... " " ... arg2
   var0.Checked = arg3[arg1] and arg3[arg1][arg2]
   local var1 = {}
   var1.RigType = arg1
   var1.InstanceName = arg2
   var0.Data = var1
   var0.OnItemClicked = arg4
   return var0
end

function var16.init(arg1)
   function arg1.showMenu(arg1, arg2, arg3, arg4, arg5)
      local var0 = {}
      var0.Text = arg5 or arg1 ... " " ... arg2
      var0.Checked = arg3[arg1] and arg3[arg1][arg2]
      local var1 = {}
      var1.RigType = arg1
      var1.InstanceName = arg2
      var0.Data = var1
      var0.OnItemClicked = arg4
      return var0
   end
   
end

local function fun16(arg1)
   local var0 = arg1.state
   local var1 = arg1.props
   local var240 = {}
   var240.LayoutOrder = var1.LayoutOrder
   var240.Size = var1.Size
   var240.LeftIcon = "rbxasset://textures/StudioSharedUI/Filter.png"
   var240.OnClick = arg1.showMenu
   return var1.createElement(var9, var240)
end

function var16.render(arg1)
   local var0 = arg1.state
   local var1 = arg1.props
   local var240 = {}
   var240.LayoutOrder = var1.LayoutOrder
   var240.Size = var1.Size
   var240.LeftIcon = "rbxasset://textures/StudioSharedUI/Filter.png"
   var240.OnClick = arg1.showMenu
   return var1.createElement(var9, var240)
end

fun16 = var3.withContext
local var246 = {}
var246.Localization = var3.Localization
var246.Stylizer = var2.Style.Stylizer
var246.Plugin = var3.Plugin
var16 = fun16(var246)(var16)
return var16
