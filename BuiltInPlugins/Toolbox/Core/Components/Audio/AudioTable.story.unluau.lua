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
   local var216 = {}
   var216.Id = arg1
   var216.Name = "Cascaded Drumming"
   var216.AssetGenres = nil
   var216.TypeId = 10
   var216.IsEndorsed = false
   var216.Description = "High hat with various percussion sounds. Loud crashes."
   var216.Duration = "128"
   var216.HasScripts = false
   var0.Asset = var216
   local var224 = {}
   var224.Artist = "OnlyTwentyCharacters"
   var224.Type = var2.SOUND_EFFECTS.name
   var224.SoundEffectCategory = "instruments"
   var224.SoundEffectSubcategory = "Drum"
   var0.AudioDetails = var224
   local var3 = {}
   var3.Id = 1
   var3.Name = "Rolbox"
   var3.Type = "User"
   var0.Creator = var3
   return var0
end

local var7 = {}
local var237 = 10
local var238 = 1
local var239 = var7
local var242 = createAudioInfo(1)
table.insert()
function var6.render(arg1)
   local var248 = {}
   var248.Size = UDim2.new(1, 65526, 0, 260)
   var248.BackgroundTransparency = 1
   var248.Position = UDim2.new(0, 0, 0, 0)
   local var262 = {}
   local var265 = {}
   var265.Assets = var7
   var265.AudioType = arg1.props.AudioType
   function var265.CanInsertAsset()
      return true
   end
   
   function var265.InsertAsset()
      print("Insert Asset")
   end
   
   function var265.TryInsert()
      print("Try Insert")
   end
   
   function var265.TryOpenAssetConfig()
      print("try open asset config")
   end
   
   function var265.OnAssetPreviewButtonClicked()
      print("OnAssetPreviewButtonClicked")
   end
   
   var262.AudioTable = var3.Generator(var265)
   return var1.createElement("Frame", var248, var262)
end

local var12 = {}
var12.summary = "Audio Table"
local var13 = {}
var13.name = "Soundeffect"
function var13.story()
   local var289 = {}
   local var293 = {}
   var293.AudioType = var2.SOUND_EFFECTS.name
   var289.AudioTableWrapper = var1.createElement(var6, var293)
   return var1.createElement(var5, {}, var289)
end

local var14 = {}
var14.name = "Music"
function var14.story()
   local var305 = {}
   local var309 = {}
   var309.AudioType = var2.MUSIC.name
   var305.AudioTableWrapper = var1.createElement(var6, var309)
   return var1.createElement(var5, {}, var305)
end

local var15 = {}
var15.name = "Uncategorized"
function var15.story()
   local var321 = {}
   var321.AudioTableWrapper = var1.createElement(var6)
   return var1.createElement(var5, {}, var321)
end

var12.stories = {}
return var12
