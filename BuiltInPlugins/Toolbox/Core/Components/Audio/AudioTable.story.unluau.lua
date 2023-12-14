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
   local var264 = {}
   var264.Id = arg1
   var264.Name = "Cascaded Drumming"
   var264.AssetGenres = nil
   var264.TypeId = 10
   var264.IsEndorsed = false
   var264.Description = "High hat with various percussion sounds. Loud crashes."
   var264.Duration = "128"
   var264.HasScripts = false
   var0.Asset = var264
   local var272 = {}
   var272.Artist = "OnlyTwentyCharacters"
   var272.Type = var2.SOUND_EFFECTS.name
   var272.SoundEffectCategory = "instruments"
   var272.SoundEffectSubcategory = "Drum"
   var0.AudioDetails = var272
   local var3 = {}
   var3.Id = 1
   var3.Name = "Rolbox"
   var3.Type = "User"
   var0.Creator = var3
   return var0
end

local var7 = {}
local var285 = 10
local var286 = 1
local var287 = var7
local var290 = createAudioInfo(1)
table.insert()
function var6.render(arg1)
   local var296 = {}
   var296.Size = UDim2.new(1, 65526, 0, 260)
   var296.BackgroundTransparency = 1
   var296.Position = UDim2.new(0, 0, 0, 0)
   local var310 = {}
   local var313 = {}
   var313.Assets = var7
   var313.AudioType = arg1.props.AudioType
   function var313.CanInsertAsset()
      return true
   end
   
   function var313.InsertAsset()
      print("Insert Asset")
   end
   
   function var313.TryInsert()
      print("Try Insert")
   end
   
   function var313.TryOpenAssetConfig()
      print("try open asset config")
   end
   
   function var313.OnAssetPreviewButtonClicked()
      print("OnAssetPreviewButtonClicked")
   end
   
   var310.AudioTable = var3.Generator(var313)
   return var1.createElement("Frame", var296, var310)
end

local var12 = {}
var12.summary = "Audio Table"
local var13 = {}
var13.name = "Soundeffect"
function var13.story()
   local var337 = {}
   local var341 = {}
   var341.AudioType = var2.SOUND_EFFECTS.name
   var337.AudioTableWrapper = var1.createElement(var6, var341)
   return var1.createElement(var5, {}, var337)
end

local var14 = {}
var14.name = "Music"
function var14.story()
   local var353 = {}
   local var357 = {}
   var357.AudioType = var2.MUSIC.name
   var353.AudioTableWrapper = var1.createElement(var6, var357)
   return var1.createElement(var5, {}, var353)
end

local var15 = {}
var15.name = "Uncategorized"
function var15.story()
   local var369 = {}
   var369.AudioTableWrapper = var1.createElement(var6)
   return var1.createElement(var5, {}, var369)
end

var12.stories = {}
return var12
