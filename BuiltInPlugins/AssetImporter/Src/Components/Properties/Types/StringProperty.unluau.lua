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
         local var119 = {}
         var119.LayoutOrder = arg1.LayoutOrder
         var119.Size = arg1.Size
         var119.SuffixLength = 20
         var119.Text = arg1.Value
         var119.TextXAlignment = Enum.TextXAlignment.Left
         local var125 = {}
         local var129 = {}
         var129.Text = arg1.Value
         var125.Tooltip = var1.createElement(var5, var129)
         return var1.createElement(var6, var119, var125)
      end
   end
   if var7() then
      local var138 = {}
      var138.Size = arg1.Size
      var138.LayoutOrder = arg1.LayoutOrder
      local var145 = {}
      var145.AutomaticSize = Enum.AutomaticSize.None
      var145.OnTextChanged = arg1.OnSetItem
      var145.Text = arg1.Value
      local var0 = var1.createElement(var4, var145)
      return var1.createElement(var3, var138, {})
   end
   local var154 = {}
   var154.LayoutOrder = arg1.LayoutOrder
   var154.OnTextChanged = arg1.OnSetItem
   var154.Size = arg1.Size
   var154.Text = arg1.Value
   return var1.createElement(var4, var154)
end
