-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Packages.Framework)
local var3 = var2.TestHelpers
local var4 = var2.ContextServices
local var5 = var0.Src.Controllers
local var58 = var1.Store
var58 = require(var0.Src.Reducers.MainReducer)
local var62 = var1.thunkMiddleware
local var8 = var4.Store.new(var58.new(var58, nil, {}, nil))
local var68 = {}
local var69 = true
var68.isInternal = var69
var69 = var2.Http.Networking.new(var68)
local var11 = {}
local var76 = var4.Analytics.mock()
local var13 = var4.Localization
local var14 = var13.mock()
var13 = var8
local var15 = require(var5.GeneralServiceController).mock()
local var16 = require(var5.ImportAssetHandler).mock(require(var5.ImageUploader).new(var69))
local var17 = require(var5.ImageLoader).mock()
local var18 = require(var5.MaterialServiceController).mock(var8.store)
local var19 = require(var5.PluginController).mock()
local var20 = require(var0.Src.Resources.MakeTheme)(true)
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   return var3.provideMockContext(var11, arg1)
end
