-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = require(var0.Packages.Rodux)
local var4 = var1.ContextServices
local var5 = require(var0.Src.ContextItems)
local var6 = var1.Http
local var7 = var1.TestHelpers.Instances.MockPlugin
local var8 = require(var0.Src.TestHelpers.MockTerrain)
local var9 = var4.Localization
local var10 = require(var0.Src.Reducers.MainReducer)
local var11 = require(var0.Src.Resources.PluginTheme)
local var12 = require(var0.Src.Resources.makeTheme)
local var13 = require(var0.Src.Util.PluginActivationController)
local var14 = var0.Src.TerrainInterfaces
local var15 = require(var14.TerrainGenerationInstance)
local var16 = require(var14.TerrainImporterInstance)
local var17 = require(var14.TerrainSeaLevel)
local var18 = require(var0.Src.Util.ShorelineController)
local var19 = require(var0.Src.Util.SmoothVoxelsController)
local var20 = var2.PureComponent:extend(script.Name)
function var20.createMocks()
   local var0 = var7.new()
   local var1 = {}
   var1.plugin = var0
   var1.mouse = var0:GetMouse()
   var1.store = var3.Store.new(var10)
   var1.theme = var11.mock()
   var1.localization = var9.mock()
   var1.terrain = var8.new()
   var1.networking = var6.Networking.mock()
   return var1
end

function var20.createMockContextItems(arg1)
   local var0 = var4.Analytics.mock()
   local var1 = {}
   var1.plugin = var4.Plugin.new(arg1.plugin)
   var1.mouse = var4.Mouse.new(arg1.mouse)
   var1.store = var4.Store.new(arg1.store)
   var1.theme = var5.DEPRECATED_Theme.new(arg1.theme)
   var1.devFrameworkThemeItem = var12(true)
   var1.localization = arg1.localization
   var1.analytics = var0
   var1.networking = arg1.networking
   var1.terrain = var5.Terrain.new(arg1.terrain)
   var1.pluginActivationController = var13.new(arg1.plugin)
   local var143 = {}
   var143.terrain = arg1.terrain
   var143.localization = arg1.localization
   var143.analytics = var0
   var143.userId = 0
   var1.terrainImporter = var16.new(var143)
   local var150 = {}
   var150.terrain = arg1.terrain
   var150.localization = arg1.localization
   var150.analytics = var0
   var1.terrainGeneration = var15.new(var150)
   local var156 = {}
   var156.terrain = arg1.terrain
   var156.localization = arg1.localization
   var1.seaLevel = var17.new(var156)
   local var160 = var18
   var160 = var0
   var1.shorelineController = var160.new(var160, arg1.plugin, arg1.store, arg1.terrain, true)
   local var167 = var19
   var167 = var0
   var1.smoothVoxelsController = var167.new(var167, arg1.plugin, arg1.store, arg1.terrain, true)
   return var1
end

function var20.cleanupMocks(arg1, arg2)
   arg2.smoothVoxelsController:destroy()
   arg2.shorelineController:destroy()
   arg2.seaLevel:destroy()
   arg2.terrainGeneration:destroy()
   arg2.terrainImporter:destroy()
   arg2.pluginActivationController:destroy()
   arg2.localization:destroy()
   arg2.devFrameworkThemeItem:destroy()
   arg2.theme:destroy()
   arg1.store:destruct()
   arg1.plugin:Destroy()
end

function var20.init(arg1)
   arg1.mocks = var20.createMocks()
   arg1.mockItems = var20.createMockContextItems(arg1.mocks)
end

function var20.willUnmount(arg1)
   var20.cleanupMocks(arg1.mocks, arg1.mockItems)
   arg1.mocks = {}
   arg1.mockItems = {}
end

function var20.render(arg1)
   local var0 = arg1.mockItems.smoothVoxelsController
   local var241 = {}
   var241.WrappedComponent = var2.createFragment(arg1.props[var2.Children])
   return var4.provide({ 
      arg1.mockItems.plugin, 
      arg1.mockItems.mouse, 
      arg1.mockItems.store, 
      arg1.mockItems.theme, 
      arg1.mockItems.localization, 
      arg1.mockItems.analytics, 
      arg1.mockItems.pluginActivationController, 
      arg1.mockItems.terrainImporter, 
      arg1.mockItems.terrainGeneration, 
      arg1.mockItems.seaLevel, 
      arg1.mockItems.shorelineController
   }, var241)
end

function var20.createElementWithMockContext(arg1, arg2, arg3)
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
   local var271 = {}
   local var272 = var2
   var272 = arg1
   var271.MyComponent = var272.createElement(var272, arg2, arg3)
   return var2.createElement(var20, var271)
end

return var20
