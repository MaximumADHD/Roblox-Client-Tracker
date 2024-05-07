-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("CollectionService")
local var1 = {}
var1._tag = nil
var1.__index = var1
function var1.new(arg1)
   local var0 = {}
   var0._tag = arg1
   return setmetatable(var0, var1)
end

function var1.addTag(arg1, arg2)
   var0:AddTag(arg2, arg1._tag)
end

function var1.removeTag(arg1, arg2)
   var0:RemoveTag(arg2, arg1._tag)
end

function var1.getTagged(arg1)
   return var0:GetTagged(arg1._tag)
end

local var2 = {}
function var2.clearTags(arg1)
   local var0 = {}
   local var1 = var2
   local var2 = var1.CharactersConvertedToR15Tagging
   local var3 = nil
   local var4 = nil
   var1:removeTag(arg1)
   local var5 = arg1:GetDescendants()
   var1:removeTag(var138)
end

var2.CharactersConvertedToR15Tagging = var1.new(require(script:FindFirstAncestor("R15Migrator").Src.Resources.Constants).NonePublishTags.CharactersConvertedToR15Tag)
return var2
