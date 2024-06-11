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
local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var168 = {}
   var168.Text = var1:getText("ModeSection", "Title")
   var168.TextYAlignment = Enum.TextYAlignment.Center
   local var177 = {}
   var177.Value = var0.alignmentMode
   var177.OnValueChanged = var0.setAlignmentMode
   var168.Content = var1.createElement(var8, var177)
   local var181 = {}
   var181.Text = var1:getText("AxesSection", "Title")
   local var189 = {}
   var189.AlignmentSpace = var0.alignmentSpace
   var189.EnabledAxes = var0.enabledAxes
   var189.OnAlignmentSpaceChanged = var0.setAlignmentSpace
   var189.OnEnabledAxesChanged = var0.setEnabledAxes
   var181.Content = var1.createElement(var7, var189)
   local var195 = {}
   var195.Text = var1:getText("RelativeToSection", "Title")
   local var203 = {}
   var203.Value = var0.relativeTo
   var203.OnValueChanged = var0.setRelativeTo
   var195.Content = var1.createElement(var10, var203)
   local var210 = {}
   var210.Collapsible = true
   var210.Items = {}
   var210.LayoutOrder = var0.LayoutOrder
   var210.MaximumLabelWidth = var0.Stylizer.MaximumLabelWidth
   return var1.createElement(var9, var210)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var168 = {}
   var168.Text = var1:getText("ModeSection", "Title")
   var168.TextYAlignment = Enum.TextYAlignment.Center
   local var177 = {}
   var177.Value = var0.alignmentMode
   var177.OnValueChanged = var0.setAlignmentMode
   var168.Content = var1.createElement(var8, var177)
   local var181 = {}
   var181.Text = var1:getText("AxesSection", "Title")
   local var189 = {}
   var189.AlignmentSpace = var0.alignmentSpace
   var189.EnabledAxes = var0.enabledAxes
   var189.OnAlignmentSpaceChanged = var0.setAlignmentSpace
   var189.OnEnabledAxesChanged = var0.setEnabledAxes
   var181.Content = var1.createElement(var7, var189)
   local var195 = {}
   var195.Text = var1:getText("RelativeToSection", "Title")
   local var203 = {}
   var203.Value = var0.relativeTo
   var203.OnValueChanged = var0.setRelativeTo
   var195.Content = var1.createElement(var10, var203)
   local var210 = {}
   var210.Collapsible = true
   var210.Items = {}
   var210.LayoutOrder = var0.LayoutOrder
   var210.MaximumLabelWidth = var0.Stylizer.MaximumLabelWidth
   return var1.createElement(var9, var210)
end

fun2 = var2.withContext
local var215 = {}
var215.Localization = var2.Localization
var215.Stylizer = var2.Stylizer
var13 = fun2(var215)(var13)
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
      local var235 = {}
      var235.Text = var1:getText("ModeSection", "Title")
      var235.TextYAlignment = Enum.TextYAlignment.Center
      local var244 = {}
      var244.Value = var0.alignmentMode
      var244.OnValueChanged = var0.setAlignmentMode
      var235.Content = var1.createElement(var8, var244)
      local var248 = {}
      var248.Text = var1:getText("AxesSection", "Title")
      local var256 = {}
      var256.AlignmentSpace = var0.alignmentSpace
      var256.EnabledAxes = var0.enabledAxes
      var256.OnAlignmentSpaceChanged = var0.setAlignmentSpace
      var256.OnEnabledAxesChanged = var0.setEnabledAxes
      var248.Content = var1.createElement(var7, var256)
      local var262 = {}
      var262.Text = var1:getText("RelativeToSection", "Title")
      local var270 = {}
      var270.Value = var0.relativeTo
      var270.OnValueChanged = var0.setRelativeTo
      var262.Content = var1.createElement(var10, var270)
      local var277 = {}
      var277.Collapsible = true
      var277.Items = {}
      var277.LayoutOrder = var0.LayoutOrder
      var277.MaximumLabelWidth = var0.Stylizer.MaximumLabelWidth
      return var1.createElement(var9, var277)
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
