-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = var1.TestHelpers
local var3 = var1.ContextServices
local var4 = {}
local var81 = var3.Analytics.mock()
local var6 = var3.Localization.mock()
local var87 = require(var0.Packages.Rodux).Store
var87 = require(var0.Src.Reducers.MainReducer)
local var8 = var3.Store.new(var87.new(var87, nil, nil, nil))
local var9 = require(var0.Src.Resources.MakeTheme)(true)
local var10 = require(var0.Src.ContextServices.CollaboratorsServiceContext).new()
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   return var2.provideMockContext(var4, arg1)
end
