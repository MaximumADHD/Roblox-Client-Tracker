-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AssetAccess").Packages.Framework)
local var1 = var0.TestHelpers
local var2 = var0.ContextServices
local var3 = {}
local var46 = var2.Analytics.mock()
local var5 = var2.Localization.mock()
local var6 = var0.Style.Themes.StudioTheme.mock()
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   return var1.provideMockContext(var3, arg1)
end
