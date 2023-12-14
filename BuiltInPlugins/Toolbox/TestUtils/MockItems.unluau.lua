-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.getSimpleAsset(arg1, arg2)
   local var0 = {}
   local var4 = {}
   var4.Id = arg1
   var4.Name = arg2
   var4.Description = "asset description"
   var4.TypeId = 10
   var4.IsEndorsed = true
   var0.Asset = var4
   local var8 = {}
   var8.Id = arg1
   var8.Name = "Roblox"
   var8.Type = 1
   var0.Creator = var8
   local var11 = {}
   var11.Final = true
   var11.Url = "rbxasset://textures/StudioToolbox/Animation.png"
   var11.RetryUrl = nil
   var11.UserId = 0
   var11.EndpointType = "Avatar"
   var0.Thumbnail = var11
   local var4 = {}
   var4.ShowVotes = true
   var4.UpVotes = 4506
   var4.DownVotes = 581
   var4.CanVote = true
   var4.UserVote = true
   var4.HasVoted = true
   var4.ReasonForNotVoteable = ""
   var0.Voting = var4
   return var0
end

function var0.getSimpleAudioAsset(arg1, arg2)
   local var27 = var0
   var27 = arg1
   local var1 = var27.getSimpleAsset(var27, arg2)
   local var2 = {}
   var2.Artist = "Artist"
   var2.MusicAlbum = "Album"
   var2.MusicGenre = "atmosphere"
   var2.SoundEffectCategory = "Instrument"
   var2.SoundEffectSubcategory = "Drums"
   var1.AudioDetails = var2
   return var1
end

function var0.getPreviewAsset(arg1, arg2)
   local var0 = {}
   local var40 = {}
   var40.Id = arg1
   var40.Name = "Observation Tower"
   var40.TypeId = 10
   var40.IsEndorsed = true
   var40.AssetGenres = ""
   var40.Description = "mocked asset item"
   var40.Created = "2019-05-01T00:37:18.59Z"
   var40.Updated = "2021-05-06T19:56:54.437Z"
   var0.Asset = var40
   local var48 = {}
   var48.Id = arg1
   var48.Name = "Roblox"
   var48.Type = 1
   var0.Creator = var48
   local var51 = {}
   var51.Final = true
   var51.Url = "rbxasset://textures/StudioToolbox/Animation.png"
   var51.RetryUrl = nil
   var51.UserId = 0
   var51.EndpointType = "Avatar"
   var0.Thumbnail = var51
   local var4 = {}
   var4.ShowVotes = true
   var4.UpVotes = 4506
   var4.DownVotes = 581
   var4.CanVote = true
   var4.UserVote = true
   var4.HasVoted = true
   var4.ReasonForNotVoteable = ""
   var0.Voting = var4
   return var0
end

function var0.getFontFamilyAsset(arg1, arg2)
   local var0 = {}
   local var68 = {}
   var68.AssetGenres = ""
   var68.Created = "2019-05-01T00:37:18.59Z"
   var68.Description = "mocked FontFamily Asset"
   var68.Id = arg1
   var68.IsEndorsed = true
   var68.Name = "Comic Sans"
   var68.TypeId = 73
   var68.Updated = "2021-05-06T19:56:54.437Z"
   var0.Asset = var68
   local var76 = {}
   var76.Id = arg1
   var76.Name = "Roblox"
   var76.Type = 1
   var0.Creator = var76
   local var79 = {}
   var79.EndpointType = "Avatar"
   var79.Final = true
   var79.RetryUrl = nil
   var79.Url = "rbxasset://textures/StudioToolbox/Animation.png"
   var79.UserId = 0
   var0.Thumbnail = var79
   var0.Voting = {}
   return var0
end

return var0
