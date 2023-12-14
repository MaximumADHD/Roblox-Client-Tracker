-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
local var1 = {}
var1.Image = "rbxasset://textures/Debugger/debugger_arrow.png"
var1.Size = UDim2.new(0, 14, 0, 14)
var0.LeftIcon = var1
var0.Value = ""
local var2 = {}
local var11 = {}
var11.Image = "rbxasset://textures/Debugger/debugger_arrow_curve_left.png"
var11.Size = UDim2.new(0, 14, 0, 14)
var2.LeftIcon = var11
var2.Value = ""
local var4 = {}
function var4.new()
   local var0 = {}
   var0.frameColumn = ""
   var0.functionColumn = ""
   var0.lineColumn = ""
   var0.sourceColumn = ""
   return var0
end

function var4.fromData(arg1)
   local var0 = {}
   var0.frameColumn = arg1.frameColumn
   var0.functionColumn = arg1.functionColumn
   var0.lineColumn = arg1.lineColumn
   var0.sourceColumn = arg1.sourceColumn
   return var0
end

var4.ICON_FRAME_TOP = var0
var4.ICON_CURRENT_FRAME = var2
return var4
