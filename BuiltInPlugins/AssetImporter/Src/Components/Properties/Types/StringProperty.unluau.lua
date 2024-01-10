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
         local var232 = {}
         var232.LayoutOrder = arg1.LayoutOrder
         var232.Size = arg1.Size
         var232.SuffixLength = 20
         var232.Text = arg1.Value
         var232.TextXAlignment = Enum.TextXAlignment.Left
         local var238 = {}
         local var242 = {}
         var242.Text = arg1.Value
         var238.Tooltip = var1.createElement(var5, var242)
         return var1.createElement(var6, var232, var238)
      end
   end
   if var7() then
      local var251 = {}
      var251.Size = arg1.Size
      var251.LayoutOrder = arg1.LayoutOrder
      local var258 = {}
      var258.AutomaticSize = Enum.AutomaticSize.None
      var258.OnTextChanged = arg1.OnSetItem
      var258.Text = arg1.Value
      local var0 = var1.createElement(var4, var258)
      return var1.createElement(var3, var251, {})
   end
   local var267 = {}
   var267.LayoutOrder = arg1.LayoutOrder
   var267.OnTextChanged = arg1.OnSetItem
   var267.Size = arg1.Size
   var267.Text = arg1.Value
   return var1.createElement(var4, var267)
end
