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
   local var113 = var8
   local var119 = var8
   var119 = arg1
   local var0 = var5(var0, var8.api, var119.analytics, var119)
   var113.store:dispatch()
   var113 = arg1
   var4(var113)
end

function()
   plugin.Name = "PluginInstallation"
   local var126 = var9
   local var131 = var0.OnPluginInstalledFromWeb:Connect(var10)
   table.insert()
   plugin.Unloading:connect(function(arg1)
      local var137 = var8
      local var143 = var8
      var143 = arg1
      local var0 = var5(var0, var8.api, var143.analytics, var143)
      var137.store:dispatch()
      var137 = arg1
      var4(var137)
   end)
   local var149 = var9
   local var163 = var0:GetPropertyChangedSignal("InstalledPluginData"):Connect(function()
      local var0 = var6(var8.api, var1)
      var8.store:dispatch()
   end)
   table.insert()
   local var168 = {}
   var168.plugin = plugin
   var168.store = var8.store
   var168.api = var8.api
   var168.analytics = var8.analytics
   local var177 = var3
   var177 = var3.createElement(var7, var168)
   nil = var177.mount(var177)
end()
