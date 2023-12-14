-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Rodux)
local var3 = require(var0.Src.Reducers.MainReducer)
local var4 = require(var0.Packages.Framework).ContextServices
local var5 = require(var0.Src.Resources.PluginTheme)
local var6 = require(var0.Src.ContextServices.AnalyticsContext)
local var7 = require(var0.Src.Util.Analytics)
local var8 = var1.PureComponent:extend("MockPlugin")
local function fun0()
   return Instance.new("ScreenGui")
end

local function var9(arg1)
   local var0 = {}
   function var0.GetMouse(arg1)
      return {}
   end
   
   local function fun0(arg1)
      return {}
   end
   
   function var0.CreateQWidgetPluginGui()
      local var0 = Instance.new("ScreenGui")
      var0.Name = "MockPluginGui"
      if arg1 then
         var0.Parent = arg1
      end
      return var0
   end
   
   function var0.CreateDockWidgetPluginGui(arg1)
      local var0 = Instance.new("ScreenGui")
      var0.Name = "MockPluginGui"
      if arg1 then
         var0.Parent = arg1
      end
      return var0
   end
   
   return var0
end

function var8.init(arg1, arg2)
   arg1.plugin = var9(arg2.Container)
   arg1.target = arg2.FocusTarget or Instance.new("ScreenGui")
   local var0 = var2.thunkMiddleware
   arg1.store = var2.Store.new(var3, arg2.StoreState, {})
   arg1.analyticsImpl = var7.mock()
end

function var8.render(arg1)
   local var311 = var4.API.new()
   local var315 = var4.Localization.mock()
   local var320 = var4.Plugin.new(arg1.plugin)
   local var325 = var4.Mouse.new({})
   local var3 = var5(true)
   local var4 = var4.Focus.new(arg1.target)
   local var5 = var4.Store.new(arg1.store)
   local var6 = var6.new(arg1.analyticsImpl)
   return var4.provide({}, arg1.props[var1.Children])
end

return function(arg1, arg2)
   local var352 = {}
   var352.Element = arg1
   return var1.createElement(var8, arg2, var352)
end
