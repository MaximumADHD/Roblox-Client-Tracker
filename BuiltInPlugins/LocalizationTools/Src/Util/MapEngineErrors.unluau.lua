-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetEngineFeature("EnableLocalizedLocalizationToolsErrorsApi")
function matchPatternToMessage(arg1, arg2, arg3)
   local var0 = {}
   local var41 = string.match(arg1, arg2.pattern)
   local var2 = nil
   local var3 = var0
   local var4 = arg2.numArguments
   if var3 ~= var4 then
      local var0 = false
   end
   local var5 = true
   if var5 then
      var2 = arg3:getText("EngineErrors", arg2.key, var0)
   end
   var3 = var5
   var4 = var2
   return var3var4,
end

local var1 = {}
function var1.getTranslationForEngineError(arg1, arg2)
   assert(var0, "expected FFlagLocalizedLocalizationToolsErrors to be true")
   local var0 = {}
   var0.pattern = "^Error reading (.-): Missing a Key or Source header column.$"
   var0.key = "MissingKeyOrSource"
   var0.numArguments = 1
   local var15 = {}
   var15.pattern = "^.+%s(.+)%s?: Missing a Key or Source header column.%s?.*$"
   var15.key = "MissingKeyOrSource"
   var15.numArguments = 1
   local var19 = {}
   var19.pattern = "^.+%s(.+)%s?: Error opening CSV .-: Invalid UTF%-8. File must be UTF%-8 encoded.%s?.*$"
   var19.key = "NonUtf8"
   var19.numArguments = 1
   local var3 = {}
   var3.pattern = "^Error opening CSV (.-): Invalid UTF%-8. File must be UTF%-8 encoded.$"
   var3.key = "NonUtf8"
   local var4 = 1
   var3.numArguments = var4
   var0 = { {}, {}, {} }
   local var5 = nil
   local var6 = nil
   if matchPatternToMessage(arg1, var4, arg2) then
      return 
   end
   return arg1
end

return var1
