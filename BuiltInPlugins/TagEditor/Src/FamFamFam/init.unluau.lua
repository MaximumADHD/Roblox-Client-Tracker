-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.Asset = "rbxasset://textures/TagEditor/famfamfam.png"
var0.Table = require(script.SpritesheetData)
function var0.Lookup(arg1)
   local var0 = var0.Table[arg1] or var0.Table.computer_error
   local var1 = {}
   var1.Image = var0.Asset
   var1.ImageRectOffset = Vector2.new(var0[1], var0[2])
   var1.ImageRectSize = Vector2.new(16, 16)
   return var1
end

return var0
