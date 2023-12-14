-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Util.Constants)
local var2 = require(var0.Packages.React)
local var3 = require(script.ItemDataPreviewModel)
local var4 = require(var0.Src.Types)
return function(arg1)
   if arg1.ItemData.item.source == "source" then
      local var32 = {}
      var32.Item = arg1.ItemData.item.builtinItem
      var32.Selected = arg1.Selected
      return var2.createElement(arg1.ItemData.palette.PreviewComponent, var32)
   end
   local var42 = var1.SOURCE_INSTANCE
   if arg1.ItemData.item.source == "source" then
      local var46 = {}
      var46.Instance = arg1.ItemData.item.instance
      return var2.createElement(var3, var46)
   end
   var42 = `Unknown item source: {arg1.ItemData.item.source}`
   error(var42)
end
