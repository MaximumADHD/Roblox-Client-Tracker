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
   local var198 = {}
   var198.AutomaticSize = Enum.AutomaticSize.XY
   var198.BackgroundColor3 = var0.typeSelection.background
   var198.BackgroundTransparency = 1
   var198.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var198.Layout = Enum.FillDirection.Vertical
   var198.LayoutOrder = arg1.LayoutOrder
   local var206 = {}
   var206.Bottom = var0.checkbox.bottomPadding
   var198.Padding = var206
   var198.Spacing = var0.checkbox.verticalListPadding
   var198.VerticalAlignment = Enum.VerticalAlignment.Top
   local var212 = {}
   local var216 = {}
   var216.Layout = Enum.FillDirection.Vertical
   var216.LayoutOrder = var2:getNextOrder()
   var216.AutomaticSize = Enum.AutomaticSize.XY
   var216.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var216.VerticalAlignment = Enum.VerticalAlignment.Center
   local var223 = {}
   local var227 = {}
   var227.AutomaticSize = Enum.AutomaticSize.XY
   var227.LayoutOrder = var2:getNextOrder()
   var227.OnClick = arg1.onDataConsentCheckboxClick
   var227.Layout = Enum.FillDirection.Horizontal
   local var233 = {}
   local var237 = {}
   var237.LayoutOrder = var2:getNextOrder()
   var237.Checked = arg1.dataSharingChecked
   var237.OnClick = arg1.onDataConsentCheckboxClick
   var233.DataConsentCheckbox = var2.createElement(var6, var237)
   local var246 = {}
   var246.LayoutOrder = var2:getNextOrder()
   var246.Text = var1:getText("AssetConfig", "ShareDataTitle")
   var246.Style = "Normal"
   var246.TextXAlignment = Enum.TextXAlignment.Left
   var246.TextYAlignment = Enum.TextYAlignment.Center
   var246.AutomaticSize = Enum.AutomaticSize.XY
   local var257 = {}
   local var261 = {}
   var261.PaddingLeft = UDim.new(0, var0.checkbox.labelIndent + 6)
   var257.Padding = var2.createElement("UIPadding", var261)
   var233.CheckboxLabel = var2.createElement(var8, var246, var257)
   var223.CheckboxPane = var2.createElement(var7, var227, var233)
   local var274 = {}
   var274.AutomaticSize = Enum.AutomaticSize.XY
   var274.LayoutOrder = var2:getNextOrder()
   var274.Layout = Enum.FillDirection.Vertical
   local var279 = {}
   local var283 = {}
   var283.AutomaticSize = Enum.AutomaticSize.XY
   var283.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var283.LayoutOrder = var2:getNextOrder()
   local var288 = {}
   local var289 = {}
   var289.LinkText = var1:getText("AssetConfig", "ShareDataLearnMoreLinkTerms")
   function var289.LinkCallback()
      var4:OpenBrowserWindow(var11)
   end
   
   var288.[link1] = var289
   local var297 = {}
   var297.LinkText = var1:getText("AssetConfig", "ShareDataLearnMoreLinkPrivacyPolicy")
   function var297.LinkCallback()
      var4:OpenBrowserWindow(var12)
   end
   
   var288.[link2] = var297
   var283.LinkMap = var288
   var283.MaxWidth = var0.MaxWidth
   var283.Size = UDim2.fromScale(1, 0)
   var283.Text = var1:getText("AssetConfig", "ShareDataDescription")
   var283.TextXAlignment = Enum.TextXAlignment.Left
   local var315 = {}
   var315.Font = var0.Font
   var315.TextSize = 16
   var315.Style = "Body"
   var283.TextProps = var315
   var283.TextWrapped = true
   var279.Link = var2.createElement(var9, var283)
   local var324 = {}
   var324.PaddingTop = UDim.new(0, var0.checkbox.verticalTextSpacing)
   var324.PaddingLeft = UDim.new(0, var0.checkbox.checkboxIndent + 6)
   var279.Padding = var2.createElement("UIPadding", var324)
   var223.DescriptionPane = var2.createElement(var7, var274, var279)
   var212.DataConsentPane = var2.createElement(var7, var216, var223)
   return var2.createElement(var7, var198, var212)
end
