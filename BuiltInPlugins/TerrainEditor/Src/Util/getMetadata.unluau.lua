-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("TerrainEditor").Src.Types).MetadataItem
return function(arg1)
   local var0 = {}
   var0.Label = var0.Filename
   var0.Value = arg1.File.Name
   local var1 = {}
   local var2 = var0.Dimensions
   var1.Label = var2
   var2 = `{arg1.Width}`
   var1.Value = var2
   return { {}, {} }
end
