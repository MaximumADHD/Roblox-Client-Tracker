-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI
local var4 = var3.PluginButton
local var5 = var3.PluginToolbar
local var6 = var2.ContextServices
local var7 = var1.PureComponent:extend("Toolbar")
function var7.renderButtons(arg1, arg2)
   local var0 = {}
   local var29 = {}
   var29.Active = false
   var29.Toolbar = arg2
   var29.Title = arg1.props.Localization:getText("Plugin", "Export")
   var29.Tooltip = arg1.props.Localization:getText("Plugin", "ExportTip")
   var29.OnClick = arg1.props.onExportClicked
   var29.ClickableWhenViewportHidden = true
   var0.Export = var1.createElement(var4, var29)
   return var0
end

local function fun2(arg1)
   local var51 = {}
   var51.Title = arg1.props.Localization:getText("Plugin", "Name")
   function var51.RenderButtons(arg1, arg2)
      local var0 = {}
      local var64 = {}
      var64.Active = false
      var64.Toolbar = arg2
      var64.Title = arg1.props.Localization:getText("Plugin", "Export")
      var64.Tooltip = arg1.props.Localization:getText("Plugin", "ExportTip")
      var64.OnClick = arg1.props.onExportClicked
      var64.ClickableWhenViewportHidden = true
      var0.Export = var1.createElement(var4, var64)
      return var0
   end
   
   return var1.createElement(var5, var51)
end

function var7.render(arg1)
   local var51 = {}
   var51.Title = arg1.props.Localization:getText("Plugin", "Name")
   function var51.RenderButtons(arg1, arg2)
      local var0 = {}
      local var64 = {}
      var64.Active = false
      var64.Toolbar = arg2
      var64.Title = arg1.props.Localization:getText("Plugin", "Export")
      var64.Tooltip = arg1.props.Localization:getText("Plugin", "ExportTip")
      var64.OnClick = arg1.props.onExportClicked
      var64.ClickableWhenViewportHidden = true
      var0.Export = var1.createElement(var4, var64)
      return var0
   end
   
   return var1.createElement(var5, var51)
end

fun2 = var6.withContext
local var83 = {}
var83.Plugin = var6.Plugin
var83.Localization = var6.Localization
var7 = fun2(var83)(var7)
return var7
