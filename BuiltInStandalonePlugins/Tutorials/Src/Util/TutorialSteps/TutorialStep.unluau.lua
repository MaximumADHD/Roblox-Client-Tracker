-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Src.Util.TutorialTypes)
local var1 = {}
local var2 = {}
var2.__index = var1
function var1.new(arg1, arg2)
   local var0 = {}
   var0.tutorial = arg1
   var0.data = arg2
   var0.completed = false
   return setmetatable(var0, var2)
end

function var1.bind()
end

function var1.unbind()
end

function var1.extend(arg1)
   local var0 = {}
   var0.kind = arg1
   setmetatable(var0, var2)
   {}.__index = var0
   function var0.new(arg1, arg2)
      local var0 = {}
      var0.tutorial = arg1
      var0.data = arg2
      var0.completed = false
      return setmetatable(var0, var2)
   end
   
   return var0
end

function var1.complete(arg1)
   arg1.completed = true
   if arg1.tutorial:getCurrentStep() == "completed" then
      arg1.tutorial:increment()
   end
end

return var1
