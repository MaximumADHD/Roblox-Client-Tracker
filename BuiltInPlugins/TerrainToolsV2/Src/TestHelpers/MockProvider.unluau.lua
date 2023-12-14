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
local var20 = require(var0.Src.Util.ImageUploader)
local var21 = var2.PureComponent:extend(script.Name)
function var21.createMocks()
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

function var21.createMockContextItems(arg1)
   local var0 = var4.Analytics.mock()
   local var1 = var20.new(arg1.networking)
   local var2 = {}
   var2.plugin = var4.Plugin.new(arg1.plugin)
   var2.mouse = var4.Mouse.new(arg1.mouse)
   var2.store = var4.Store.new(arg1.store)
   var2.theme = var5.DEPRECATED_Theme.new(arg1.theme)
   var2.devFrameworkThemeItem = var12(true)
   var2.localization = arg1.localization
   var2.analytics = var0
   var2.networking = arg1.networking
   var2.imageUploader = var1
   var2.terrain = var5.Terrain.new(arg1.terrain)
   var2.pluginActivationController = var13.new(arg1.plugin)
   local var152 = {}
   var152.terrain = arg1.terrain
   var152.localization = arg1.localization
   var152.analytics = var0
   var152.imageUploader = var1
   var152.userId = 0
   var2.terrainImporter = var16.new(var152)
   local var159 = {}
   var159.terrain = arg1.terrain
   var159.localization = arg1.localization
   var159.analytics = var0
   var2.terrainGeneration = var15.new(var159)
   local var165 = {}
   var165.terrain = arg1.terrain
   var165.localization = arg1.localization
   var2.seaLevel = var17.new(var165)
   local var169 = var18
   var169 = var0
   var2.shorelineController = var169.new(var169, arg1.plugin, arg1.store, arg1.terrain, true)
   local var176 = var19
   var176 = var0
   var2.smoothVoxelsController = var176.new(var176, arg1.plugin, arg1.store, arg1.terrain, true)
   return var2
end

function var21.cleanupMocks(arg1, arg2)
   arg2.smoothVoxelsController:destroy()
   arg2.shorelineController:destroy()
   arg2.seaLevel:destroy()
   arg2.terrainGeneration:destroy()
   arg2.terrainImporter:destroy()
   arg2.pluginActivationController:destroy()
   arg2.imageUploader:destroy()
   arg2.localization:destroy()
   arg2.devFrameworkThemeItem:destroy()
   arg2.theme:destroy()
   arg1.store:destruct()
   arg1.plugin:Destroy()
end

function var21.init(arg1)
   arg1.mocks = var21.createMocks()
   arg1.mockItems = var21.createMockContextItems(arg1.mocks)
end

function var21.willUnmount(arg1)
   var21.cleanupMocks(arg1.mocks, arg1.mockItems)
   arg1.mocks = {}
   arg1.mockItems = {}
end

function var21.render(arg1)
   local var0 = arg1.mockItems.smoothVoxelsController
   local var252 = {}
   var252.WrappedComponent = var2.createFragment(arg1.props[var2.Children])
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
   }, var252)
end

function var21.createElementWithMockContext(arg1, arg2, arg3)
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
   local var282 = {}
   local var283 = var2
   var283 = arg1
   var282.MyComponent = var283.createElement(var283, arg2, arg3)
   return var2.createElement(var21, var282)
end

return var21
