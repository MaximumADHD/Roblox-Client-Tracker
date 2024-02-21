-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Actions.SetAlignmentMode)
local var4 = require(var0.Src.Actions.SetAlignmentSpace)
local var5 = require(var0.Src.Actions.SetEnabledAxes)
local var6 = require(var0.Src.Actions.SetRelativeTo)
local var7 = require(var0.Src.Components.AxesSettingsFragment)
local var8 = require(var0.Src.Components.ModeSetting)
local var9 = require(var0.Src.Components.LabeledElementList)
local var10 = require(var0.Src.Components.RelativeToSetting)
local var11 = require(var0.Src.Thunks.UpdateActiveInstanceHighlight)
local var12 = require(var0.Src.Thunks.UpdateAlignEnabled)
local var13 = var1.PureComponent:extend("AlignmentSettings")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var85 = {}
   var85.Text = var1:getText("ModeSection", "Title")
   var85.TextYAlignment = Enum.TextYAlignment.Center
   local var5 = {}
   var5.Value = var0.alignmentMode
   var5.OnValueChanged = var0.setAlignmentMode
   var85.Content = var1.createElement(var8, var5)
   local var9 = {}
   var9.Text = var1:getText("AxesSection", "Title")
   local var17 = {}
   var17.AlignmentSpace = var0.alignmentSpace
   var17.EnabledAxes = var0.enabledAxes
   var17.OnAlignmentSpaceChanged = var0.setAlignmentSpace
   var17.OnEnabledAxesChanged = var0.setEnabledAxes
   var9.Content = var1.createElement(var7, var17)
   local var23 = {}
   var23.Text = var1:getText("RelativeToSection", "Title")
   local var31 = {}
   var31.Value = var0.relativeTo
   var31.OnValueChanged = var0.setRelativeTo
   var23.Content = var1.createElement(var10, var31)
   local var38 = {}
   var38.Collapsible = true
   var38.Items = {}
   var38.LayoutOrder = var0.LayoutOrder
   var38.MaximumLabelWidth = var0.Stylizer.MaximumLabelWidth
   return var1.createElement(var9, var38)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var85 = {}
   var85.Text = var1:getText("ModeSection", "Title")
   var85.TextYAlignment = Enum.TextYAlignment.Center
   local var5 = {}
   var5.Value = var0.alignmentMode
   var5.OnValueChanged = var0.setAlignmentMode
   var85.Content = var1.createElement(var8, var5)
   local var9 = {}
   var9.Text = var1:getText("AxesSection", "Title")
   local var17 = {}
   var17.AlignmentSpace = var0.alignmentSpace
   var17.EnabledAxes = var0.enabledAxes
   var17.OnAlignmentSpaceChanged = var0.setAlignmentSpace
   var17.OnEnabledAxesChanged = var0.setEnabledAxes
   var9.Content = var1.createElement(var7, var17)
   local var23 = {}
   var23.Text = var1:getText("RelativeToSection", "Title")
   local var31 = {}
   var31.Value = var0.relativeTo
   var31.OnValueChanged = var0.setRelativeTo
   var23.Content = var1.createElement(var10, var31)
   local var38 = {}
   var38.Collapsible = true
   var38.Items = {}
   var38.LayoutOrder = var0.LayoutOrder
   var38.MaximumLabelWidth = var0.Stylizer.MaximumLabelWidth
   return var1.createElement(var9, var38)
end

fun0 = var2.withContext
local var43 = {}
var43.Localization = var2.Localization
var43.Stylizer = var2.Stylizer
var13 = fun0(var43)(var13)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.alignmentMode = arg1.alignmentMode
   var0.alignmentSpace = arg1.alignmentSpace
   var0.enabledAxes = arg1.enabledAxes
   var0.relativeTo = arg1.relativeTo
   return var0
end, function(arg1)
   local var0 = {}
   function var0.setAlignmentMode(arg1)
      local var0 = arg1.props
      local var1 = var0.Localization
      local var63 = {}
      var63.Text = var1:getText("ModeSection", "Title")
      var63.TextYAlignment = Enum.TextYAlignment.Center
      local var72 = {}
      var72.Value = var0.alignmentMode
      var72.OnValueChanged = var0.setAlignmentMode
      var63.Content = var1.createElement(var8, var72)
      local var76 = {}
      var76.Text = var1:getText("AxesSection", "Title")
      local var84 = {}
      var84.AlignmentSpace = var0.alignmentSpace
      var84.EnabledAxes = var0.enabledAxes
      var84.OnAlignmentSpaceChanged = var0.setAlignmentSpace
      var84.OnEnabledAxesChanged = var0.setEnabledAxes
      var76.Content = var1.createElement(var7, var84)
      local var90 = {}
      var90.Text = var1:getText("RelativeToSection", "Title")
      local var98 = {}
      var98.Value = var0.relativeTo
      var98.OnValueChanged = var0.setRelativeTo
      var90.Content = var1.createElement(var10, var98)
      local var105 = {}
      var105.Collapsible = true
      var105.Items = {}
      var105.LayoutOrder = var0.LayoutOrder
      var105.MaximumLabelWidth = var0.Stylizer.MaximumLabelWidth
      return var1.createElement(var9, var105)
   end
   
   function var0.setAlignmentSpace(arg1, arg2)
      local var0 = {}
      var0.alignmentMode = arg1.alignmentMode
      var0.alignmentSpace = arg1.alignmentSpace
      var0.enabledAxes = arg1.enabledAxes
      var0.relativeTo = arg1.relativeTo
      return var0
   end
   
   function var0.setEnabledAxes(arg1)
      arg1(var5(arg1))
      arg1(var12())
   end
   
   function var0.setRelativeTo(arg1)
      arg1(var6(arg1))
      arg1(var12())
   end
   
   return var0
end)(var13)
