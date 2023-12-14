-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Dash)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.React)
local var4 = require(var0.Src.Components.DisambiguationMenu.DisambiguationMenuEntry)
local var5 = require(var0.Src.Resources.Theme)
local var6 = require(var0.Src.Types)
local var7 = var2.UI
local var8 = var7.Pane
local var9 = var7.SelectInput
local var10 = var2.ContextServices.Localization
local var11 = var2.ContextServices.Stylizer
return function(arg1)
   local var0 = var10:use()
   local var1 = var11:use("DisambiguationMenu")
   local var2 = var1.collectArray(arg1.AmbiguousAsset.instances, function(arg1)
      local var0 = {}
      var0.Id = arg1
      var0.Label = var0:getText("AssetPalettes", arg1.Key)
      return var0
   end)
   table.sort(var2, function(arg1, arg2)
      if arg2.Label > arg1.Label then
         local var0 = false
      end
      return true
   end)
   local var69 = {}
   var69.Name = arg1.AmbiguousAsset.worldModel.Name
   var69.Instance = arg1.AmbiguousAsset.worldModel
   var69.LayoutOrder = arg1.LayoutOrder
   local var76 = {}
   local var80 = {}
   var80.AutomaticSize = Enum.AutomaticSize.Y
   var80.Size = UDim2.new(0, var1.DropdownWidth, 0, 0)
   local var88 = {}
   local var92 = {}
   var92.PlaceholderText = var0:getText("DisambiguationMenu", "DropdownPlaceholder")
   var92.Width = var1.DropdownWidth
   var92.SelectedId = arg1.AssignedPalette
   function var92.OnItemActivated(arg1)
      arg1.SetAssignedPalette(arg1.Id)
   end
   
   var92.Items = var2
   var88.DropdownMenu = var3.createElement(var9, var92)
   var76.Dropdown = var3.createElement(var8, var80, var88)
   return var3.createElement(var4, var69, var76)
end
