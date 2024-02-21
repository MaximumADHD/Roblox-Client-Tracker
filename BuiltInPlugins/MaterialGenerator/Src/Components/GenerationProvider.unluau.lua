-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local var1 = game:GetService("MaterialService")
local var2 = script:FindFirstAncestor("MaterialGenerator")
local var3 = require(var2.Packages.Dash)
local var4 = require(var2.Packages.React)
local var5 = require(var2.Packages.Framework).ContextServices.Localization
local var6 = require(var2.Packages.ReactUtils).useToggleState
local var7 = require(var2.Packages.MaterialFramework).Context.StudioServices
local var8 = require(var2.Src.Enum.GenerationErrorType)
local var9 = require(var2.Src.Hooks.useStackState)
local var10 = var2.Src.Util
local var11 = require(var10.GeneratedMaterialsContext)
local var12 = require(var10.GenerationContext)
local var13 = require(var10.generateMaterialVariants)
local var14 = require(var10.getNewMaterialName)
local var15 = require(var10.uploadMaterialVariant)
local var16 = require(var2.Src.Types)
local function var17()
   return var0:GenerateGUID(false)
end

local function fun0()
   return var3.collectArray(var1:GetDescendants(), function(arg1, arg2)
      if arg2:IsA("MaterialVariant") then
         return arg2.Name
      end
      return nil
   end)
end

local function var18(arg1, arg2, arg3)
   local var143 = var8.CustomMessage
   if arg2 == "getText" then
      var143 = arg3
      return var143 or arg1:getText("Errors", "UnknownGenerationError")
   end
   if arg2 == "getText" then
      return arg1:getText("Errors", "NoSession")
   end
   if arg2 == "getText" then
      return arg1:getText("Errors", "ServerError500")
   end
   if arg2 == "getText" then
      return arg1:getText("Errors", "ServerError504")
   end
   if arg2 == "getText" then
      return arg1:getText("Errors", "TextFullyFiltered")
   end
   if arg2 == "getText" then
      return arg1:getText("Errors", "NoSelectedMaterial")
   end
   if arg2 == "getText" then
      return arg1:getText("Errors", "FailedToGenerateMaps")
   end
   if arg2 == "getText" then
      return arg1:getText("Errors", "TooManyRequests")
   end
   if arg2 == "getText" then
      return arg1:getText("Errors", "AccountingFailedDecrement")
   end
   if arg2 == "getText" then
      return arg1:getText("Errors", "FailedToSetImage")
   end
   if arg2 == "getText" then
      return arg1:getText("Errors", "UnknownGenerationError")
   end
   error("Unknown errorType")
   return arg1:getText("Errors", "UnknownGenerationError")
end

return function(arg1)
   local var0 = var4.useContext(var11)
   local var1 = var6(false)
   local var2 = var9({})
   local var3 = var5:use()
   local var4 = var7.use():getService("MaterialGenerationService")
   local var5 = var4.useState(function()
      return var0:GenerateGUID(false)
   end)
   local var258 = var1.enabled
   local var261 = var5
   var0.addMaterials = var0.setMaterialStatus
   var2 = var5
   local var7 = {}
   var7.session = var5
   var7.isGenerating = var1.enabled
   var7.currentPromptText = var4.useState("")
   var7.errorMessage = var2.getTop()
   var7.popError = var2.pop
   var7.generateMaterialVariants = var4.useCallback(function(arg1, arg2)
      if arg2:IsA("MaterialVariant") then
         return arg2.Name
      end
      return nil
   end, {})
   var7.uploadMaterialVariant = var4.useCallback(function()
      return var3.collectArray(var1:GetDescendants(), function(arg1, arg2)
         if arg2:IsA("MaterialVariant") then
            return arg2.Name
         end
         return nil
      end)
   end, {})
   local var289 = {}
   var289.value = var7
   return var4.createElement(var12.Provider, var289, arg1.children)
end
