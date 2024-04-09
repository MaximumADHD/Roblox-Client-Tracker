-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.MaterialFramework)
local var3 = var1.ContextServices
local var4 = var1.TestHelpers
local var5 = var2.Resources
local var6 = {}
local var30 = var3.Analytics.mock()
local var33 = {}
local var9 = {}
var9.stringResourceTable = var5.SourceStrings
var9.translationResourceTable = var5.LocalizedStrings
var5.LOCALIZATION_PROJECT_NAME = var9
var33.libraries = {}
local var10 = var3.Localization.mock(var33)
local var40 = var3.Store
var40 = require(var0.Src.TestHelpers.createEmptyStore)
local var12 = var40.new(var40())
local var13 = require(var0.Src.Resources.createTheme)(true)
local var14 = var2.Context.StudioServices.mock()
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   return var4.provideMockContext(var6, arg1)
end
