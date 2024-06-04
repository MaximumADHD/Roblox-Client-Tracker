-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Types.Category)
local var3 = require(script.Parent.AudioTable)
local var4 = require(var0.Core.Models.AssetInfo)
local var5 = require(var0.Stories.ToolboxStoryWrapper)
local var6 = var1.PureComponent:extend("AudioRowWrapper")
function createAudioInfo(arg1)
   local var0 = {}
   local var126 = {}
   var126.Id = arg1
   var126.Name = "Cascaded Drumming"
   var126.AssetGenres = nil
   var126.TypeId = 10
   var126.IsEndorsed = false
   var126.Description = "High hat with various percussion sounds. Loud crashes."
   var126.Duration = "128"
   var126.HasScripts = false
   var0.Asset = var126
   local var134 = {}
   var134.Artist = "OnlyTwentyCharacters"
   var134.Type = var2.SOUND_EFFECTS.name
   var134.SoundEffectCategory = "instruments"
   var134.SoundEffectSubcategory = "Drum"
   var0.AudioDetails = var134
   local var3 = {}
   var3.Id = 1
   var3.Name = "Rolbox"
   var3.Type = "User"
   var0.Creator = var3
   return var0
end

local var7 = {}
local var147 = 10
local var148 = 1
local var149 = var7
local var152 = createAudioInfo(1)
table.insert()
function var6.render(arg1)
   local var158 = {}
   var158.Size = UDim2.new(1, 65526, 0, 260)
   var158.BackgroundTransparency = 1
   var158.Position = UDim2.new(0, 0, 0, 0)
   local var172 = {}
   local var175 = {}
   var175.Assets = var7
   var175.AudioType = arg1.props.AudioType
   function var175.CanInsertAsset()
      return true
   end
   
   function var175.InsertAsset()
      print("Insert Asset")
   end
   
   function var175.TryInsert()
      print("Try Insert")
   end
   
   function var175.TryOpenAssetConfig()
      print("try open asset config")
   end
   
   function var175.OnAssetPreviewButtonClicked()
      print("OnAssetPreviewButtonClicked")
   end
   
   var175.SwimlaneName = "test"
   var172.AudioTable = var3.Generator(var175)
   return var1.createElement("Frame", var158, var172)
end

local var12 = {}
var12.summary = "Audio Table"
local var13 = {}
var13.name = "Soundeffect"
function var13.story()
   local var200 = {}
   local var204 = {}
   var204.AudioType = var2.SOUND_EFFECTS.name
   var200.AudioTableWrapper = var1.createElement(var6, var204)
   return var1.createElement(var5, {}, var200)
end

local var14 = {}
var14.name = "Music"
function var14.story()
   local var216 = {}
   local var220 = {}
   var220.AudioType = var2.MUSIC.name
   var216.AudioTableWrapper = var1.createElement(var6, var220)
   return var1.createElement(var5, {}, var216)
end

local var15 = {}
var15.name = "Uncategorized"
function var15.story()
   local var232 = {}
   var232.AudioTableWrapper = var1.createElement(var6)
   return var1.createElement(var5, {}, var232)
end

var12.stories = {}
return var12
