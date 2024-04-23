-- Generated with Unluau (https://github.com/valencefun/unluau)
require(script.Parent.defineLuaFlags)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Dev.TestLoader)
var1.launch("Toolbox", var0.Core)
if var1.isCli() then
end
local var2 = require(var0.Core.Util.Constants)
local var3 = require(var0.SharedPluginConstants)
local var4 = game:GetService("StudioService")
local var5 = game:GetService("StudioAssetService")
local var6 = game:GetService("MemStorageService")
local var7 = {}
if not game:GetFastFlag("UnifyModelPackagePublish3") then
   if game:GetFastFlag("ShowSaveToRobloxOnStudioAssetService") then
      local function fun0()
         return var5.OnSaveToRoblox
      end
      
   else
      local var0 = nil
   end
end
local function fun1()
   return var5.OnSaveToRoblox
end

var7.StudioAssetService.OnSaveToRoblox = nil
function var7.StudioService.OnSaveToRoblox()
   return var4.OnSaveToRoblox
end

function var7.StudioService.OnImportFromRoblox()
   return var4.OnImportFromRoblox
end

function var7.StudioService.OnOpenManagePackagePlugin()
   return var4.OnOpenManagePackagePlugin
end

function var7.StudioService.OnPublishAsPlugin()
   return var4.OnPublishAsPlugin
end

function "MemStorageService." ... "OpenAssetConfiguration"()
   var6:Bind("OpenAssetConfiguration", function()
      return var5.OnSaveToRoblox
   end)
   return Instance.new("BindableEvent").Event
end

function "MemStorageService." ... var3.SHOW_TOOLBOX_PLUGINS_EVENT()
   var6:Bind(var3.SHOW_TOOLBOX_PLUGINS_EVENT, function()
      return var5.OnSaveToRoblox
   end)
   return Instance.new("BindableEvent").Event
end

if game:GetFastFlag("AICOChatBot") then
   function "MemStorageService." ... var3.SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT()
      var6:Bind(var3.SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT, function()
         return var5.OnSaveToRoblox
      end)
      return Instance.new("BindableEvent").Event
   end
   
end
function "MemStorageService." ... var2.OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE(arg1)
   var6:Bind(var2.OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE, function()
      return var5.OnSaveToRoblox
   end)
   return Instance.new("BindableEvent").Event
end

local var8 = {}
var8.plugin = plugin
var8.pluginName = "Toolbox"
var8.translationResourceTable = var0.LocalizationSource.LocalizedStrings
var8.fallbackResourceTable = var0.LocalizationSource.SourceStrings
var8.overrideLocaleId = nil
var8.localizationNamespace = nil
function var8.getToolbarName()
   return "luaToolboxToolbar"
end

local var135 = {}
function var135.getName()
   return "luaToolboxButton"
end

function var135.getDescription()
   return "Insert items from the toolbox"
end

var135.icon = require(var0.Core.Util.Images).TOOLBOX_ICON
var135.text = nil
var135.clickableWhenViewportHidden = true
var8.buttonInfo = var135
local var141 = {}
var141.id = "Toolbox"
var141.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, true, false, 0, 0, var2.TOOLBOX_MIN_WIDTH, var2.TOOLBOX_MIN_HEIGHT)
function var141.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "General", "ToolboxToolbarName")
end

var141.name = "Toolbox"
local var162 = Enum.ZIndexBehavior.Sibling
var141.zIndexBehavior = var162
var8.dockWidgetInfo = var141
var8.extraTriggers = var7
function var8.shouldImmediatelyOpen()
   local var0 = var4:GetStartupAssetId()
   if var0 then
      if 0 < var0 then
         return true
      end
   end
   return false
end

var162 = var8
local var12 = require(var0.PluginLoader.PluginLoaderBuilder).build(var162)
if not var12.pluginLoader:waitForUserInteraction() then
end
local var176 = script
var176 = var12
require(var176.Parent.main)(plugin, var176)
