-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.RoactNavigation)
local var3 = require(var0.Src.Components.Navigation.NavigatableView)
local var4 = require(var0.Src.Components.ManagementMainView)
local var5 = require(var0.Src.Components.PluginDetails.PluginDetailsView)
local var6 = require(var0.Src.Util.Constants)
local function fun0(arg1)
   return function(arg1, arg2)
      local var854 = {}
      var854.navigation = arg1
      return var2.createElement(var1, var854, var3(arg1, arg2))
   end
end

local function fun43(arg1, arg2)
   local var868 = {}
   var868.navigation = arg1
   return var1.createElement(var4, var868)
end

function var6.APP_PAGE.Main(arg1)
   return function(arg1, arg2)
      local var876 = {}
      var876.navigation = arg1
      return var2.createElement(var1, var876, var3(arg1, arg2))
   end
end

local function fun46(arg1, arg2)
   local var892 = {}
   var892.assetId = arg1.getParam("assetId")
   var892.navigation = arg1
   var892.Size = UDim2.new(1, 0, 1, 0)
   return var1.createElement(var5, var892)
end

function var6.APP_PAGE.Detail(arg1)
   return function(arg1, arg2)
      local var906 = {}
      var906.navigation = arg1
      return var2.createElement(var1, var906, var3(arg1, arg2))
   end
end

local var913 = {}
var913.routes = {}
local var915 = var6.APP_PAGE.Main
var913.initialRouteName = var915
var915 = var2.createStackNavigator(var913)
return var2.createAppContainer(var915)
