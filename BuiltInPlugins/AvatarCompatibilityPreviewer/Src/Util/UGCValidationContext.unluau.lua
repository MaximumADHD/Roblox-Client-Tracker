-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Promise)
local var3 = require(var0.Packages.React)
local var4 = require(var0.Packages.UGCValidation)
local var5 = require(var0.Src.Util.Constants)
local var6 = require(var0.Src.Flags.getFFlagAvatarPreviewerUGCValidationNotice)
local var7 = var1.ContextServices.Analytics
local var8 = var1.ContextServices.ContextItem:extend("UGCValidationContext")
local function fun0()
   local var0 = {}
   var0.type = "success"
   var0.metadata = var4.util.BundlesMetadata.mock()
   return var0
end

function var8.new()
   assert(var6(), "FFlagAvatarPreviewerUGCValidationNotice is not enabled")
   local var48 = {}
   var48.validateBundleReadyForUpload = var4.validateBundleReadyForUpload
   var48._metadataResponse = nil
   var48._metadataResponsePromise = nil
   return setmetatable(var48, var8)
end

local function fun1(arg1)
   return function()
      local var0 = {}
      var0.type = "success"
      var0.metadata = var4.util.BundlesMetadata.mock()
      return var0
   end
end

function var8.mockAlwaysPasses()
   local var64 = {}
   local var65 = {}
   var65.errors = {}
   var65.pieces = {}
   function var64.validateBundleReadyForUpload()
      local var0 = {}
      var0.type = "success"
      var0.metadata = var4.util.BundlesMetadata.mock()
      return var0
   end
   
   local var75 = {}
   var75.type = "success"
   var75.metadata = var4.util.BundlesMetadata.mock()
   var64._metadataResponse = var75
   return setmetatable(var64, var8)
end

function var8.mockAlwaysFails()
   local var85 = {}
   local var86 = {}
   local var88 = {}
   var88.assetType = Enum.AssetType.Head
   local var90 = {}
   var90.type = "message"
   var90.message = "Your brain gets smart, but your head gets dumb"
   var88.error = var90
   local var93 = {}
   var93.assetType = nil
   local var95 = {}
   var95.type = "message"
   var95.message = "Full body error"
   var93.error = var95
   local var5 = {}
   var5.assetType = Enum.AssetType.LeftArm
   local var6 = {}
   var6.type = "notFound"
   var5.error = var6
   var86.errors = {}
   var86.pieces = {}
   function var85.validateBundleReadyForUpload()
      local var0 = {}
      var0.type = "success"
      var0.metadata = var4.util.BundlesMetadata.mock()
      return var0
   end
   
   local var110 = {}
   var110.type = "success"
   var110.metadata = var4.util.BundlesMetadata.mock()
   var85._metadataResponse = var110
   return setmetatable(var85, var8)
end

function var8.mockNeverReturns()
   local var120 = {}
   function var120.validateBundleReadyForUpload()
      return var2.new()
   end
   
   local var124 = {}
   var124.type = "success"
   var124.metadata = var4.util.BundlesMetadata.mock()
   var120._metadataResponse = var124
   return setmetatable(var120, var8)
end

function var8.mockUnauthorized()
   local var134 = {}
   function var134.validateBundleReadyForUpload()
      error("validateBundleReadyForUpload called when it is being mocked as unauthorized")
   end
   
   local var137 = {}
   var137.type = "error"
   var134._metadataResponse = var137
   return setmetatable(var134, var8)
end

function var8.useBundlesMetadata(arg1)
   local var0 = var7:use()
   var3.useEffect(function()
      local var0 = {}
      var0.type = "success"
      var0.metadata = var4.util.BundlesMetadata.mock()
      return var0
   end, {})
   local var1 = var3.useState(arg1._metadataResponse)
   if not var1 then
      {}.type = "pending"
   end
   return var1
end

return var8
