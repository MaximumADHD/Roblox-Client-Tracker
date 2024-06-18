-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TextureGenerator")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices.Localization
local var4 = var2.UI
local var5 = var4.Alert
local var6 = var4.Pane
local var7 = var4.Button
local var8 = var2.Style.Stylizer
local var9 = var2.Util.LayoutOrderIterator
local var10 = require(var0.Src.Util.Constants)
local var11 = game:GetService("GuiService")
return function(arg1)
   local var0 = var3:use()
   local var1 = var9.new()
   local var2 = var8:use("TermsOfServiceScreen")
   local var45 = {}
   var45.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var45.Layout = Enum.FillDirection.Vertical
   var45.VerticalAlignment = Enum.VerticalAlignment.Top
   local var49 = {}
   local var53 = {}
   var53.AutomaticSize = Enum.AutomaticSize.XY
   var53.Size = var2.AlertSize
   var53.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var53.Layout = Enum.FillDirection.Vertical
   var53.VerticalAlignment = Enum.VerticalAlignment.Top
   var53.LayoutOrder = var1:getNextOrder()
   local var61 = {}
   local var65 = {}
   var65.Title = var0:getText("TermsOfService", "Title")
   var65.Description = var0:getText("TermsOfService", "Description")
   local var74 = {}
   local var4 = {}
   var4.LinkText = var0:getText("TermsOfService", "LinkText")
   function var4.LinkCallback()
      var11:OpenBrowserWindow(var10.TERMS_OF_SERVICE_URL)
   end
   
   var74.[link] = var4
   var65.LinkMap = var74
   var65.Style = "Notice"
   var65.ZIndex = 2
   var61.TermsAlert = var1.createElement(var5, var65)
   var49.AlertPane = var1.createElement(var6, var53, var61)
   local var91 = {}
   var91.Size = var2.ButtonPaneSize
   var91.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var91.Layout = Enum.FillDirection.Vertical
   var91.VerticalAlignment = Enum.VerticalAlignment.Top
   var91.LayoutOrder = var1:getNextOrder()
   local var98 = {}
   local var102 = {}
   var102.AnchorPoint = var2.ButtonAnchorPoint
   var102.Text = var0:getText("TermsOfService", "Accept")
   var102.Size = var2.ButtonSize
   var102.Style = "RoundPrimary"
   function var102.OnClick()
      arg1.Plugin:SetSetting(var10.TEXTURE_GENERATOR_LEGAL_ACCEPT, true)
      arg1.AcceptedButtonEnable()
   end
   
   var98.AcceptButton = var1.createElement(var7, var102)
   var49.ButtonPane = var1.createElement(var6, var91, var98)
   return var1.createElement(var6, var45, var49)
end
