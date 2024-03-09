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
         local var30 = {}
         var30.LayoutOrder = arg1.LayoutOrder
         var30.Size = arg1.Size
         var30.SuffixLength = 20
         var30.Text = arg1.Value
         var30.TextXAlignment = Enum.TextXAlignment.Left
         local var36 = {}
         local var40 = {}
         var40.Text = arg1.Value
         var36.Tooltip = var1.createElement(var5, var40)
         return var1.createElement(var6, var30, var36)
      end
   end
   if var7() then
      local var49 = {}
      var49.Size = arg1.Size
      var49.LayoutOrder = arg1.LayoutOrder
      local var56 = {}
      var56.AutomaticSize = Enum.AutomaticSize.None
      var56.OnTextChanged = arg1.OnSetItem
      var56.Text = arg1.Value
      local var0 = var1.createElement(var4, var56)
      return var1.createElement(var3, var49, {})
   end
   local var65 = {}
   var65.LayoutOrder = arg1.LayoutOrder
   var65.OnTextChanged = arg1.OnSetItem
   var65.Size = arg1.Size
   var65.Text = arg1.Value
   return var1.createElement(var4, var65)
end
