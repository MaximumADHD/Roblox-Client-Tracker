-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).Util
local var2 = require(var0.Src.Util.FileUtils)
local var3 = var1.Promise
local var4 = var1.Symbol
local var5 = game:GetService("StudioPublishService")
local var6 = game:GetFastFlag("GameSettingsExperienceGuidelines")
local var7 = {}
var7.__index = var7
var7.NameModerated = var4.named("NameModerated")
var7.DescriptionModerated = var4.named("DescriptionModerated")
var7.AltTextModerated = var4.named("AltTextModerated")
function var7.new(arg1)
   local var0 = {}
   var0.__networking = arg1
   return setmetatable(var0, var7)
end

function var7.configurationV2GET(arg1, arg2)
   return arg1.__networking:get("develop", "/v2/universes/" ... arg2 ... "/configuration")
end

function var7.iconV1GET(arg1, arg2)
   return arg1.__networking:get("develop", "/v1/universes/" ... arg2 ... "/icon")
end

function var7.thumbnailsV2GET(arg1, arg2)
   return arg1.__networking:get("games", "/v1/games/" ... arg2 ... "/media")
end

function var7.configurationV2PATCH(arg1, arg2, arg3)
   local var182 = {}
   var182.Body = arg3
   return arg1.__networking:patch("develop", "/v2/universes/" ... arg2 ... "/configuration", var182)
end

function var7.guidelinesPOST(arg1, arg2)
   assert(var6)
   local var192 = {}
   local var0 = {}
   local var1 = arg2
   var0.universeIds = {}
   var192.Body = var0
   return arg1.__networking:post("apis", "/experience-guidelines-service/v1beta1/multi-age-recommendation", var192)
end

function var7.iconV1POST(arg1, arg2, arg3)
   local var202 = var2
   var202 = arg3
   local var1 = var202.GetAssetPublishRequestInfo(var202)
   var1.Method = nil
   local var207 = "/v1/games/"
   var207 = var1
   return arg1.__networking:post("publish", var207 ... arg2 ... "/icon", var207)
end

function var7.thumbnailV1POST(arg1, arg2, arg3)
   local var217 = var2
   var217 = arg3
   local var1 = var217.GetAssetPublishRequestInfo(var217)
   var1.Method = nil
   local var222 = "/v1/games/"
   var222 = var1
   return arg1.__networking:post("publish", var222 ... arg2 ... "/thumbnail/image", var222)
end

function var7.thumbnailV1DELETE(arg1, arg2, arg3)
   return arg1.__networking:delete("develop", "/v1/universes/" ... arg2 ... "/thumbnails/" ... arg3)
end

function var7.thumbnailOrderV1POST(arg1, arg2, arg3)
   local var249 = {}
   local var0 = {}
   var0.thumbnailIds = arg3
   var249.Body = var0
   return arg1.__networking:post("develop", "/v1/universes/" ... arg2 ... "/thumbnails/order", var249)
end

function var7.thumbnailAltTextV1POST(arg1, arg2, arg3)
   local var262 = {}
   var262.Body = arg3
   return arg1.__networking:post("develop", "/v1/universes/" ... arg2 ... "/thumbnails/alt-text", var262)
end

function var7.getName(arg1, arg2)
   return arg1:configurationV2GET(arg2):await().responseBody.name
end

function var7.setName(arg1, arg2, arg3)
   local var277 = nil
   local var279 = {}
   var279.name = arg3
   arg1:configurationV2PATCH(arg2, var279):catch(function(arg1)
      local var0 = {}
      var0.__networking = arg1
      return setmetatable(var0, var7)
   end):await()
   if var277 then
      error(var277)
   else
      var5:SetUniverseDisplayName(arg3)
   end
end

function var7.getDescription(arg1, arg2)
   local var0 = arg1:configurationV2GET(arg2):await().responseBody.description
   return 
end

function var7.getGuidelines(arg1, arg2)
   assert(var6)
   local var314 = arg1:guidelinesPOST(arg2):await().responseBody
   local var0 = var314.ageRecommendationDetailsByUniverse[1]
   var314 = var0
   assert(var314)
   if var0.universeId ~= arg2 then
      local var0 = false
   end
   assert(true)
   if var0 then
      local var0 = var0.ageRecommendationDetails.ageRecommendationSummary.ageRecommendation
      if var0 then
         return var0.displayName
      end
   end
   return nil
end

function var7.setDescription(arg1, arg2, arg3)
   local var331 = {}
   var331.description = arg3
   arg1:configurationV2PATCH(arg2, var331):await()
end

function var7.getGenre(arg1, arg2)
   return arg1:configurationV2GET(arg2):await().responseBody.genre
end

function var7.setGenre(arg1, arg2, arg3)
   local var348 = {}
   var348.genre = arg3
   arg1:configurationV2PATCH(arg2, var348):await()
end

function var7.getSupportedDevices(arg1, arg2)
   return arg1:configurationV2GET(arg2):await().responseBody.playableDevices
end

function var7.setSupportedDevices(arg1, arg2, arg3)
   local var365 = {}
   var365.playableDevices = arg3
   arg1:configurationV2PATCH(arg2, var365):await()
end

function var7.getThumbnails(arg1, arg2)
   return arg1:thumbnailsV2GET(arg2):await().responseBody.data
end

function var7.addThumbnails(arg1, arg2, arg3)
   local var0 = {}
   local var385 = ipairs(arg3)
   local var1 = var0
   local var2 = arg1:thumbnailV1POST(arg2, var388):andThen(function(arg1)
      local var0 = {}
      var0.__networking = arg1
      return setmetatable(var0, var7)
   end)
   table.insert()
   local var400 = var3
   var400 = var0
   var400.all(var400):await()
   return {}
end

function var7.removeThumbnails(arg1, arg2, arg3)
   local var0 = {}
   local var410 = ipairs(arg3)
   local var1 = var0
   local var2 = arg1:thumbnailV1DELETE(arg2, var413)
   table.insert()
   local var417 = var3
   var417 = var0
   var417.all(var417):await()
end

function var7.updateThumbnailAltText(arg1, arg2, arg3)
   local var424 = nil
   local var425 = nil
   arg1:thumbnailAltTextV1POST(arg2, arg3):andThen(function(arg1)
      local var0 = {}
      var0.__networking = arg1
      return setmetatable(var0, var7)
   end):catch(function(arg1, arg2)
      return arg1.__networking:get("develop", "/v2/universes/" ... arg2 ... "/configuration")
   end):await()
   if var425 then
      error(var425)
   elseif var424 == "thumbnailAltTextV1POST" then
      return var424
   end
   return nil
end

function var7.setThumbnailsOrder(arg1, arg2, arg3)
   arg1:thumbnailOrderV1POST(arg2, arg3):await()
end

function var7.getIcon(arg1, arg2)
   local var0 = arg1:iconV1GET(arg2):await()
   local var1 = var0.responseBody.imageId
   if var1 then
      local var0 = "rbxassetid://" ... var1 or nil
   end
   return nilvar0.responseBody.isApproved,
end

function var7.setIcon(arg1, arg2, arg3)
   arg1:iconV1POST(arg2, arg3):await()
end

function var7.getOptInLocations(arg1, arg2)
   return arg1:configurationV2GET(arg2):await().responseBody.optInRegions
end

function var7.setOptInLocations(arg1, arg2, arg3, arg4)
   local var502 = {}
   var502.optInRegions = arg3
   var502.optOutRegions = arg4
   arg1:configurationV2PATCH(arg2, var502)
end

return var7
