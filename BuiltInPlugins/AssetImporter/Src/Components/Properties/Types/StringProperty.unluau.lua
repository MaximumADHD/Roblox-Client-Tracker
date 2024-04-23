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
         local var28 = {}
         var28.LayoutOrder = arg1.LayoutOrder
         var28.Size = arg1.Size
         var28.SuffixLength = 20
         var28.Text = arg1.Value
         var28.TextXAlignment = Enum.TextXAlignment.Left
         local var34 = {}
         local var38 = {}
         var38.Text = arg1.Value
         var34.Tooltip = var1.createElement(var5, var38)
         return var1.createElement(var6, var28, var34)
      end
   end
   if var7() then
      local var47 = {}
      var47.Size = arg1.Size
      var47.LayoutOrder = arg1.LayoutOrder
      local var54 = {}
      var54.AutomaticSize = Enum.AutomaticSize.None
      var54.OnTextChanged = arg1.OnSetItem
      var54.Text = arg1.Value
      local var0 = var1.createElement(var4, var54)
      return var1.createElement(var3, var47, {})
   end
   local var63 = {}
   var63.LayoutOrder = arg1.LayoutOrder
   var63.OnTextChanged = arg1.OnSetItem
   var63.Size = arg1.Size
   var63.Text = arg1.Value
   return var1.createElement(var4, var63)
end
