-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Src.Components.PlacesServiceContext)
local var4 = require(var0.Src.Resources.Theme)
local var5 = var1.UI
local var6 = var5.IconButton
local var7 = var5.Pane
local var8 = var5.TextLabel
local var9 = var1.ContextServices.Localization
local var10 = var1.ContextServices.Stylizer
local var11 = var1.Util.LayoutOrderIterator
return function()
   local var0 = var9:use()
   local var1 = var10:use("TestingScreen")
   local var2 = var11.new()
   local var3 = var2.useContext(var3)
   local var313 = {}
   var313.Layout = Enum.FillDirection.Vertical
   var313.Spacing = var1.Spacing
   var313.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var313.VerticalAlignment = Enum.VerticalAlignment.Center
   local var318 = {}
   local var322 = {}
   var322.AutomaticSize = Enum.AutomaticSize.XY
   var322.LayoutOrder = var2:getNextOrder()
   var322.Text = var0:getText("TestingScreen", "Description")
   var318.Description = var2.createElement(var8, var322)
   local var334 = {}
   var334.AutomaticSize = Enum.AutomaticSize.X
   var334.LayoutOrder = var2:getNextOrder()
   function var334.OnClick()
      var3.stopPlaySolo()
   end
   
   var334.Size = UDim2.fromOffset(0, var1.ButtonHeight)
   var334.Text = var0:getText("TestingScreen", "Stop")
   var318.StopButton = var2.createElement(var6, var334)
   return var2.createElement(var7, var313, var318)
end
