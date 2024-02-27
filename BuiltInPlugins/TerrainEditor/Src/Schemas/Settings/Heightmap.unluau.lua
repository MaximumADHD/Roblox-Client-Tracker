-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Util.ApplyById)
local var3 = var1.HeightmapSettings
local var4 = var1.Storage
local var5 = var1.Category.HeightmapSettings
local var6 = {}
var3.Colormap = var4.LocalSession
var3.Heightmap = var4.LocalSession
var3.Import = var4.LocalSession
var3.DefaultMaterial = var4.LocalPersistent
var6.Storage = {}
function var6.Generator(arg1, arg2, arg3, arg4)
   local var0 = arg1.Localization
   local var35 = {}
   var35.Id = var3.Heightmap
   local var38 = {}
   var38.Type = "Image"
   var35.Schema = var38
   function var35.Validate(arg1)
      local var41 = arg1.Error
      if var41 == "" then
         local var46 = {}
         var46.Error = arg1.Error
         return Enum.PropertyStatus.Errorvar0:getText("ImportWarning", "FailedImport", var46),
      end
      if arg1.Image then
         if arg1.Image.ChannelInfo.DiscardedChannels then
            return Enum.PropertyStatus.Warningvar0:getText("ImportWarning", "DiscardedChannels"),
         end
         if arg1.Image.Preview.Error then
            local var67 = {}
            var67.Error = arg1.Image.Preview.Error
            return Enum.PropertyStatus.Warningvar0:getText("ImportWarning", "FailedPreview", var67),
         end
      end
      return Enum.PropertyStatus.Ok"",
   end
   
   local var75 = {}
   var75.Id = var3.Colormap
   local var78 = {}
   var78.Type = "Image"
   var75.Schema = var78
   function var75.Validate(arg1)
      local var81 = arg1.Error
      if var81 == "" then
         local var86 = {}
         var86.Error = arg1.Error
         return Enum.PropertyStatus.Errorvar0:getText("ImportWarning", "FailedImport", var86),
      end
      if arg1.Image then
         if arg1.Image.Preview.Error then
            local var98 = {}
            var98.Error = arg1.Image.Preview.Error
            return Enum.PropertyStatus.Warningvar0:getText("ImportWarning", "FailedPreview", var98),
         end
      end
      return Enum.PropertyStatus.Ok"",
   end
   
   local var4 = {}
   var4.Id = var3.DefaultMaterial
   var4.Layout = Enum.FillDirection.Vertical
   local var110 = {}
   var110.AllowAir = false
   var110.Type = "Material"
   var4.Schema = var110
   local var6 = {}
   var6.Disabled = arg2[var3.Heightmap] or arg2[var3.Heightmap].Image
   var6.Id = var3.Import
   var6.Layout = Enum.FillDirection.Vertical
   local var7 = {}
   var7.Label = var0:getText(var5, var3.Import)
   var7.Type = "Button"
   var6.Schema = var7
   local var134 = {}
   var134.Category = var5
   var134.Data = arg2
   var134.Overrides = arg4
   return var2(arg1, {}, var134)
end

return var6
