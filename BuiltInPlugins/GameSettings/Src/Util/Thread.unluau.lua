-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new(arg1)
   local var0 = {}
   var0.__running = false
   var0.__finished = false
   var0.__success = nil
   var0.__results = nil
   var0.__callback = arg1
   var0.__event = Instance.new("BindableEvent")
   return setmetatable(var0, var0)
end

function var0.start(arg1, ...)
   if not arg1.__running then
      if arg1.__finished then
      end
   end
   arg1.__running = true
   local var0 = {}
   local var19 = ...
   coroutine.wrap(function(arg1)
      local var0 = {}
      var0.__running = false
      var0.__finished = false
      var0.__success = nil
      var0.__results = nil
      var0.__callback = arg1
      var0.__event = Instance.new("BindableEvent")
      return setmetatable(var0, var0)
   end)()
   if arg1.__finished then
      if not arg1.__success then
         error(arg1.__results[1], 2)
      end
   end
end

function var0.join(arg1)
   if not arg1.__finished then
      if not arg1.__running then
         error("Attempt to join on unstarted thread", 2)
      end
   end
   if not arg1.__finished then
      arg1.__event.Event:Wait()
   end
   if arg1.__success then
      return unpack(arg1.__results)
   end
   error(arg1.__results[1], 2)
end

function var0.isAlive(arg1)
   return arg1.__running
end

return var0
