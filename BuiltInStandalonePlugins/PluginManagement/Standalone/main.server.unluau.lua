-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("StudioService")
local var1 = game:GetService("MarketplaceService")
local var2 = script.Parent.Parent
require(var2.Bin.defineLuaFlags)
local var3 = require(var2.Packages.Roact)
local var4 = require(var2.Src.Util.showDialog)
local var5 = require(var2.Src.Thunks.InstallPluginFromWeb)
local var6 = require(var2.Src.Thunks.RefreshPlugins)
local var7 = require(var2.Src.Components.ManagementApp)
local var8 = require(var2.Src.Util.getPluginGlobals)(plugin)
local var9 = {}
local function var10(arg1)
   local var48 = var8
   local var54 = var8
   var54 = arg1
   local var0 = var5(var0, var8.api, var54.analytics, var54)
   var48.store:dispatch()
   var48 = arg1
   var4(var48)
end

function()
   plugin.Name = "PluginInstallation"
   local var61 = var9
   local var66 = var0.OnPluginInstalledFromWeb:Connect(var10)
   table.insert()
   plugin.Unloading:connect(function(arg1)
      local var72 = var8
      local var78 = var8
      var78 = arg1
      local var0 = var5(var0, var8.api, var78.analytics, var78)
      var72.store:dispatch()
      var72 = arg1
      var4(var72)
   end)
   local var84 = var9
   local var98 = var0:GetPropertyChangedSignal("InstalledPluginData"):Connect(function()
      local var0 = var6(var8.api, var1)
      var8.store:dispatch()
   end)
   table.insert()
   local var103 = {}
   var103.plugin = plugin
   var103.store = var8.store
   var103.api = var8.api
   var103.analytics = var8.analytics
   local var112 = var3
   var112 = var3.createElement(var7, var103)
   nil = var112.mount(var112)
end()
