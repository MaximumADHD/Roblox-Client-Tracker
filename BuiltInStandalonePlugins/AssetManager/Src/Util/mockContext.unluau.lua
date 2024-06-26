-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.Framework)
local var2 = var1.TestHelpers
local var3 = var1.ContextServices
local var4 = var3.Localization.mock()
local var5 = require(var0.Src.Networking).mock()
local var6 = require(var0.Src.Controllers.PluginController).mock(var2.Instances.MockPlugin.new("AssetManager"), var5, var4)
local var7 = {}
local var8 = var3.Analytics
local var227 = var8.mock()
var8 = var4
local var230 = require(var0.Packages.Rodux).Store
var230 = require(var0.Src.Reducers.MainReducer)
local var11 = var3.Store.new(var230.new(var230, nil, nil, nil))
local var12 = var1.Style.Themes.StudioTheme.mock()
local var13 = var6
local var14 = require(var0.Src.Controllers.ExplorerController).mock(var6, var5)
local var15 = require(var0.Src.Controllers.ItemsController).mock(var6, var5)
local var16 = var5
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   return var2.provideMockContext(var7, arg1)
end
