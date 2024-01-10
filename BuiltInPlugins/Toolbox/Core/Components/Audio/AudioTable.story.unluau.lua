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
   local var259 = {}
   var259.Id = arg1
   var259.Name = "Cascaded Drumming"
   var259.AssetGenres = nil
   var259.TypeId = 10
   var259.IsEndorsed = false
   var259.Description = "High hat with various percussion sounds. Loud crashes."
   var259.Duration = "128"
   var259.HasScripts = false
   var0.Asset = var259
   local var267 = {}
   var267.Artist = "OnlyTwentyCharacters"
   var267.Type = var2.SOUND_EFFECTS.name
   var267.SoundEffectCategory = "instruments"
   var267.SoundEffectSubcategory = "Drum"
   var0.AudioDetails = var267
   local var3 = {}
   var3.Id = 1
   var3.Name = "Rolbox"
   var3.Type = "User"
   var0.Creator = var3
   return var0
end

local var7 = {}
local var280 = 10
local var281 = 1
local var282 = var7
local var285 = createAudioInfo(1)
table.insert()
function var6.render(arg1)
   local var291 = {}
   var291.Size = UDim2.new(1, 65526, 0, 260)
   var291.BackgroundTransparency = 1
   var291.Position = UDim2.new(0, 0, 0, 0)
   local var305 = {}
   local var308 = {}
   var308.Assets = var7
   var308.AudioType = arg1.props.AudioType
   function var308.CanInsertAsset()
      return true
   end
   
   function var308.InsertAsset()
      print("Insert Asset")
   end
   
   function var308.TryInsert()
      print("Try Insert")
   end
   
   function var308.TryOpenAssetConfig()
      print("try open asset config")
   end
   
   function var308.OnAssetPreviewButtonClicked()
      print("OnAssetPreviewButtonClicked")
   end
   
   var305.AudioTable = var3.Generator(var308)
   return var1.createElement("Frame", var291, var305)
end

local var12 = {}
var12.summary = "Audio Table"
local var13 = {}
var13.name = "Soundeffect"
function var13.story()
   local var332 = {}
   local var336 = {}
   var336.AudioType = var2.SOUND_EFFECTS.name
   var332.AudioTableWrapper = var1.createElement(var6, var336)
   return var1.createElement(var5, {}, var332)
end

local var14 = {}
var14.name = "Music"
function var14.story()
   local var348 = {}
   local var352 = {}
   var352.AudioType = var2.MUSIC.name
   var348.AudioTableWrapper = var1.createElement(var6, var352)
   return var1.createElement(var5, {}, var348)
end

local var15 = {}
var15.name = "Uncategorized"
function var15.story()
   local var364 = {}
   var364.AudioTableWrapper = var1.createElement(var6)
   return var1.createElement(var5, {}, var364)
end

var12.stories = {}
return var12
