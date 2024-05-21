-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Core.Util.Constants)
local var4 = require(var0.Core.Types.Category)
local var5 = require(var0.Core.Hooks.useNavigateToCategory)
local var6 = var2.ContextServices.Localization
local var7 = var2.ContextServices.Stylizer
local var8 = var2.UI.TextWithLinks
local var9 = var1.useCallback
return function(arg1)
   local var0 = var7:use()
   local var1 = var6:use()
   local var2 = var5()
   local var49 = var2
   local var54 = {}
   var54.Text = var1:getText("SceneSuggestions", "NoResults")
   local var59 = {}
   local var60 = {}
   var60.LinkText = var1:getText("General", "CategoryModels")
   var60.LinkCallback = var9(function()
      var2(var4.FREE_MODELS.name)
   end, {})
   var59.[link1] = var60
   var54.LinkMap = var59
   var54.LayoutOrder = arg1.LayoutOrder
   var54.AutomaticSize = Enum.AutomaticSize.Y
   var54.Size = UDim2.fromScale(1, 0)
   var54.TextWrapped = true
   var54.TextXAlignment = Enum.TextXAlignment.Left
   var54.HorizontalAlignment = Enum.HorizontalAlignment.Left
   local var5 = {}
   var5.Font = var3.FONT
   var5.TextColor = var0.itemRow.textColor
   var5.TextSize = var0.itemRow.textSize
   var54.TextProps = var5
   return var1.createElement(var8, var54)
end
