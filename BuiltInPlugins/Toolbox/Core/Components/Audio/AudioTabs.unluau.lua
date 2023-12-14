-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework).ContextServices
local var4 = require(var0.Core.Util.Constants)
local var5 = require(var0.Core.Types.Category)
local var6 = require(var0.Core.Util.Images)
local var7 = var2.PureComponent:extend("AudioTabs")
function var7.init(arg1, arg2)
   arg1.state = {}
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.OnTabSelect
   local var3 = var0.SelectedTab
   local var4 = var0.Stylizer.audioTabs
   local function fun0(arg1, arg2)
      arg1.state = {}
   end
   
   local var48 = {}
   var48.Size = UDim2.new(1, 0, 1, 0)
   var48.BackgroundTransparency = 1
   local var56 = {}
   local var60 = {}
   var60.FillDirection = Enum.FillDirection.Horizontal
   var60.SortOrder = Enum.SortOrder.LayoutOrder
   var60.VerticalAlignment = Enum.VerticalAlignment.Center
   var60.HorizontalAlignment = Enum.HorizontalAlignment.Center
   local var65 = var2.createElement("UIListLayout", var60)
   var56.Layout = var65
   function var65(arg1, arg2)
      arg1.state = {}
   end
   
   local var71 = var65(var5.SOUND_EFFECTS, var6.SOUND_EFFECT_ICON, 1)
   var56.SoundEffectTab = var71
   function var71(arg1, arg2)
      arg1.state = {}
   end
   
   var56.MusicTab = var71(var5.MUSIC, var6.MUSIC_ICON, 2)
   return var2.createElement("Frame", var48, var56)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.OnTabSelect
   local var3 = var0.SelectedTab
   local var4 = var0.Stylizer.audioTabs
   local function fun0(arg1, arg2)
      arg1.state = {}
   end
   
   local var48 = {}
   var48.Size = UDim2.new(1, 0, 1, 0)
   var48.BackgroundTransparency = 1
   local var56 = {}
   local var60 = {}
   var60.FillDirection = Enum.FillDirection.Horizontal
   var60.SortOrder = Enum.SortOrder.LayoutOrder
   var60.VerticalAlignment = Enum.VerticalAlignment.Center
   var60.HorizontalAlignment = Enum.HorizontalAlignment.Center
   local var65 = var2.createElement("UIListLayout", var60)
   var56.Layout = var65
   function var65(arg1, arg2)
      arg1.state = {}
   end
   
   local var71 = var65(var5.SOUND_EFFECTS, var6.SOUND_EFFECT_ICON, 1)
   var56.SoundEffectTab = var71
   function var71(arg1, arg2)
      arg1.state = {}
   end
   
   var56.MusicTab = var71(var5.MUSIC, var6.MUSIC_ICON, 2)
   return var2.createElement("Frame", var48, var56)
end

fun2 = var3.withContext
local var79 = {}
var79.Stylizer = var3.Stylizer
var79.Localization = var3.Localization
var7 = fun2(var79)(var7)
return var7
