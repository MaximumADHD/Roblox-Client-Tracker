-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Rodux)
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.TestHelpers.Instances.MockPlugin
local var6 = require(var0.Src.Reducers.MainReducer)
local var7 = require(var0.Src.Resources.MakeTheme)
local var8 = var1.PureComponent:extend("MockProvider")
function var8.createMocks()
   local var0 = var5.new()
   local var1 = {}
   var1.plugin = var0
   var1.mouse = var0:GetMouse()
   var1.store = var2.Store.new(var6)
   var1.theme = var7(true)
   return var1
end

function var8.createMockContextItems(arg1)
   local var0 = {}
   var0.plugin = var4.Plugin.new(arg1.plugin)
   var0.mouse = var4.Mouse.new(arg1.mouse)
   var0.store = var4.Store.new(arg1.store)
   var0.analytics = var4.Analytics.mock()
   return var0
end

function var8.cleanupMocks(arg1, arg2)
   arg2.theme:destroy()
   arg1.store:destruct()
   arg1.plugin:Destroy()
end

function var8.init(arg1)
   arg1.mocks = var8.createMocks()
   arg1.mockItems = var8.createMockContextItems(arg1.mocks)
end

function var8.render(arg1)
   local var451 = arg1.mockItems.analytics
   local var452 = {}
   var452.WrappedComponent = var1.createElement("Frame", nil, arg1.props[var1.Children])
   return var4.provide({ arg1.mockItems.plugin, arg1.mockItems.mouse, arg1.mockItems.store, arg1.mockItems.theme }, var452)
end

function var8.createElementWithMockContext(arg1, arg2, arg3)
   if type(arg1) == "function" then
      local var0 = false
      if type(arg1) == "table" then
         if type(arg1.render) == "function" then
            local var0 = false
         end
         local var0 = true
      end
   end
   assert(true, "MockWrapper.createElementWithMockContext passed invalid component")
   local var484 = {}
   local var485 = var1
   var485 = arg1
   var484.MyComponent = var485.createElement(var485, arg2, arg3)
   return var1.createElement(var8, var484)
end

function mockWrap(arg1, arg2, arg3)
   local var494 = var8
   var494 = arg1
   return var494.createElementWithMockContext(var494, arg2, arg3)
end

return mockWrap
