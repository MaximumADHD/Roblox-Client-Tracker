-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("StudioDeviceEmulatorService")
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.UI
local var6 = var5.Pane
local var7 = var5.SimpleExpandablePane
local var8 = var5.Checkbox
local var9 = var2.PureComponent:extend("MultiTouchPane")
function var9.init(arg1, arg2)
   local var29 = {}
   var29.multiTouchEmulationOn = var0.IsMultiTouchEmulationOn
   arg1.state = var29
   function arg1.toggleMultiTouchEmulationOn()
      local var0 = arg1.state.multiTouchEmulationOn
      var0.IsMultiTouchEmulationOn = var0
      local var38 = {}
      var38.multiTouchEmulationOn = var0
      arg1:setState(var38)
   end
   
end

local function fun2(arg1)
   local var0 = arg1.props.Localization
   local var47 = {}
   var47.AutomaticSize = Enum.AutomaticSize.Y
   var47.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var47.Layout = Enum.FillDirection.Vertical
   var47.Padding = 10
   var47.Spacing = 10
   local var53 = {}
   local var57 = {}
   var57.AutomaticSize = Enum.AutomaticSize.Y
   var57.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var57.Layout = Enum.FillDirection.Vertical
   var57.AlwaysExpanded = true
   var57.LayoutOrder = 3
   var57.Style = "Box"
   var57.Text = var0:getText("MultiTouchPane", "MultiTouchPaneLabel")
   local var72 = {}
   var72.Checked = arg1.state.multiTouchEmulationOn
   var72.Key = "multiTouchEmulationOn"
   var72.OnClick = arg1.toggleMultiTouchEmulationOn
   var72.Text = var0:getText("MultiTouchPane", "MultiTouchPaneCheckboxLabel")
   local var1 = var2.createElement(var8, var72)
   var53.MultiTouchPane = var2.createElement(var7, var57, {})
   return var2.createElement(var6, var47, var53)
end

function var9.render(arg1)
   local var0 = arg1.props.Localization
   local var47 = {}
   var47.AutomaticSize = Enum.AutomaticSize.Y
   var47.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var47.Layout = Enum.FillDirection.Vertical
   var47.Padding = 10
   var47.Spacing = 10
   local var53 = {}
   local var57 = {}
   var57.AutomaticSize = Enum.AutomaticSize.Y
   var57.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var57.Layout = Enum.FillDirection.Vertical
   var57.AlwaysExpanded = true
   var57.LayoutOrder = 3
   var57.Style = "Box"
   var57.Text = var0:getText("MultiTouchPane", "MultiTouchPaneLabel")
   local var72 = {}
   var72.Checked = arg1.state.multiTouchEmulationOn
   var72.Key = "multiTouchEmulationOn"
   var72.OnClick = arg1.toggleMultiTouchEmulationOn
   var72.Text = var0:getText("MultiTouchPane", "MultiTouchPaneCheckboxLabel")
   local var1 = var2.createElement(var8, var72)
   var53.MultiTouchPane = var2.createElement(var7, var57, {})
   return var2.createElement(var6, var47, var53)
end

fun2 = var4.withContext
local var83 = {}
var83.Localization = var4.Localization
var83.Stylizer = var4.Stylizer
var9 = fun2(var83)(var9)
return var9
