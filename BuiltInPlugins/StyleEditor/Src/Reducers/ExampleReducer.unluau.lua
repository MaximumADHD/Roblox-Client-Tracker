-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var196 = {}
var196.DefaultStateObject = ""
function require(var0.Src.Actions.ExampleAction).name(arg1, arg2)
   local var203 = var1.Dictionary
   var203 = arg1
   local var205 = {}
   var205.DefaultStateObject = arg2.something
   return var203.join(var203, var205)
end

return require(var0.Packages.Rodux).createReducer(var196, {})
