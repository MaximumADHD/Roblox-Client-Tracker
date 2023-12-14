-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Src.Components.Properties.Types
local var1 = {}
var1.boolean = require(var0.BooleanProperty)
var1.userdata = require(var0.EnumProperty)
var1.number = require(var0.NumberProperty)
var1.string = require(var0.StringProperty)
var1.vector = require(var0.VectorProperty)
return function(arg1)
   local var0 = type(arg1)
   local var1 = var1[var0]
   var0 = var1
   local var2 = "Unsupported property type"
   local var3 = type(arg1)
   local var4 = table.concat({})
   assert()
   return var1
end
