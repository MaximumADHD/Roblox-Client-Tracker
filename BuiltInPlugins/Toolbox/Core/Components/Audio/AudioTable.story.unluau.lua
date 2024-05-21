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
   local var120 = {}
   var120.Id = arg1
   var120.Name = "Cascaded Drumming"
   var120.AssetGenres = nil
   var120.TypeId = 10
   var120.IsEndorsed = false
   var120.Description = "High hat with various percussion sounds. Loud crashes."
   var120.Duration = "128"
   var120.HasScripts = false
   var0.Asset = var120
   local var128 = {}
   var128.Artist = "OnlyTwentyCharacters"
   var128.Type = var2.SOUND_EFFECTS.name
   var128.SoundEffectCategory = "instruments"
   var128.SoundEffectSubcategory = "Drum"
   var0.AudioDetails = var128
   local var3 = {}
   var3.Id = 1
   var3.Name = "Rolbox"
   var3.Type = "User"
   var0.Creator = var3
   return var0
end

local var7 = {}
local var141 = 10
local var142 = 1
local var143 = var7
local var146 = createAudioInfo(1)
table.insert()
function var6.render(arg1)
   local var152 = {}
   var152.Size = UDim2.new(1, 65526, 0, 260)
   var152.BackgroundTransparency = 1
   var152.Position = UDim2.new(0, 0, 0, 0)
   local var166 = {}
   local var169 = {}
   var169.Assets = var7
   var169.AudioType = arg1.props.AudioType
   function var169.CanInsertAsset()
      return true
   end
   
   function var169.InsertAsset()
      print("Insert Asset")
   end
   
   function var169.TryInsert()
      print("Try Insert")
   end
   
   function var169.TryOpenAssetConfig()
      print("try open asset config")
   end
   
   function var169.OnAssetPreviewButtonClicked()
      print("OnAssetPreviewButtonClicked")
   end
   
   var166.AudioTable = var3.Generator(var169)
   return var1.createElement("Frame", var152, var166)
end

local var12 = {}
var12.summary = "Audio Table"
local var13 = {}
var13.name = "Soundeffect"
function var13.story()
   local var193 = {}
   local var197 = {}
   var197.AudioType = var2.SOUND_EFFECTS.name
   var193.AudioTableWrapper = var1.createElement(var6, var197)
   return var1.createElement(var5, {}, var193)
end

local var14 = {}
var14.name = "Music"
function var14.story()
   local var209 = {}
   local var213 = {}
   var213.AudioType = var2.MUSIC.name
   var209.AudioTableWrapper = var1.createElement(var6, var213)
   return var1.createElement(var5, {}, var209)
end

local var15 = {}
var15.name = "Uncategorized"
function var15.story()
   local var225 = {}
   var225.AudioTableWrapper = var1.createElement(var6)
   return var1.createElement(var5, {}, var225)
end

var12.stories = {}
return var12
