-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Packages.Framework)
local var3 = var2.TestHelpers
local var4 = var2.ContextServices
local var5 = require(var0.Src.Reducers.MainReducer)
local var6 = require(var0.Src.Resources.MakeTheme)
local function var7(arg1)
   local var0 = var4.Analytics.mock()
   local var1 = var4.Localization.mock()
   local var35 = var4.Store
   var35 = arg1
   if not var35 then
      local var44 = var1.thunkMiddleware
      local var0 = var1.Store.new(var5, nil, {}, nil)
   end
   local var3 = var35.new(var35)
   local var4 = var6(true)
   return {}
end

return function(arg1, arg2)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   return var3.provideMockContext(var7(arg2), arg1)
end
