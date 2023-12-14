-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Packages.Framework)
local var3 = var2.TestHelpers
local var4 = var2.ContextServices
local var5 = {}
local var27 = var4.Analytics.mock()
local var7 = var4.Localization.mock()
local var33 = var1.Store
var33 = require(var0.Src.Reducers.MainReducer)
local var37 = var1.thunkMiddleware
local var8 = var4.Store.new(var33.new(var33, nil, {}, nil))
local var9 = require(var0.Src.Resources.MakeTheme)(true)
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   return var3.provideMockContext(var5, arg1)
end
