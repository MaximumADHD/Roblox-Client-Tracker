-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Promise)
local var3 = require(var0.Packages.React)
local var4 = require(var0.Packages.UGCValidation)
local var5 = require(var0.Src.Util.Constants)
local var6 = var1.ContextServices.Analytics
local var7 = var1.ContextServices.ContextItem:extend("UGCValidationContext")
local function fun0()
   local var0 = {}
   var0.type = "success"
   var0.metadata = var4.util.BundlesMetadata.mock()
   return var0
end

function var7.new()
   local var39 = {}
   var39.validateBundleReadyForUpload = var4.validateBundleReadyForUpload
   var39._metadataResponse = nil
   var39._metadataResponsePromise = nil
   return setmetatable(var39, var7)
end

local function fun1(arg1)
   return function()
      local var0 = {}
      var0.type = "success"
      var0.metadata = var4.util.BundlesMetadata.mock()
      return var0
   end
end

function var7.mockAlwaysPasses()
   local var55 = {}
   local var56 = {}
   var56.errors = {}
   var56.pieces = {}
   function var55.validateBundleReadyForUpload()
      local var0 = {}
      var0.type = "success"
      var0.metadata = var4.util.BundlesMetadata.mock()
      return var0
   end
   
   local var66 = {}
   var66.type = "success"
   var66.metadata = var4.util.BundlesMetadata.mock()
   var55._metadataResponse = var66
   return setmetatable(var55, var7)
end

function var7.mockAlwaysFails()
   local var76 = {}
   local var77 = {}
   local var79 = {}
   var79.assetType = Enum.AssetType.Head
   local var81 = {}
   var81.type = "message"
   var81.message = "Your brain gets smart, but your head gets dumb"
   var79.error = var81
   local var84 = {}
   var84.assetType = nil
   local var86 = {}
   var86.type = "message"
   var86.message = "Full body error"
   var84.error = var86
   local var5 = {}
   var5.assetType = Enum.AssetType.LeftArm
   local var6 = {}
   var6.type = "notFound"
   var5.error = var6
   var77.errors = {}
   var77.pieces = {}
   function var76.validateBundleReadyForUpload()
      local var0 = {}
      var0.type = "success"
      var0.metadata = var4.util.BundlesMetadata.mock()
      return var0
   end
   
   local var101 = {}
   var101.type = "success"
   var101.metadata = var4.util.BundlesMetadata.mock()
   var76._metadataResponse = var101
   return setmetatable(var76, var7)
end

function var7.mockNeverReturns()
   local var111 = {}
   function var111.validateBundleReadyForUpload()
      return var2.new()
   end
   
   local var115 = {}
   var115.type = "success"
   var115.metadata = var4.util.BundlesMetadata.mock()
   var111._metadataResponse = var115
   return setmetatable(var111, var7)
end

function var7.mockUnauthorized()
   local var125 = {}
   function var125.validateBundleReadyForUpload()
      error("validateBundleReadyForUpload called when it is being mocked as unauthorized")
   end
   
   local var128 = {}
   var128.type = "error"
   var125._metadataResponse = var128
   return setmetatable(var125, var7)
end

function var7.useBundlesMetadata(arg1)
   local var0 = var6:use()
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

return var7
