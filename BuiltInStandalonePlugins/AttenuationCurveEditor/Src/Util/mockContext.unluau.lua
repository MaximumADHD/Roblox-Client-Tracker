-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AttenuationCurveEditor")
local var1 = require(var0.Packages.Framework)
local var2 = var1.TestHelpers
local var3 = var1.ContextServices
local var4 = {}
local var205 = var3.Analytics.mock()
local var6 = var3.Localization.mock()
local var211 = require(var0.Packages.Rodux).Store
var211 = require(var0.Src.Reducers.MainReducer)
local var7 = var3.Store.new(var211.new(var211, nil, nil, nil))
local var8 = var1.Style.Themes.StudioTheme.mock()
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   return var2.provideMockContext(var4, arg1)
end
