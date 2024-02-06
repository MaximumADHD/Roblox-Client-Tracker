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
   local var594 = {}
   var594.popUpGui = nil
   arg1.state = var594
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
   local var606 = {}
   var606.popUpGui = arg1.popUpGuiRef
   arg1:setState(var606)
end

function var17.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var621 = {}
   var621.Title = "Asset Configuration"
   var621.Resizable = true
   var621.MinSize = Vector2.new(var12.MIN_WIDTH, var12.MIN_HEIGHT)
   var621.Size = Vector2.new(var12.WIDTH, var12.HEIGHT)
   var621.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var621.Modal = var2
   var621.InitialEnabled = true
   var621.plugin = var0.plugin
   var4.Change.Enabled = arg1.onClose
   var4.Ref = arg1.popUpRefFunc
   var4.Event.AncestryChanged = arg1.onAncestryChanged
   local var651 = {}
   local var2 = var1.popUpGui
   if var2 then
      local var660 = var14.Focus.new(var1.popUpGui)
      local var664 = var15.new(var1.popUpGui)
      local var665 = var16
      var665 = var0.networkInterface
      local var667 = var665.new(var665)
      local var671 = var13(var11())
      local var672 = {}
      local var676 = {}
      var676.theme = var0.theme
      local var677 = {}
      local var681 = {}
      var681.localization = var0.localization
      local var682 = {}
      local var686 = {}
      var686.assetId = var0.assetId
      var686.assetTypeEnum = var0.assetTypeEnum
      var686.onClose = arg1.onClose
      var686.pluginGui = var1.popUpGui
      var682.ScreenSelect = var4.createElement(var7, var686)
      var677.LocalizationProvider = var4.createElement(var10, var681, var682)
      var672.ThemeProvider = var4.createElement(var9, var676, var677)
      local var1 = var14.provide({}, var672)
   end
   var651.ContextServices = var2
   return var4.createElement(var6, var621, var651)
end

return var17
