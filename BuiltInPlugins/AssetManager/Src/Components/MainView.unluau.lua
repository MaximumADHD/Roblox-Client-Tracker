-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Button
local var6 = var4.HoverArea
local var7 = var2.Util
local var8 = var7.LayoutOrderIterator
local var9 = var7.GetTextSize
local var10 = require(var0.Src.Components.AssetGridContainer)
local var11 = require(var0.Src.Components.AssetPreviewWrapper)
local var12 = require(var0.Src.Components.ExplorerOverlay)
local var13 = require(var0.Src.Components.NavBar)
local var14 = require(var0.Src.Components.RecentlyImportedView)
local var15 = require(var0.Src.Components.TopBar)
local var16 = require(var0.Src.Util.Screens)
local var17 = require(var0.Src.Thunks.LoadAllAliases)
local var18 = require(var0.Src.Thunks.GetUniverseConfiguration)
local var19 = require(var0.Src.Thunks.OnScreenChange)
local var20 = game:GetService("StudioPublishService")
local var21 = var1.PureComponent:extend("MainView")
local var22 = game:GetFastFlag("StudioAssetManagerAddRecentlyImportedView")
local var23 = game:GetFastFlag("AssetManagerRefactorPath")
local var24 = false
local var25 = false
local var26 = require(var0.Src.Util.ModernIcons)
local function fun0(arg1, arg2, arg3, arg4)
   local var0 = arg4.Height
   local var1 = {}
   var1.text = arg3:getText("Folders", arg1.Path)
   local var668 = {}
   var668.Image = var26.getIconForCurrentTheme(var26.IconEnums.BlankFolder)
   var668.Size = UDim2.new(0, var0, 0, var0)
   var668.ImageColor3 = arg4.ColorIcon
   var1.icon = var668
   var1.Screen = arg1.Path
   var1.children = {}
   var1.Parent = arg2
   if arg2 then
      local var0 = arg2.children
      arg1.LayoutOrder = var1
   end
end

function var21.init(arg1)
   local var681 = {}
   var681.currentScreen = ""
   var681.showAssetPreview = false
   var681.showOverlay = false
   local var1 = {}
   var1.text = "Game 1"
   var1.Screen = var16.MAIN.Path
   var1.children = {}
   var681.fileExplorerData = var1
   arg1.state = var681
   arg1.gamePublishedConnection = nil
   function arg1.openOverlay(arg1, arg2, arg3, arg4)
      local var0 = arg4.Height
      local var1 = {}
      var1.text = arg3:getText("Folders", arg1.Path)
      local var708 = {}
      var708.Image = var26.getIconForCurrentTheme(var26.IconEnums.BlankFolder)
      var708.Size = UDim2.new(0, var0, 0, var0)
      var708.ImageColor3 = arg4.ColorIcon
      var1.icon = var708
      var1.Screen = arg1.Path
      var1.children = {}
      var1.Parent = arg2
      if arg2 then
         local var0 = arg2.children
         arg1.LayoutOrder = var1
      end
   end
   
   function arg1.closeOverlay()
      local var721 = {}
      var721.showOverlay = true
      arg1:setState(var721)
   end
   
   function arg1.closeAssetPreview()
      local var725 = {}
      var725.showOverlay = false
      arg1:setState(var725)
   end
   
   function arg1.openAssetPreview()
      local var729 = {}
      var729.showAssetPreview = false
      var729.assetPreview = nil
      var1:setState(var729)
   end
   
   function arg1.getScripts(arg1, arg2)
      if not arg2 then
      end
      if type(arg2) == "table" then
         local var741 = {}
         var741.AssetPreviewData = arg2
         var741.OnAssetPreviewClose = var16.closeAssetPreview
         var741.AssetData = arg1
         local var746 = {}
         var746.showAssetPreview = true
         var746.assetPreview = arg1.createElement(var23, var741)
         var16:setState(var746)
      end
      warn(var16.props.Localization:getText("MainView", "AssetPreviewError"))
   end
   
   function arg1.hasScripts()
      local var0 = arg1.props
      local var1 = var0.API:get()
      local var2 = var0.dispatchLoadAllAliases
      local var764 = var23
      if var764 then
         var764 = var2
         var764(var1, var16.SCRIPTS.Path)
      end
      var764 = var2
      var764(var1, Enum.AssetType.Lua)
   end
   
end

function var21.didMount(arg1)
   arg1.hasScripts()
   if game.GameId == 0 then
      arg1.props.dispatchGetUniverseConfiguration(arg1.props.API:get())
   end
   arg1.gamePublishedConnection = var20.GamePublishFinished:connect(function(arg1, arg2, arg3, arg4)
      local var0 = arg4.Height
      local var1 = {}
      var1.text = arg3:getText("Folders", arg1.Path)
      local var799 = {}
      var799.Image = var26.getIconForCurrentTheme(var26.IconEnums.BlankFolder)
      var799.Size = UDim2.new(0, var0, 0, var0)
      var799.ImageColor3 = arg4.ColorIcon
      var1.icon = var799
      var1.Screen = arg1.Path
      var1.children = {}
      var1.Parent = arg2
      if arg2 then
         local var0 = arg2.children
         arg1.LayoutOrder = var1
      end
   end)
end

function var21.willUnmount(arg1)
   if arg1.gamePublishedConnection then
      arg1.gamePublishedConnection:disconnect()
   end
end

function var21.didUpdate(arg1, arg2)
   if not arg2 then
   end
   if type(arg2) == "table" then
      local var825 = {}
      var825.AssetPreviewData = arg2
      var825.OnAssetPreviewClose = var16.closeAssetPreview
      var825.AssetData = arg1
      local var830 = {}
      var830.showAssetPreview = true
      var830.assetPreview = arg1.createElement(var23, var825)
      var16:setState(var830)
   end
   warn(var16.props.Localization:getText("MainView", "AssetPreviewError"))
end

local function fun24()
   local var0 = arg1.props
   local var1 = var0.API:get()
   local var2 = var0.dispatchLoadAllAliases
   local var848 = var23
   if var848 then
      var848 = var2
      var848(var1, var16.SCRIPTS.Path)
   end
   var848 = var2
   var848(var1, Enum.AssetType.Lua)
end

function var21.render()
   local var0 = arg1.props
   local var1 = var0.API:get()
   local var2 = var0.dispatchLoadAllAliases
   local var848 = var23
   if var848 then
      var848 = var2
      var848(var1, var16.SCRIPTS.Path)
   end
   var848 = var2
   var848(var1, Enum.AssetType.Lua)
end

fun24 = var3.withContext
local var855 = {}
var855.API = var3.API
var855.Stylizer = var3.Stylizer
var855.Localization = var3.Localization
var21 = fun24(var855)(var21)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = arg1.AssetManagerReducer
   local var1 = {}
   var1.AssetsTable = var0.assetsTable
   var1.CurrentScreen = arg1.Screen.currentScreen
   var1.UniverseName = var0.universeName
   var1.HasLinkedScripts = var0.hasLinkedScripts
   var1.RecentAssets = var0.recentAssets
   var1.RecentViewToggled = var0.recentViewToggled
   return var1
end, function(arg1)
   local var0 = {}
   function var0.dispatchLoadAllAliases(arg1, arg2, arg3, arg4)
      local var0 = arg4.Height
      local var1 = {}
      var1.text = arg3:getText("Folders", arg1.Path)
      local var891 = {}
      var891.Image = var26.getIconForCurrentTheme(var26.IconEnums.BlankFolder)
      var891.Size = UDim2.new(0, var0, 0, var0)
      var891.ImageColor3 = arg4.ColorIcon
      var1.icon = var891
      var1.Screen = arg1.Path
      var1.children = {}
      var1.Parent = arg2
      if arg2 then
         local var0 = arg2.children
         arg1.LayoutOrder = var1
      end
   end
   
   function var0.dispatchGetUniverseConfiguration()
      local var904 = {}
      var904.showOverlay = true
      arg1:setState(var904)
   end
   
   function var0.dispatchOnScreenChange()
      local var908 = {}
      var908.showOverlay = false
      arg1:setState(var908)
   end
   
   return var0
end)(var21)
