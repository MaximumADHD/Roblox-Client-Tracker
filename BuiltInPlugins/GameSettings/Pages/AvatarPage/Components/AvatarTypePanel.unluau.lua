-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Framework).ContextServices
local var4 = require(var0.Util.ConstantTemplate)
local var5 = require(var0.Util.StateInterfaceTemplates)
local var6 = require(var0.Util.StateModelTemplate)
local var7 = require(var0.Components.RadioButtonSetPanel)
local var8 = var2.Component:extend("ComponentAvatarTypePanel")
local function fun1(arg1)
   local var0 = {}
   var4.R6 = var6.setRigTypeR6
   var4.R15 = var6.setRigTypeR15
   var4.PlayerChoice = var6.setRigTypePlayerChoice
   local var1 = arg1.props
   local var2 = var1.Localization
   local var60 = {}
   var60.Title = var2:getText("General", "TitleAvatarType")
   local var66 = {}
   var66.Id = var4.R6
   var66.Title = var2:getText("General", "AvatarTypeR6")
   local var73 = {}
   var73.Id = var4.R15
   var73.Title = var2:getText("General", "AvatarTypeR15")
   local var5 = {}
   var5.Id = var4.PlayerChoice
   var5.Title = var2:getText("General", "AvatarTypePlayerChoice")
   var60.Buttons = {}
   var60.Enabled = arg1.props.IsEnabled
   var60.LayoutOrder = arg1.props.LayoutOrder
   var60.Selected = var5.getStateModelTemplate(arg1.props).RigTypeValue
   if arg1.props.IsGameShutdownRequired then
      local var0 = var2:getText("General", "AvatarTypeWarning") or nil
   end
   var60.SubDescription = nil
   var60.Mouse = var1.Mouse:get()
   function var60.SelectionChanged()
      if var5.props.IsGameShutdownRequired then
         local var0 = arg1:getText("General", "AvatarTypeWarning") or nil
      end
      return nil
   end
   
   return var2.createElement(var7, var60)
end

function var8.render(arg1)
   local var0 = {}
   var4.R6 = var6.setRigTypeR6
   var4.R15 = var6.setRigTypeR15
   var4.PlayerChoice = var6.setRigTypePlayerChoice
   local var1 = arg1.props
   local var2 = var1.Localization
   local var60 = {}
   var60.Title = var2:getText("General", "TitleAvatarType")
   local var66 = {}
   var66.Id = var4.R6
   var66.Title = var2:getText("General", "AvatarTypeR6")
   local var73 = {}
   var73.Id = var4.R15
   var73.Title = var2:getText("General", "AvatarTypeR15")
   local var5 = {}
   var5.Id = var4.PlayerChoice
   var5.Title = var2:getText("General", "AvatarTypePlayerChoice")
   var60.Buttons = {}
   var60.Enabled = arg1.props.IsEnabled
   var60.LayoutOrder = arg1.props.LayoutOrder
   var60.Selected = var5.getStateModelTemplate(arg1.props).RigTypeValue
   if arg1.props.IsGameShutdownRequired then
      local var0 = var2:getText("General", "AvatarTypeWarning") or nil
   end
   var60.SubDescription = nil
   var60.Mouse = var1.Mouse:get()
   function var60.SelectionChanged()
      if var5.props.IsGameShutdownRequired then
         local var0 = arg1:getText("General", "AvatarTypeWarning") or nil
      end
      return nil
   end
   
   return var2.createElement(var7, var60)
end

fun1 = var3.withContext
local var117 = {}
var117.Localization = var3.Localization
var117.Mouse = var3.Mouse
var8 = fun1(var117)(var8)
return var8
