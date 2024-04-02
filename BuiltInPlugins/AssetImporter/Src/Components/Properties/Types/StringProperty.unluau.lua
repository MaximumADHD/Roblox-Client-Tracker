-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
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
         local var131 = {}
         var131.LayoutOrder = arg1.LayoutOrder
         var131.Size = arg1.Size
         var131.SuffixLength = 20
         var131.Text = arg1.Value
         var131.TextXAlignment = Enum.TextXAlignment.Left
         local var137 = {}
         local var141 = {}
         var141.Text = arg1.Value
         var137.Tooltip = var1.createElement(var5, var141)
         return var1.createElement(var6, var131, var137)
      end
   end
   if var7() then
      local var150 = {}
      var150.Size = arg1.Size
      var150.LayoutOrder = arg1.LayoutOrder
      local var157 = {}
      var157.AutomaticSize = Enum.AutomaticSize.None
      var157.OnTextChanged = arg1.OnSetItem
      var157.Text = arg1.Value
      local var0 = var1.createElement(var4, var157)
      return var1.createElement(var3, var150, {})
   end
   local var166 = {}
   var166.LayoutOrder = arg1.LayoutOrder
   var166.OnTextChanged = arg1.OnSetItem
   var166.Size = arg1.Size
   var166.Text = arg1.Value
   return var1.createElement(var4, var166)
end
