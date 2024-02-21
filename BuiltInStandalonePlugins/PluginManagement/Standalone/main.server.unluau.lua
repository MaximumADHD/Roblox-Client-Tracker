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
   local var74 = var8
   local var80 = var8
   var80 = arg1
   local var0 = var5(var0, var8.api, var80.analytics, var80)
   var74.store:dispatch()
   var74 = arg1
   var4(var74)
end

function()
   plugin.Name = "PluginInstallation"
   local var87 = var9
   local var92 = var0.OnPluginInstalledFromWeb:Connect(var10)
   table.insert()
   plugin.Unloading:connect(function(arg1)
      local var98 = var8
      local var104 = var8
      var104 = arg1
      local var0 = var5(var0, var8.api, var104.analytics, var104)
      var98.store:dispatch()
      var98 = arg1
      var4(var98)
   end)
   local var110 = var9
   local var124 = var0:GetPropertyChangedSignal("InstalledPluginData"):Connect(function()
      local var0 = var6(var8.api, var1)
      var8.store:dispatch()
   end)
   table.insert()
   local var129 = {}
   var129.plugin = plugin
   var129.store = var8.store
   var129.api = var8.api
   var129.analytics = var8.analytics
   local var138 = var3
   var138 = var3.createElement(var7, var129)
   nil = var138.mount(var138)
end()
