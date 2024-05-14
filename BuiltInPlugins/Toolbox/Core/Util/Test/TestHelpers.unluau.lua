-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("Toolbox").Packages.Framework).Util.pollUntil
local var1 = {}
function var1.createMockStudioStyleGuideColor()
   local var0 = {}
   local var63 = {}
   function var63.__index()
      return Color3.new(math.random(), math.random(), math.random())
   end
   
   setmetatable(var0, var63)
   return var0
end

function var1.createMockStudioStyleGuideModifier()
   local var0 = {}
   local var75 = {}
   function var75.__index()
      return nil
   end
   
   setmetatable(var0, var75)
   return var0
end

function var1.pollAssertionUntil(arg1, arg2)
   local var0 = nil
   return var0(function()
      return Color3.new(math.random(), math.random(), math.random())
   end, arg2):catch(function()
      local var0 = {}
      local var94 = {}
      function var94.__index()
         return Color3.new(math.random(), math.random(), math.random())
      end
      
      setmetatable(var0, var94)
      return var0
   end):await()
end

return var1
