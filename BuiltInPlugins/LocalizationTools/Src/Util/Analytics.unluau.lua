-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local var1 = game:GetService("RbxAnalyticsService")
local var2 = game:GetService("StudioService")
local var3 = script.Parent.Parent.Parent
local var4 = require(var3.Packages.Cryo)
local var5 = require(var3.Src.Util.RbxEntriesToWebEntries)
local var6 = {}
var6.__index = var6
function var6.new(arg1, arg2)
   local var0 = {}
   var0.sender = arg1 or var1
   var0.context = "localizationPlugin"
   var0.target = "studio"
   var0.userId = var2:GetUserId()
   var0.logEvents = arg2
   setmetatable(var0, var6)
   return var0
end

function var6.logEvent(arg1, arg2, arg3)
   if arg1.logEvents then
      print(string.format("Analytics: sendEventDeferred: \"%s\", %s", arg2, var0:JSONEncode(arg3)))
   end
end

function var6.sendEventDeferred(arg1, arg2, arg3)
   local var275 = var4.Dictionary
   var275 = arg3
   local var277 = {}
   var277.uid = arg1.userId
   var277.gameId = game.GameId
   var277.placeId = game.PlaceId
   local var0 = var275.join(var275, var277)
   arg1.sender:SendEventDeferred(arg1.target, arg1.context, arg2, var0)
   arg1:logEvent(arg2, var0)
end

function var6.reportButtonPress(arg1, arg2, arg3)
   local var0 = {}
   var0.btnName = arg2
   var0.status = arg3
   arg1:sendEventDeferred("buttonPressed", var0)
end

function var6.reportToolOpened(arg1, arg2)
   local var0 = {}
   var0.method = arg2
   arg1:sendEventDeferred("toolOpened", var0)
end

function var6.reportUploadPatch(arg1, arg2, arg3)
   local var0 = {}
   var0.btnName = arg3
   var0.totalRows = arg2.totalRows
   var0.totalTranslations = arg2.totalTranslations
   var0.supportedLocales = arg2.supportedLocales
   var0.unsupportedLocales = arg2.unsupportedLocales
   var0.numChangedTranslations = arg2.numChangedTranslations
   var0.numRemovedTranslations = arg2.numRemovedTranslations
   var0.numAddedTranslations = arg2.numAddedTranslations
   var0.addedSupportedLanguages = arg2.newLanguages
   arg1:sendEventDeferred("logLocalizationPerfStats", var0)
end

function var6.reportDownloadTable(arg1, arg2, arg3, arg4, arg5)
   local var0 = var5(arg2:GetEntries(), arg4, arg5)
   local var1 = {}
   var1.btnName = arg3
   var1.totalRows = var0.totalRows
   var1.totalTranslations = var0.totalTranslations
   var1.supportedLocales = var0.supportedLocales
   var1.unsupportedLocales = var0.unsupportedLocales
   arg1:sendEventDeferred("logLocalizationPerfStats", var1)
end

function var6.reportUploadTable(arg1, arg2, arg3)
   local var0 = {}
   var0.btnName = arg3
   var0.totalRows = arg2.totalRows
   var0.totalTranslations = arg2.totalTranslations
   var0.supportedLocales = arg2.supportedLocales
   var0.unsupportedLocales = arg2.unsupportedLocales
   var0.numChangedTranslations = arg2.numChangedTranslations
   var0.numRemovedTranslations = arg2.numRemovedTranslations
   var0.numAddedTranslations = arg2.numAddedTranslations
   var0.addedSupportedLanguages = arg2.newLanguages
   arg1:sendEventDeferred("logLocalizationPerfStats", var0)
end

function var6.mock()
   local var0 = {}
   function var0.SendEventDeferred()
   end
   
   local var356 = var6
   var356 = var0
   return var356.new(var356)
end

return var6
