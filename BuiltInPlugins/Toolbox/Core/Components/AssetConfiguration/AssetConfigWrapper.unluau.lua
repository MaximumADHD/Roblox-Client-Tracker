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
   local var575 = {}
   var575.popUpGui = nil
   arg1.state = var575
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
   local var587 = {}
   var587.popUpGui = arg1.popUpGuiRef
   arg1:setState(var587)
end

function var17.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var602 = {}
   var602.Title = "Asset Configuration"
   var602.Resizable = true
   var602.MinSize = Vector2.new(var12.MIN_WIDTH, var12.MIN_HEIGHT)
   var602.Size = Vector2.new(var12.WIDTH, var12.HEIGHT)
   var602.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var602.Modal = var2
   var602.InitialEnabled = true
   var602.plugin = var0.plugin
   var4.Change.Enabled = arg1.onClose
   var4.Ref = arg1.popUpRefFunc
   var4.Event.AncestryChanged = arg1.onAncestryChanged
   local var632 = {}
   local var2 = var1.popUpGui
   if var2 then
      local var641 = var14.Focus.new(var1.popUpGui)
      local var645 = var15.new(var1.popUpGui)
      local var646 = var16
      var646 = var0.networkInterface
      local var648 = var646.new(var646)
      local var652 = var13(var11())
      local var653 = {}
      local var657 = {}
      var657.theme = var0.theme
      local var658 = {}
      local var662 = {}
      var662.localization = var0.localization
      local var663 = {}
      local var667 = {}
      var667.assetId = var0.assetId
      var667.assetTypeEnum = var0.assetTypeEnum
      var667.onClose = arg1.onClose
      var667.pluginGui = var1.popUpGui
      var663.ScreenSelect = var4.createElement(var7, var667)
      var658.LocalizationProvider = var4.createElement(var10, var662, var663)
      var653.ThemeProvider = var4.createElement(var9, var657, var658)
      local var1 = var14.provide({}, var653)
   end
   var632.ContextServices = var2
   return var4.createElement(var6, var602, var632)
end

return var17
