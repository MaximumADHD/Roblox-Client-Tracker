-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = var0.Packages
local var2 = require(var1.Dash)
local var3 = require(var1.Framework)
local var4 = require(var1.React)
local var5 = var0.Core.Util
local var6 = require(var5.Constants)
local var7 = require(var5.AssetConfigConstants)
local var8 = require(var0.Libs.Http.Url)
local var9 = var3.ContextServices
local var10 = game:GetService("BrowserService")
local var11 = var3.UI
local var12 = var11.Pane
local var13 = var11.TextLabel
local var14 = var11.TextWithLinks
local var15 = var11.ToggleButton
local var16 = var3.Util.LayoutOrderIterator
local var17 = var3.Util.StyleModifier
local var18 = require(var0.Core.Components.AssetConfiguration.ConfigSectionWrapper)
local var19 = game:DefineFastString("DataSharing_PreferencesUrlSuffix", "settings/data-collection?tab=avatar-items")
local var20 = game:DefineFastString("DataSharing_TermsUrlSuffix", "docs/ai-data-sharing")
return function(arg1)
   local var0 = var9.Stylizer:use()
   local var1 = var9.Localization:use()
   local var2 = var16.new()
   local var3 = {}
   var3.Font = var0.Font
   var3.Style = "Body"
   var3.TextSize = 16
   var3.TextXAlignment = Enum.TextXAlignment.Left
   local var77 = {}
   var77.AutomaticSize = Enum.AutomaticSize.XY
   var77.LayoutOrder = arg1.LayoutOrder
   var77.Title = var1:getText("AssetConfig", "ShareDataHeader")
   local var84 = {}
   local var88 = {}
   var88.AutomaticSize = Enum.AutomaticSize.Y
   var88.LayoutOrder = var2:getNextOrder()
   var88.Layout = Enum.FillDirection.Vertical
   var88.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var88.Spacing = var0.toggle.verticalListPadding
   local var96 = {}
   local var100 = {}
   var100.LayoutOrder = var2:getNextOrder()
   var100.OnClick = arg1.onDataConsentToggleClick
   var100.Selected = arg1.dataSharingToggled
   var100.Size = UDim2.new(0, var0.toggle.buttonWidth, 0, var0.toggle.buttonHeight)
   var96.ToggleButton = var4.createElement(var15, var100)
   local var117 = {}
   var117.AutomaticSize = Enum.AutomaticSize.Y
   var117.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var117.Layout = Enum.FillDirection.Vertical
   var117.LayoutOrder = var2:getNextOrder()
   var117.Spacing = var0.toggle.verticalTextSpacing
   local var125 = {}
   local var131 = {}
   var131.Text = var1:getText("AssetConfig", "ShareDataDescriptionText")
   var131.AutomaticSize = Enum.AutomaticSize.XY
   var131.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var131.LayoutOrder = var2:getNextOrder()
   var131.MaxWidth = var0.MaxWidth
   local var141 = true
   var131.TextWrapped = var141
   var141 = var3
   var125.DescriptionText = var4.createElement(var13, var2.join(var131, var141))
   local var147 = {}
   var147.AutomaticSize = Enum.AutomaticSize.Y
   var147.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var147.LayoutOrder = var2:getNextOrder()
   local var152 = {}
   local var153 = {}
   var153.LinkText = var1:getText("AssetConfig", "ShareDataDescriptionLinkPreferences")
   function var153.LinkCallback()
      var10:OpenBrowserWindow(var8.CREATE_URL ... var19)
   end
   
   var152.[link1] = var153
   local var8 = {}
   var8.LinkText = var1:getText("AssetConfig", "ShareDataDescriptionLinkLearnMore")
   function var8.LinkCallback()
      var10:OpenBrowserWindow(var8.CREATE_URL ... var20)
   end
   
   var152.[link2] = var8
   var147.LinkMap = var152
   var147.Text = var1:getText("AssetConfig", "ShareDataDescriptionLinks")
   var147.TextProps = var3
   var147.TextWrapped = true
   var125.LinkText = var4.createElement(var14, var147)
   var96.DescriptionTextPane = var4.createElement(var12, var117, var125)
   var84.DescriptionPane = var4.createElement(var12, var88, var96)
   return var4.createElement(var18, var77, var84)
end
