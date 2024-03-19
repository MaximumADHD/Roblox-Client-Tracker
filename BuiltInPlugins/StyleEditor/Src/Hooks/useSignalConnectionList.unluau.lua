-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Packages.React)
local var3 = var2.useEffect
local var4 = var2.useRef
local var5 = require(var0.Src.Types)
return function()
   local var0 = var4({})
   var3(function()
      if var0 then
         if var0.current then
            if type(var0.current) == "table" then
            end
         end
      end
      local var0 = var0
      if type(var0.current) == "table" then
         local var0 = false
      end
      assert(true, "expecting table of connections")
      local var51 = var0.current
      local var52 = nil
      local var3 = nil
      if var0 then
         var0:Disconnect()
      end
      var0.current = {}
   end, {})
   local var1 = {}
   function var1.add(arg1)
      local var26 = typeof(var0.current)
      if var26 == "table" then
         local var0 = false
      end
      assert(true, "expected listRef to contain list of connections")
      if arg1 then
         local var31 = var0
         var31 = arg1
         table.insert(var31.current, var31)
      end
   end
   
   return var1
end
