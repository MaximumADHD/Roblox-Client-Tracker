-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Framework).ContextServices
local var4 = require(var0.Util.ConstantAvatar)
local var5 = require(var0.Util.StateModelTemplate)
local var6 = require(var1.Packages.RoactStudioWidgets.ButtonBar)
local var7 = var2.Component:extend("ComponentPresetsPanel")
function var7.init(arg1)
   function arg1.createDefaultModel(arg1)
      local var41 = var5
      var41 = arg1
      local var0 = var41.new(var41)
      var0:setScaleHeightMin(1, arg1)
      var0:setScaleHeightMax(1, arg1)
      var0:setScaleWidthMin(1, arg1)
      var0:setScaleWidthMax(1, arg1)
      var0:setScaleHeadMin(1, arg1)
      var0:setScaleHeadMax(1, arg1)
      var0:setScaleBodyTypeMin(0, arg1)
      var0:setScaleBodyTypeMax(0, arg1)
      var0:setScaleProportionMin(0, arg1)
      var0:setScaleProportionMax(0, arg1)
      var0:setRigTypeR15()
      return var0
   end
   
   function arg1.createClassicModel1(arg1)
      local var76 = var5
      var76 = arg1
      local var0 = var76.new(var76)
      var0:setScaleHeightMin(1, arg1)
      var0:setScaleHeightMax(1, arg1)
      var0:setScaleWidthMin(1, arg1)
      var0:setScaleWidthMax(1, arg1)
      var0:setScaleHeadMin(1, arg1)
      var0:setScaleHeadMax(1, arg1)
      var0:setScaleBodyTypeMin(0, arg1)
      var0:setScaleBodyTypeMax(0, arg1)
      var0:setScaleProportionMin(0, arg1)
      var0:setScaleProportionMax(0, arg1)
      var0:setRigTypeR15()
      return var0
   end
   
   function arg1.createClassicModel2(arg1)
      local var111 = var5
      var111 = arg1
      local var0 = var111.new(var111)
      var0:setScaleHeightMin(1, arg1)
      var0:setScaleHeightMax(1, arg1)
      var0:setScaleWidthMin(1, arg1)
      var0:setScaleWidthMax(1, arg1)
      var0:setScaleHeadMin(1, arg1)
      var0:setScaleHeadMax(1, arg1)
      var0:setScaleBodyTypeMin(0, arg1)
      var0:setScaleBodyTypeMax(0, arg1)
      var0:setScaleProportionMin(0, arg1)
      var0:setScaleProportionMax(0, arg1)
      var0:setRigTypeR15()
      var0:setAsset(var4.AssetTypes.Head, 2432102561, false)
      return var0
   end
   
   function arg1.createRthroModel(arg1)
      local var152 = var5
      var152 = arg1
      local var0 = var152.new(var152)
      var0:setScaleHeightMin(1, arg1)
      var0:setScaleHeightMax(1, arg1)
      var0:setScaleWidthMin(1, arg1)
      var0:setScaleWidthMax(1, arg1)
      var0:setScaleHeadMin(1, arg1)
      var0:setScaleHeadMax(1, arg1)
      var0:setScaleBodyTypeMin(1, arg1)
      var0:setScaleBodyTypeMax(1, arg1)
      var0:setScaleProportionMin(0, arg1)
      var0:setScaleProportionMax(0, arg1)
      var0:setRigTypeR15()
      return var0
   end
   
   function arg1.createPlayerChoiceModel(arg1)
      local var187 = var5
      var187 = arg1
      return var187.new(var187)
   end
   
end

local function fun7(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Mouse:get()
   local var3 = var0.IsEnabled
   local var200 = {}
   var200.Padding = 10
   local var203 = {}
   var203.Name = var1:getText("General", "PresetDefault")
   var203.Enabled = var3
   var203.Value = arg1.createDefaultModel
   var203.ShowPressed = true
   var203.Mouse = var2
   local var210 = {}
   var210.Name = var1:getText("General", "PresetClassicScale")
   var210.Enabled = var3
   var210.Value = arg1.createClassicModel1
   var210.ShowPressed = true
   var210.Mouse = var2
   local var217 = {}
   var217.Name = var1:getText("General", "PresetFullClassic")
   var217.Enabled = var3
   var217.Value = arg1.createClassicModel2
   var217.ShowPressed = true
   var217.Mouse = var2
   local var5 = {}
   var5.Name = var1:getText("General", "PresetRthro")
   var5.Enabled = var3
   var5.Value = arg1.createRthroModel
   var5.ShowPressed = true
   var5.Mouse = var2
   local var6 = {}
   var6.Name = var1:getText("General", "PresetPlayerChoice")
   var6.Enabled = var3
   var6.Value = arg1.createPlayerChoiceModel
   var6.ShowPressed = true
   var6.Mouse = var2
   var200.Buttons = {}
   var200.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var200.Title = var1:getText("General", "TitlePresets")
   function var200.ButtonClicked(arg1)
      local var244 = var5
      var244 = arg1
      local var0 = var244.new(var244)
      var0:setScaleHeightMin(1, arg1)
      var0:setScaleHeightMax(1, arg1)
      var0:setScaleWidthMin(1, arg1)
      var0:setScaleWidthMax(1, arg1)
      var0:setScaleHeadMin(1, arg1)
      var0:setScaleHeadMax(1, arg1)
      var0:setScaleBodyTypeMin(0, arg1)
      var0:setScaleBodyTypeMax(0, arg1)
      var0:setScaleProportionMin(0, arg1)
      var0:setScaleProportionMax(0, arg1)
      var0:setRigTypeR15()
      return var0
   end
   
   var200.ShowPressed = true
   var200.LayoutOrder = arg1.props.LayoutOrder
   return var2.createElement(var6, var200)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Mouse:get()
   local var3 = var0.IsEnabled
   local var200 = {}
   var200.Padding = 10
   local var203 = {}
   var203.Name = var1:getText("General", "PresetDefault")
   var203.Enabled = var3
   var203.Value = arg1.createDefaultModel
   var203.ShowPressed = true
   var203.Mouse = var2
   local var210 = {}
   var210.Name = var1:getText("General", "PresetClassicScale")
   var210.Enabled = var3
   var210.Value = arg1.createClassicModel1
   var210.ShowPressed = true
   var210.Mouse = var2
   local var217 = {}
   var217.Name = var1:getText("General", "PresetFullClassic")
   var217.Enabled = var3
   var217.Value = arg1.createClassicModel2
   var217.ShowPressed = true
   var217.Mouse = var2
   local var5 = {}
   var5.Name = var1:getText("General", "PresetRthro")
   var5.Enabled = var3
   var5.Value = arg1.createRthroModel
   var5.ShowPressed = true
   var5.Mouse = var2
   local var6 = {}
   var6.Name = var1:getText("General", "PresetPlayerChoice")
   var6.Enabled = var3
   var6.Value = arg1.createPlayerChoiceModel
   var6.ShowPressed = true
   var6.Mouse = var2
   var200.Buttons = {}
   var200.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var200.Title = var1:getText("General", "TitlePresets")
   function var200.ButtonClicked(arg1)
      local var244 = var5
      var244 = arg1
      local var0 = var244.new(var244)
      var0:setScaleHeightMin(1, arg1)
      var0:setScaleHeightMax(1, arg1)
      var0:setScaleWidthMin(1, arg1)
      var0:setScaleWidthMax(1, arg1)
      var0:setScaleHeadMin(1, arg1)
      var0:setScaleHeadMax(1, arg1)
      var0:setScaleBodyTypeMin(0, arg1)
      var0:setScaleBodyTypeMax(0, arg1)
      var0:setScaleProportionMin(0, arg1)
      var0:setScaleProportionMax(0, arg1)
      var0:setRigTypeR15()
      return var0
   end
   
   var200.ShowPressed = true
   var200.LayoutOrder = arg1.props.LayoutOrder
   return var2.createElement(var6, var200)
end

fun7 = var3.withContext
local var282 = {}
var282.Localization = var3.Localization
var282.Mouse = var3.Mouse
var7 = fun7(var282)(var7)
var7 = require(var1.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2)
   local var0 = {}
   var0.boundaries = arg1.MorpherEditorRoot.StateMorpher.StateSettings.scaleBoundaries.boundaries
   return var0
end)(var7)
return var7
