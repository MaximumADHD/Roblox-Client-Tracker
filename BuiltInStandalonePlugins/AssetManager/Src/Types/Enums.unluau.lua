-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.getEnumAsList(arg1)
   local var0 = {}
   local var1 = arg1
   local var2 = nil
   local var3 = nil
   table.insert(var0, var7)
   return var0
end

local var1 = {}
var1.User = "User"
var1.Group = "Group"
var0.Scope = var1
local var2 = {}
var2.Model = "Model"
var2.Mesh = "Mesh"
var2.Image = "Image"
var2.Decal = "Decal"
var2.Audio = "Audio"
var2.Video = "Video"
var2.Animation = "Animation"
var0.AssetType = var2
local var3 = {}
var3.Reviewing = "MODERATION_STATE_REVIEWING"
var3.Rejected = "MODERATION_STATE_REJECTED"
var3.Approved = "MODERATION_STATE_APPROVED"
var0.ModerationStatus = var3
local var4 = {}
var4.AssetId = "AssetId"
var4.AssetType = "AssetType"
var4.DisplayName = "DisplayName"
var4.VersionNumber = "VersionNumber"
var4.Created = "Created"
var4.Modified = "Modified"
var4.ModerationStatus = "ModerationStatus"
var4.Owner = "Owner"
var0.AssetInfoField = var4
return var0
