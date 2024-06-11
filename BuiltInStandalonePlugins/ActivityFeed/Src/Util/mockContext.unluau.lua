-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Src.Clients.MockActivityHistoryClient)
local var4 = require(var0.Src.Contexts.ActivityHistoryProvider)
local var5 = var2.TestHelpers
local var6 = var2.ContextServices
local var7 = {}
local var51 = var6.Analytics.mock()
local var53 = var6.Localization
local var10 = var53.mock()
var53 = require(var0.Src.Resources.MakeTheme)
local var11 = var53(true)
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   local var0 = {}
   var0.activityHistoryClient = var3
   var0.contextType = "mock context"
   local var1 = {}
   var1.ActivityHistoryProvider = var1.createElement(var4, var0, arg1)
   return var5.provideMockContext(var7, var1)
end
