-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialGenerator")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Promise)
local var3 = var1.Util.Signal
local var4 = require(var0.Packages.MaterialFramework).Context.StudioServices
local var5 = require(var0.Src.Enum.GenerationErrorType)
local var6 = require(var0.Src.Flags.getFFlagMaterialGeneratorNewUI)
local var7 = var0.Src.Util
local var8 = require(var7.Constants)
local var9 = require(var7.parseGenerationError)
local var10 = require(var0.Src.Types)
local var11 = var1.ContextServices.ContextItem:extend("GenerationController")
function var11.new(arg1, arg2)
   assert(var6(), "Expected FFlagMaterialGeneratorNewUI to be true")
   local var53 = {}
   var53._mock = arg2
   var53._materialGenerationService = arg1:getService("MaterialGenerationService")
   var53._session = nil
   var53.isGeneratingImages = false
   var53.GeneratingImagesChanged = var3.new()
   local var1 = setmetatable(var53, var11)
   function var1.getNextGenerationId()
      return arg1:getService("HttpService"):GenerateGUID(false)
   end
   
   return var1
end

function var11.mock(arg1)
   arg1 = arg1 or var4.mock()
   local var78 = var11
   var78 = arg1
   return var78.new(var78, true)
end

function var11.generateImages(arg1, arg2, arg3)
   return var2.new(function()
      return arg1:getService("HttpService"):GenerateGUID(false)
   end)
end

function var11.generateTextureMaps(arg1, arg2)
   return var2.new(function()
      return arg1:getService("HttpService"):GenerateGUID(false)
   end)
end

function var11.uploadTextureMaps(arg1, arg2)
   return var2.new(function()
      return arg1:getService("HttpService"):GenerateGUID(false)
   end)
end

function var11.destroy(arg1)
   if arg1._session then
      arg1._session:Destroy()
      arg1._session = nil
   end
end

return var11
