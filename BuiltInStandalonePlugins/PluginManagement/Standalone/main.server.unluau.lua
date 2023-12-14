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
   local var156 = var8
   local var162 = var8
   var162 = arg1
   local var0 = var5(var0, var8.api, var162.analytics, var162)
   var156.store:dispatch()
   var156 = arg1
   var4(var156)
end

function()
   plugin.Name = "PluginInstallation"
   local var169 = var9
   local var174 = var0.OnPluginInstalledFromWeb:Connect(var10)
   table.insert()
   plugin.Unloading:connect(function(arg1)
      local var180 = var8
      local var186 = var8
      var186 = arg1
      local var0 = var5(var0, var8.api, var186.analytics, var186)
      var180.store:dispatch()
      var180 = arg1
      var4(var180)
   end)
   local var192 = var9
   local var206 = var0:GetPropertyChangedSignal("InstalledPluginData"):Connect(function()
      local var0 = var6(var8.api, var1)
      var8.store:dispatch()
   end)
   table.insert()
   local var211 = {}
   var211.plugin = plugin
   var211.store = var8.store
   var211.api = var8.api
   var211.analytics = var8.analytics
   local var220 = var3
   var220 = var3.createElement(var7, var211)
   nil = var220.mount(var220)
end()
