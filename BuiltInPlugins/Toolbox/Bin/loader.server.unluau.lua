-- Generated with Unluau (https://github.com/valencefun/unluau)
require(script.Parent.defineLuaFlags)
local var0 = script.Parent.Parent
if require(var0.Core.Util.isCli)() then
end
local var1 = require(var0.Core.Util.Constants)
local var2 = require(var0.SharedPluginConstants)
local var3 = game:GetService("StudioService")
local var4 = game:GetService("StudioAssetService")
local var5 = game:GetService("MemStorageService")
local var6 = {}
if not game:GetFastFlag("UnifyModelPackagePublish3") then
   if game:GetFastFlag("ShowSaveToRobloxOnStudioAssetService") then
      local function fun0()
         return var4.OnSaveToRoblox
      end
      
   else
      local var0 = nil
   end
end
local function fun1()
   return var4.OnSaveToRoblox
end

var6.StudioAssetService.OnSaveToRoblox = nil
function var6.StudioService.OnSaveToRoblox()
   return var3.OnSaveToRoblox
end

function var6.StudioService.OnImportFromRoblox()
   return var3.OnImportFromRoblox
end

function var6.StudioService.OnOpenManagePackagePlugin()
   return var3.OnOpenManagePackagePlugin
end

function var6.StudioService.OnPublishAsPlugin()
   return var3.OnPublishAsPlugin
end

function "MemStorageService." ... "OpenAssetConfiguration"()
   var5:Bind("OpenAssetConfiguration", function()
      return var4.OnSaveToRoblox
   end)
   return Instance.new("BindableEvent").Event
end

function "MemStorageService." ... var2.SHOW_TOOLBOX_PLUGINS_EVENT()
   var5:Bind(var2.SHOW_TOOLBOX_PLUGINS_EVENT, function()
      return var4.OnSaveToRoblox
   end)
   return Instance.new("BindableEvent").Event
end

if game:GetFastFlag("AICOChatBot") then
   function "MemStorageService." ... var2.SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT()
      var5:Bind(var2.SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT, function()
         return var4.OnSaveToRoblox
      end)
      return Instance.new("BindableEvent").Event
   end
   
end
function "MemStorageService." ... var1.OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE(arg1)
   var5:Bind(var1.OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE, function()
      return var4.OnSaveToRoblox
   end)
   return Instance.new("BindableEvent").Event
end

local var7 = {}
var7.plugin = plugin
var7.pluginName = "Toolbox"
var7.translationResourceTable = var0.LocalizationSource.LocalizedStrings
var7.fallbackResourceTable = var0.LocalizationSource.SourceStrings
var7.overrideLocaleId = nil
var7.localizationNamespace = nil
function var7.getToolbarName()
   return "luaToolboxToolbar"
end

local var132 = {}
function var132.getName()
   return "luaToolboxButton"
end

function var132.getDescription()
   return "Insert items from the toolbox"
end

var132.icon = require(var0.Core.Util.Images).TOOLBOX_ICON
var132.text = nil
var132.clickableWhenViewportHidden = true
var7.buttonInfo = var132
local var138 = {}
var138.id = "Toolbox"
var138.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, true, false, 0, 0, var1.TOOLBOX_MIN_WIDTH, var1.TOOLBOX_MIN_HEIGHT)
function var138.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "General", "ToolboxToolbarName")
end

var138.name = "Toolbox"
local var159 = Enum.ZIndexBehavior.Sibling
var138.zIndexBehavior = var159
var7.dockWidgetInfo = var138
var7.extraTriggers = var6
function var7.shouldImmediatelyOpen()
   local var0 = var3:GetStartupAssetId()
   if var0 then
      if 0 < var0 then
         return true
      end
   end
   return false
end

var159 = var7
local var11 = require(var0.PluginLoader.PluginLoaderBuilder).build(var159)
if not var11.pluginLoader:waitForUserInteraction() then
end
local var173 = script
var173 = var11
require(var173.Parent.main)(plugin, var173)
