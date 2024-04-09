-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI
local var3 = var2.Pane
local var4 = var2.TextInput
local var5 = var2.Tooltip
local var6 = var2.TruncatedTextLabel
local var7 = require(var0.Src.Flags.getFFlagAssetImportFixPropertyLength)
return function(arg1)
   if arg1.Editable == "Editable" then
      if not arg1.Editable then
         local var127 = {}
         var127.LayoutOrder = arg1.LayoutOrder
         var127.Size = arg1.Size
         var127.SuffixLength = 20
         var127.Text = arg1.Value
         var127.TextXAlignment = Enum.TextXAlignment.Left
         local var133 = {}
         local var137 = {}
         var137.Text = arg1.Value
         var133.Tooltip = var1.createElement(var5, var137)
         return var1.createElement(var6, var127, var133)
      end
   end
   if var7() then
      local var146 = {}
      var146.Size = arg1.Size
      var146.LayoutOrder = arg1.LayoutOrder
      local var153 = {}
      var153.AutomaticSize = Enum.AutomaticSize.None
      var153.OnTextChanged = arg1.OnSetItem
      var153.Text = arg1.Value
      local var0 = var1.createElement(var4, var153)
      return var1.createElement(var3, var146, {})
   end
   local var162 = {}
   var162.LayoutOrder = arg1.LayoutOrder
   var162.OnTextChanged = arg1.OnSetItem
   var162.Size = arg1.Size
   var162.Text = arg1.Value
   return var1.createElement(var4, var162)
end
