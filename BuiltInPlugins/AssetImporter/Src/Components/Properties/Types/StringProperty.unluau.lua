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
         local var113 = {}
         var113.LayoutOrder = arg1.LayoutOrder
         var113.Size = arg1.Size
         var113.SuffixLength = 20
         var113.Text = arg1.Value
         var113.TextXAlignment = Enum.TextXAlignment.Left
         local var119 = {}
         local var123 = {}
         var123.Text = arg1.Value
         var119.Tooltip = var1.createElement(var5, var123)
         return var1.createElement(var6, var113, var119)
      end
   end
   if var7() then
      local var132 = {}
      var132.Size = arg1.Size
      var132.LayoutOrder = arg1.LayoutOrder
      local var139 = {}
      var139.AutomaticSize = Enum.AutomaticSize.None
      var139.OnTextChanged = arg1.OnSetItem
      var139.Text = arg1.Value
      local var0 = var1.createElement(var4, var139)
      return var1.createElement(var3, var132, {})
   end
   local var148 = {}
   var148.LayoutOrder = arg1.LayoutOrder
   var148.OnTextChanged = arg1.OnSetItem
   var148.Size = arg1.Size
   var148.Text = arg1.Value
   return var1.createElement(var4, var148)
end
