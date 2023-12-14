-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox").Packages
local var1 = require(var0.Framework)
local var2 = require(var0.React)
local var3 = var1.ContextServices
local var4 = game:GetService("BrowserService")
local var5 = var1.UI
local var6 = var5.Checkbox
local var7 = var5.Pane
local var8 = var5.TextLabel
local var9 = var5.TextWithLinks
local var10 = var1.Util.LayoutOrderIterator
local var11 = game:DefineFastString("DataSharing_TermsUrl", "https://en.help.roblox.com/hc/articles/20681705234580")
local var12 = game:DefineFastString("DataSharing_PrivacyPolicyUrl", "https://en.help.roblox.com/hc/articles/115004630823")
return function(arg1)
   local var0 = var3.Stylizer:use()
   local var1 = var3.Localization:use()
   local var2 = var10.new()
   local var48 = {}
   var48.AutomaticSize = Enum.AutomaticSize.XY
   var48.BackgroundColor3 = var0.typeSelection.background
   var48.BackgroundTransparency = 1
   var48.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var48.Layout = Enum.FillDirection.Vertical
   var48.LayoutOrder = arg1.LayoutOrder
   local var56 = {}
   var56.Bottom = var0.checkbox.bottomPadding
   var48.Padding = var56
   var48.Spacing = var0.checkbox.verticalListPadding
   var48.VerticalAlignment = Enum.VerticalAlignment.Top
   local var62 = {}
   local var66 = {}
   var66.Layout = Enum.FillDirection.Vertical
   var66.LayoutOrder = var2:getNextOrder()
   var66.AutomaticSize = Enum.AutomaticSize.XY
   var66.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var66.VerticalAlignment = Enum.VerticalAlignment.Center
   local var73 = {}
   local var77 = {}
   var77.AutomaticSize = Enum.AutomaticSize.XY
   var77.LayoutOrder = var2:getNextOrder()
   var77.OnClick = arg1.onDataConsentCheckboxClick
   var77.Layout = Enum.FillDirection.Horizontal
   local var83 = {}
   local var87 = {}
   var87.LayoutOrder = var2:getNextOrder()
   var87.Checked = arg1.dataSharingChecked
   var87.OnClick = arg1.onDataConsentCheckboxClick
   var83.DataConsentCheckbox = var2.createElement(var6, var87)
   local var96 = {}
   var96.LayoutOrder = var2:getNextOrder()
   var96.Text = var1:getText("AssetConfig", "ShareDataTitle")
   var96.Style = "Normal"
   var96.TextXAlignment = Enum.TextXAlignment.Left
   var96.TextYAlignment = Enum.TextYAlignment.Center
   var96.AutomaticSize = Enum.AutomaticSize.XY
   local var107 = {}
   local var111 = {}
   var111.PaddingLeft = UDim.new(0, var0.checkbox.labelIndent + 6)
   var107.Padding = var2.createElement("UIPadding", var111)
   var83.CheckboxLabel = var2.createElement(var8, var96, var107)
   var73.CheckboxPane = var2.createElement(var7, var77, var83)
   local var124 = {}
   var124.AutomaticSize = Enum.AutomaticSize.XY
   var124.LayoutOrder = var2:getNextOrder()
   var124.Layout = Enum.FillDirection.Vertical
   local var129 = {}
   local var133 = {}
   var133.AutomaticSize = Enum.AutomaticSize.XY
   var133.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var133.LayoutOrder = var2:getNextOrder()
   local var138 = {}
   local var139 = {}
   var139.LinkText = var1:getText("AssetConfig", "ShareDataLearnMoreLinkTerms")
   function var139.LinkCallback()
      var4:OpenBrowserWindow(var11)
   end
   
   var138.[link1] = var139
   local var147 = {}
   var147.LinkText = var1:getText("AssetConfig", "ShareDataLearnMoreLinkPrivacyPolicy")
   function var147.LinkCallback()
      var4:OpenBrowserWindow(var12)
   end
   
   var138.[link2] = var147
   var133.LinkMap = var138
   var133.MaxWidth = var0.MaxWidth
   var133.Size = UDim2.fromScale(1, 0)
   var133.Text = var1:getText("AssetConfig", "ShareDataDescription")
   var133.TextXAlignment = Enum.TextXAlignment.Left
   local var165 = {}
   var165.Font = var0.Font
   var165.TextSize = 16
   var165.Style = "Body"
   var133.TextProps = var165
   var133.TextWrapped = true
   var129.Link = var2.createElement(var9, var133)
   local var174 = {}
   var174.PaddingTop = UDim.new(0, var0.checkbox.verticalTextSpacing)
   var174.PaddingLeft = UDim.new(0, var0.checkbox.checkboxIndent + 6)
   var129.Padding = var2.createElement("UIPadding", var174)
   var73.DescriptionPane = var2.createElement(var7, var124, var129)
   var62.DataConsentPane = var2.createElement(var7, var66, var73)
   return var2.createElement(var7, var48, var62)
end
