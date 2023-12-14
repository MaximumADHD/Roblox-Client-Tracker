-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var104 = {}
var104.editingItem = nil
var104.layeredClothingItemsInList = {}
var104.manuallyHiddenLayeredClothingItems = {}
var104.editingCage = nil
var104.cagesTransparency = {}
var104.acessoryTypeInfo = nil
var104.size = Vector3.new(1, 1, 1)
var104.meshScale = Vector3.new(1, 1, 1)
var104.inBounds = false
local var122 = {}
var122.ItemCFrame = CFrame.new()
var122.AttachmentCFrame = CFrame.new()
var104.attachmentPoint = var122
local var127 = {}
function var127.SetManuallyHiddenLayeredClothingItems(arg1, arg2)
   local var131 = var1.Dictionary
   var131 = arg1
   local var133 = {}
   var133.manuallyHiddenLayeredClothingItems = arg2.manuallyHiddenLayeredClothingItems
   return var131.join(var131, var133)
end

function var127.SetEditingCage(arg1, arg2)
   local var139 = var1.Dictionary
   var139 = arg1
   local var141 = {}
   var141.editingCage = arg2.editingCage
   return var139.join(var139, var141)
end

function var127.SetCagesTransparency(arg1, arg2)
   local var147 = var1.Dictionary
   var147 = arg1
   local var149 = {}
   var149.cagesTransparency = arg2.cagesTransparency
   return var147.join(var147, var149)
end

function var127.SetAccessoryTypeInfo(arg1, arg2)
   local var155 = var1.Dictionary
   var155 = arg1
   local var157 = {}
   var157.accessoryTypeInfo = arg2.accessoryTypeInfo
   return var155.join(var155, var157)
end

function var127.SetAttachmentPoint(arg1, arg2)
   local var163 = var1.Dictionary
   var163 = arg1
   local var165 = {}
   var165.attachmentPoint = arg2.attachmentPoint
   return var163.join(var163, var165)
end

function var127.SetItemSize(arg1, arg2)
   local var171 = var1.Dictionary
   var171 = arg1
   local var173 = {}
   var173.size = arg2.size
   return var171.join(var171, var173)
end

function var127.SetMeshScale(arg1, arg2)
   local var179 = var1.Dictionary
   var179 = arg1
   local var181 = {}
   var181.meshScale = arg2.meshScale
   return var179.join(var179, var181)
end

function var127.SetInBounds(arg1, arg2)
   local var187 = var1.Dictionary
   var187 = arg1
   local var189 = {}
   var189.inBounds = arg2.inBounds
   return var187.join(var187, var189)
end

return require(var0.Packages.Rodux).createReducer(var104, var127)
