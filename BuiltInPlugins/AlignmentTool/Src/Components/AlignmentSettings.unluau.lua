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
   local var77 = {}
   var77.Text = var1:getText("ModeSection", "Title")
   var77.TextYAlignment = Enum.TextYAlignment.Center
   local var86 = {}
   var86.Value = var0.alignmentMode
   var86.OnValueChanged = var0.setAlignmentMode
   var77.Content = var1.createElement(var8, var86)
   local var90 = {}
   var90.Text = var1:getText("AxesSection", "Title")
   local var98 = {}
   var98.AlignmentSpace = var0.alignmentSpace
   var98.EnabledAxes = var0.enabledAxes
   var98.OnAlignmentSpaceChanged = var0.setAlignmentSpace
   var98.OnEnabledAxesChanged = var0.setEnabledAxes
   var90.Content = var1.createElement(var7, var98)
   local var104 = {}
   var104.Text = var1:getText("RelativeToSection", "Title")
   local var112 = {}
   var112.Value = var0.relativeTo
   var112.OnValueChanged = var0.setRelativeTo
   var104.Content = var1.createElement(var10, var112)
   local var119 = {}
   var119.Collapsible = true
   var119.Items = {}
   var119.LayoutOrder = var0.LayoutOrder
   var119.MaximumLabelWidth = var0.Stylizer.MaximumLabelWidth
   return var1.createElement(var9, var119)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var77 = {}
   var77.Text = var1:getText("ModeSection", "Title")
   var77.TextYAlignment = Enum.TextYAlignment.Center
   local var86 = {}
   var86.Value = var0.alignmentMode
   var86.OnValueChanged = var0.setAlignmentMode
   var77.Content = var1.createElement(var8, var86)
   local var90 = {}
   var90.Text = var1:getText("AxesSection", "Title")
   local var98 = {}
   var98.AlignmentSpace = var0.alignmentSpace
   var98.EnabledAxes = var0.enabledAxes
   var98.OnAlignmentSpaceChanged = var0.setAlignmentSpace
   var98.OnEnabledAxesChanged = var0.setEnabledAxes
   var90.Content = var1.createElement(var7, var98)
   local var104 = {}
   var104.Text = var1:getText("RelativeToSection", "Title")
   local var112 = {}
   var112.Value = var0.relativeTo
   var112.OnValueChanged = var0.setRelativeTo
   var104.Content = var1.createElement(var10, var112)
   local var119 = {}
   var119.Collapsible = true
   var119.Items = {}
   var119.LayoutOrder = var0.LayoutOrder
   var119.MaximumLabelWidth = var0.Stylizer.MaximumLabelWidth
   return var1.createElement(var9, var119)
end

fun0 = var2.withContext
local var124 = {}
var124.Localization = var2.Localization
var124.Stylizer = var2.Stylizer
var13 = fun0(var124)(var13)
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
      local var144 = {}
      var144.Text = var1:getText("ModeSection", "Title")
      var144.TextYAlignment = Enum.TextYAlignment.Center
      local var153 = {}
      var153.Value = var0.alignmentMode
      var153.OnValueChanged = var0.setAlignmentMode
      var144.Content = var1.createElement(var8, var153)
      local var157 = {}
      var157.Text = var1:getText("AxesSection", "Title")
      local var165 = {}
      var165.AlignmentSpace = var0.alignmentSpace
      var165.EnabledAxes = var0.enabledAxes
      var165.OnAlignmentSpaceChanged = var0.setAlignmentSpace
      var165.OnEnabledAxesChanged = var0.setEnabledAxes
      var157.Content = var1.createElement(var7, var165)
      local var171 = {}
      var171.Text = var1:getText("RelativeToSection", "Title")
      local var179 = {}
      var179.Value = var0.relativeTo
      var179.OnValueChanged = var0.setRelativeTo
      var171.Content = var1.createElement(var10, var179)
      local var186 = {}
      var186.Collapsible = true
      var186.Items = {}
      var186.LayoutOrder = var0.LayoutOrder
      var186.MaximumLabelWidth = var0.Stylizer.MaximumLabelWidth
      return var1.createElement(var9, var186)
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
