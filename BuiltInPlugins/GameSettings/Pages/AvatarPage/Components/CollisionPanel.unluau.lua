-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Framework).ContextServices
local var4 = require(var0.Util.ConstantTemplate)
local var5 = require(var0.Util.StateInterfaceTemplates)
local var6 = require(var0.Util.StateModelTemplate)
local var7 = require(var0.Components.RadioButtonSetPanel)
local var8 = var2.Component:extend("ComponentCollisionPanel")
local function fun1(arg1)
   local var0 = {}
   var4.OuterCollision = var6.setCollisionOuterBox
   var4.InnerCollision = var6.setCollisionInnerBox
   local var1 = arg1.props
   local var2 = var1.Localization
   local var54 = {}
   var54.Title = var2:getText("General", "TitleCollision")
   local var60 = {}
   var60.Id = var4.OuterCollision
   var60.Title = var2:getText("General", "CollisionOuterBox")
   local var67 = {}
   var67.Id = var4.InnerCollision
   var67.Title = var2:getText("General", "CollisionInnerBox")
   var54.Buttons = {}
   var54.Enabled = arg1.props.IsEnabled
   var54.LayoutOrder = arg1.props.LayoutOrder
   var54.Selected = var5.getStateModelTemplate(arg1.props).CollisionValue
   var54.Mouse = var1.Mouse:get()
   function var54.SelectionChanged(arg1)
      local var0 = var5.getStateModelTemplateCopy(arg1.props)
      local var91 = var0
      var91 = var0
      var91[arg1.Id](var91)
      local var98 = arg1.props
      var98 = var0
      arg1.props.clobberTemplate(var98.template, var98)
   end
   
   return var2.createElement(var7, var54)
end

function var8.render(arg1)
   local var0 = {}
   var4.OuterCollision = var6.setCollisionOuterBox
   var4.InnerCollision = var6.setCollisionInnerBox
   local var1 = arg1.props
   local var2 = var1.Localization
   local var54 = {}
   var54.Title = var2:getText("General", "TitleCollision")
   local var60 = {}
   var60.Id = var4.OuterCollision
   var60.Title = var2:getText("General", "CollisionOuterBox")
   local var67 = {}
   var67.Id = var4.InnerCollision
   var67.Title = var2:getText("General", "CollisionInnerBox")
   var54.Buttons = {}
   var54.Enabled = arg1.props.IsEnabled
   var54.LayoutOrder = arg1.props.LayoutOrder
   var54.Selected = var5.getStateModelTemplate(arg1.props).CollisionValue
   var54.Mouse = var1.Mouse:get()
   function var54.SelectionChanged(arg1)
      local var0 = var5.getStateModelTemplateCopy(arg1.props)
      local var91 = var0
      var91 = var0
      var91[arg1.Id](var91)
      local var98 = arg1.props
      var98 = var0
      arg1.props.clobberTemplate(var98.template, var98)
   end
   
   return var2.createElement(var7, var54)
end

fun1 = var3.withContext
local var101 = {}
var101.Localization = var3.Localization
var101.Mouse = var3.Mouse
var8 = fun1(var101)(var8)
return var8
