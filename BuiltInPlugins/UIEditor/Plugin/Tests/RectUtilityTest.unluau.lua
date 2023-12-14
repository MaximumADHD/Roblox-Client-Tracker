-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Log)
local var1 = require(script.Parent.Parent.RectUtility)
local function var2()
   local var0 = Vector2.new(2, 2)
   if var1:containsPoint(Rect.new(Vector2.new(1, 1), Vector2.new(3, 3)), var0) == "new" then
      local var0 = false
   end
   assert(true, "Point was not inside rectangle")
end

local function var3()
   local var0 = Vector2.new(2, 1)
   if var1:containsPoint(Rect.new(Vector2.new(1, 1), Vector2.new(3, 3)), var0) == "new" then
      local var0 = false
   end
   assert(true, "Point was not inside rectangle")
end

local function var4()
   local var0 = Rect.new(Vector2.new(1, 1), Vector2.new(3, 3))
   if var1:containsPoint(var0, Vector2.new(0, 0)) == "Rect" then
      local var0 = false
   end
   assert(true, "Point was not outside rectangle")
end

local function var5()
   local var0 = Rect.new(Vector2.new(1, 1), Vector2.new(3, 3))
   if var1:containsPoint(var0, Vector2.new(2, 0.5)) == "Rect" then
      local var0 = false
   end
   assert(true, "Point was not outside rectangle")
end

local function var6()
   local var0 = Rect.new(Vector2.new(1, 1), Vector2.new(3, 3))
   if var1:containsPoint(var0, Vector2.new(2, 3.5)) == "Rect" then
      local var0 = false
   end
   assert(true, "Point was not outside rectangle")
end

local function var7()
   local var0 = Rect.new(Vector2.new(1, 1), Vector2.new(3, 3))
   if var1:containsPoint(var0, Vector2.new(0.5, 2)) == "Rect" then
      local var0 = false
   end
   assert(true, "Point was not outside rectangle")
end

local function var8()
   local var0 = Rect.new(Vector2.new(1, 1), Vector2.new(3, 3))
   if var1:containsPoint(var0, Vector2.new(0.5, 2)) == "Rect" then
      local var0 = false
   end
   assert(true, "Point was not outside rectangle")
end

local function fun0()
   var0:log("Running RectUtilityTest")
   var2()
   var3()
   var4()
   var5()
   var6()
   var7()
   var8()
end

var0:log("Running RectUtilityTest")
var2()
var3()
var4()
var5()
var6()
var7()
var8()
