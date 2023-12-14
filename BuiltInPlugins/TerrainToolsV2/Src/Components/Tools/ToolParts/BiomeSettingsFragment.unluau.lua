-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = script.Parent
local var4 = require(var3.BiomeSelector)
local var5 = require(var3.LabeledSlider)
local var6 = require(var3.LabeledToggle)
local var7 = require(var0.Src.Util.Constants)
local var8 = var1.PureComponent:extend("BiomeSettingsFragment")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var155 = arg1.props.LayoutOrder
   local var158 = {}
   local var162 = {}
   var162.LayoutOrder = var0
   var162.biomeSelection = arg1.props.biomeSelection
   var162.selectBiome = arg1.props.selectBiome
   var158.BiomeSelect = var1.createElement(var4, var162)
   local var171 = {}
   var171.LayoutOrder = var0 + 1
   var171.Text = var1:getText("Generate", "BiomeSize")
   var171.Min = var7.MIN_BIOME_SIZE
   var171.Max = var7.MAX_BIOME_SIZE
   var171.SnapIncrement = var7.BIOME_SNAP_INCREMENT
   var171.Value = arg1.props.biomeSize
   var171.SetValue = arg1.props.setBiomeSize
   var158.BiomeSize = var1.createElement(var5, var171)
   local var191 = {}
   var191.LayoutOrder = var0 + 3
   var191.Text = var1:getText("Generate", "Caves")
   var191.IsOn = arg1.props.haveCaves
   var191.SetIsOn = arg1.props.setHaveCaves
   var158.CavesToggle = var1.createElement(var6, var191)
   return var1.createFragment(var158)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var155 = arg1.props.LayoutOrder
   local var158 = {}
   local var162 = {}
   var162.LayoutOrder = var0
   var162.biomeSelection = arg1.props.biomeSelection
   var162.selectBiome = arg1.props.selectBiome
   var158.BiomeSelect = var1.createElement(var4, var162)
   local var171 = {}
   var171.LayoutOrder = var0 + 1
   var171.Text = var1:getText("Generate", "BiomeSize")
   var171.Min = var7.MIN_BIOME_SIZE
   var171.Max = var7.MAX_BIOME_SIZE
   var171.SnapIncrement = var7.BIOME_SNAP_INCREMENT
   var171.Value = arg1.props.biomeSize
   var171.SetValue = arg1.props.setBiomeSize
   var158.BiomeSize = var1.createElement(var5, var171)
   local var191 = {}
   var191.LayoutOrder = var0 + 3
   var191.Text = var1:getText("Generate", "Caves")
   var191.IsOn = arg1.props.haveCaves
   var191.SetIsOn = arg1.props.setHaveCaves
   var158.CavesToggle = var1.createElement(var6, var191)
   return var1.createFragment(var158)
end

fun0 = var2.withContext
local var203 = {}
var203.Localization = var2.Localization
var8 = fun0(var203)(var8)
return var8
