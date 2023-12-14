-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Framework).ContextServices
local var4 = require(var0.Util.ConstantTemplate)
local var5 = require(var0.Util.StateInterfaceTemplates)
local var6 = require(var0.Util.StateModelTemplate)
local var7 = require(var0.Components.RadioButtonSetPanel)
local var8 = var2.Component:extend("ComponentAnimationPanel")
local function fun1(arg1)
   local var0 = {}
   var4.AnimationStandard = var6.setAnimationStandard
   var4.PlayerChoice = var6.setAnimationPlayerChoice
   local var1 = arg1.props
   local var2 = var1.Localization
   local var149 = {}
   var149.Title = var2:getText("General", "TitleAnimation")
   local var155 = {}
   var155.Id = var4.AnimationStandard
   var155.Title = var2:getText("General", "AnimationStandard")
   local var162 = {}
   var162.Id = var4.PlayerChoice
   var162.Title = var2:getText("General", "AnimationPlayerChoice")
   var149.Buttons = {}
   var149.Enabled = arg1.props.IsEnabled
   var149.LayoutOrder = arg1.props.LayoutOrder
   var149.Selected = var5.getStateModelTemplate(arg1.props).AnimationValue
   var149.Mouse = var1.Mouse:get()
   function var149.SelectionChanged(arg1)
      local var0 = var5.getStateModelTemplateCopy(arg1.props)
      local var186 = var0
      var186 = var0
      var186[arg1.Id](var186)
      local var193 = arg1.props
      var193 = var0
      arg1.props.clobberTemplate(var193.template, var193)
   end
   
   return var2.createElement(var7, var149)
end

function var8.render(arg1)
   local var0 = {}
   var4.AnimationStandard = var6.setAnimationStandard
   var4.PlayerChoice = var6.setAnimationPlayerChoice
   local var1 = arg1.props
   local var2 = var1.Localization
   local var149 = {}
   var149.Title = var2:getText("General", "TitleAnimation")
   local var155 = {}
   var155.Id = var4.AnimationStandard
   var155.Title = var2:getText("General", "AnimationStandard")
   local var162 = {}
   var162.Id = var4.PlayerChoice
   var162.Title = var2:getText("General", "AnimationPlayerChoice")
   var149.Buttons = {}
   var149.Enabled = arg1.props.IsEnabled
   var149.LayoutOrder = arg1.props.LayoutOrder
   var149.Selected = var5.getStateModelTemplate(arg1.props).AnimationValue
   var149.Mouse = var1.Mouse:get()
   function var149.SelectionChanged(arg1)
      local var0 = var5.getStateModelTemplateCopy(arg1.props)
      local var186 = var0
      var186 = var0
      var186[arg1.Id](var186)
      local var193 = arg1.props
      var193 = var0
      arg1.props.clobberTemplate(var193.template, var193)
   end
   
   return var2.createElement(var7, var149)
end

fun1 = var3.withContext
local var196 = {}
var196.Localization = var3.Localization
var196.Mouse = var3.Mouse
var8 = fun1(var196)(var8)
return var8
