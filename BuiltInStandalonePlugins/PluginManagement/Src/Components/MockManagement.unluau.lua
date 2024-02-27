-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Rodux)
local var3 = require(var0.Packages.Http)
local var4 = require(var0.Src.Reducers.MainReducer)
local var5 = require(var0.Packages.Framework).ContextServices
local var6 = require(var0.Src.ContextServices.PluginAPI2)
local var7 = require(var0.Src.ContextServices.Navigation)
local var8 = require(var0.Src.Resources.makeTheme)
local var9 = var1.PureComponent:extend("MockManagement")
local function fun0()
   return Instance.new("ScreenGui")
end

local function var10(arg1)
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

function var9.init(arg1, arg2)
   local var0 = var2.thunkMiddleware
   arg1.store = var2.Store.new(var4, arg1.props.initialStoreState, {})
   arg1.api = var3.API.mock({})
   arg1.plugin = var10(arg2.Container)
   arg1.target = arg2.FocusTarget or Instance.new("ScreenGui")
end

function var9.render(arg1)
   local var0 = {}
   local var751 = var5.Plugin.new(arg1.plugin)
   local var759 = var5.Localization.mock()
   local var766 = var5.Mouse.new(arg1.plugin:GetMouse())
   local var767 = var8
   local var772 = var5.Focus.new(arg1.target)
   local var5 = var5.Store.new(arg1.store)
   var6.new(arg1.api) = var0
   local var780 = var7.new()
   table.insert()
   local var782 = var5
   var782 = var0
   return var782.provide(var782, arg1.props[var1.Children])
end

return var9
