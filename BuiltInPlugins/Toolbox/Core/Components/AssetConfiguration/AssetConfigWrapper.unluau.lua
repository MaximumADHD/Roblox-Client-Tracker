-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Core.Util
local var2 = game:GetFastFlag("DebugBuiltInPluginModalsNotBlocking")
local var3 = var0.Packages
local var4 = require(var3.Roact)
local var5 = var0.Core.Components
local var6 = require(var5.PluginWidget.Dialog)
local var7 = require(var5.AssetConfiguration.ScreenSelect)
local var8 = var0.Core.Providers
local var9 = require(var8.ThemeProvider)
local var10 = require(var8.LocalizationProvider)
local var11 = require(var0.Core.Themes.getAssetConfigTheme)
local var12 = require(var1.AssetConfigConstants)
local var13 = require(var1.makeTheme)
local var14 = require(var3.Framework).ContextServices
local var15 = require(var0.Core.ContextServices.ModalContext)
local var16 = require(var0.Core.ContextServices.NetworkContext)
local var17 = var4.PureComponent:extend("AssetConfigWrapper")
function var17.init(arg1, arg2)
   local var582 = {}
   var582.popUpGui = nil
   arg1.state = var582
   function arg1.popUpRefFunc(arg1)
      arg1.popUpGuiRef = arg1
   end
   
   function arg1.onClose(arg1)
      if arg1.props.onAssetConfigDestroy then
         arg1.props.onAssetConfigDestroy()
      end
   end
   
end

function var17.didMount(arg1)
   local var594 = {}
   var594.popUpGui = arg1.popUpGuiRef
   arg1:setState(var594)
end

function var17.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var609 = {}
   var609.Title = "Asset Configuration"
   var609.Resizable = true
   var609.MinSize = Vector2.new(var12.MIN_WIDTH, var12.MIN_HEIGHT)
   var609.Size = Vector2.new(var12.WIDTH, var12.HEIGHT)
   var609.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var609.Modal = var2
   var609.InitialEnabled = true
   var609.plugin = var0.plugin
   var4.Change.Enabled = arg1.onClose
   var4.Ref = arg1.popUpRefFunc
   var4.Event.AncestryChanged = arg1.onAncestryChanged
   local var639 = {}
   local var2 = var1.popUpGui
   if var2 then
      local var648 = var14.Focus.new(var1.popUpGui)
      local var652 = var15.new(var1.popUpGui)
      local var653 = var16
      var653 = var0.networkInterface
      local var655 = var653.new(var653)
      local var659 = var13(var11())
      local var660 = {}
      local var664 = {}
      var664.theme = var0.theme
      local var665 = {}
      local var669 = {}
      var669.localization = var0.localization
      local var670 = {}
      local var674 = {}
      var674.assetId = var0.assetId
      var674.assetTypeEnum = var0.assetTypeEnum
      var674.onClose = arg1.onClose
      var674.pluginGui = var1.popUpGui
      var670.ScreenSelect = var4.createElement(var7, var674)
      var665.LocalizationProvider = var4.createElement(var10, var669, var670)
      var660.ThemeProvider = var4.createElement(var9, var664, var665)
      local var1 = var14.provide({}, var660)
   end
   var639.ContextServices = var2
   return var4.createElement(var6, var609, var639)
end

return var17
