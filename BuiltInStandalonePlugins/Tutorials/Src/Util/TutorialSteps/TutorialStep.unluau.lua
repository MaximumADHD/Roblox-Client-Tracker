-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Util.TutorialTypes)
local var2 = require(var0.Src.Flags.getFFlagTutorialsMarketplaceSearchStep)()
local var3 = {}
local var4 = {}
var4.__index = var3
function var3.new(arg1, arg2)
   local var0 = {}
   var0.tutorial = arg1
   var0.data = arg2
   var0.completed = false
   return setmetatable(var0, var4)
end

function var3.bind()
end

function var3.unbind()
end

function var3.extend(arg1)
   local var0 = {}
   var0.kind = arg1
   setmetatable(var0, var4)
   {}.__index = var0
   function var0.new(arg1, arg2)
      local var0 = {}
      var0.tutorial = arg1
      var0.data = arg2
      var0.completed = false
      return setmetatable(var0, var4)
   end
   
   return var0
end

function var3.complete(arg1)
   arg1.completed = true
   if not var2 then
      arg1:unbind()
   end
   if arg1.tutorial:getCurrentStep() == "completed" then
      arg1.tutorial:increment()
   end
end

return var3
