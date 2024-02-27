-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = var1.TestHelpers
local var3 = var1.ContextServices
local var4 = require(var0.Src.Thunks.Types)
local var5 = {}
var5.Plugin = var3.Plugin.mock()
var5.Localization = var3.Localization.mock()
local var401 = var3.Networking
local var403 = var401.mock()
var5.Networking = var403
var403 = require(var0.Src.Util.recordChange)
var401 = game:GetService("ChangeHistoryService")
var5.recordChange = var403(var401)
local var8 = {}
local var408 = var3.Analytics.mock()
local var10 = var3.Localization.mock()
local var412 = var3.Store
var412 = require(var0.Src.Util.createStore)
local var12 = var412.new(var412(var5))
local var13 = require(var0.Src.Resources.MakeTheme)(true)
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   return var2.provideMockContext(var8, arg1)
end
