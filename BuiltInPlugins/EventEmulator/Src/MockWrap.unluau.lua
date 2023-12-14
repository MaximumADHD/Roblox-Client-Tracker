-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Rodux)
local var3 = require(var0.Src.Reducers.MainReducer)
local var4 = require(var0.Packages.Framework).ContextServices
local var5 = require(var0.Src.Resources.MakeTheme)
local var6 = var1.PureComponent:extend("MockPlugin")
local function fun0()
   return Instance.new("ScreenGui")
end

local function var7(arg1)
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

function var6.init(arg1, arg2)
   arg1.plugin = var7(arg2.Container)
   arg1.target = arg2.FocusTarget or Instance.new("ScreenGui")
   local var0 = var2.thunkMiddleware
   arg1.store = var2.Store.new(var3, nil, {})
end

function var6.render(arg1)
   local var79 = var4.Localization.mock()
   local var84 = var4.Plugin.new(arg1.plugin)
   local var89 = var4.Mouse.new({})
   local var91 = var5()
   local var3 = var4.Focus.new(arg1.target)
   local var4 = var4.Store.new(arg1.store)
   return var4.provide({}, arg1.props[var1.Children])
end

return function(arg1, arg2)
   local var113 = {}
   var113.Element = arg1
   return var1.createElement(var6, arg2, var113)
end
