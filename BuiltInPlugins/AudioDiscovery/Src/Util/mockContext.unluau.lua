-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = var1.TestHelpers
local var3 = var1.ContextServices
local var19 = var1.Style
var19 = var19.makeTheme
local var5 = {}
local var27 = var3.Analytics.mock()
local var7 = var3.Localization.mock()
local var33 = require(var0.Packages.Rodux).Store
var33 = require(var0.Src.Reducers.MainReducer)
local var8 = var3.Store.new(var33.new(var33, nil, nil, nil))
local var9 = var19(var0.Src.Components)()
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   return var2.provideMockContext(var5, arg1)
end
