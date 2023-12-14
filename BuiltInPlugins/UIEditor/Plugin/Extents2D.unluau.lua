-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.FFlag)
local var1 = require(script.Parent.InstanceInfo)
local var2 = require(script.Parent.Utility)
local var3 = require(script.Parent.Select)
local function var4(arg1)
   arg1.Center = (arg1.hidden.TopLeft + arg1.hidden.BottomRight) * 0.5
   arg1.hidden.Left = arg1.hidden.TopLeft.X
   arg1.hidden.Right = arg1.hidden.BottomRight.X
   arg1.hidden.Top = arg1.hidden.TopLeft.Y
   arg1.hidden.Bottom = arg1.hidden.BottomRight.Y
   arg1.hidden.TopRight = Vector2.new(arg1.Right, arg1.Top)
   arg1.hidden.BottomLeft = Vector2.new(arg1.Left, arg1.Bottom)
   arg1.Width = arg1.hidden.Right - arg1.hidden.Left
   arg1.Height = arg1.hidden.Bottom - arg1.hidden.Top
   arg1.Size = Vector2.new(arg1.Width, arg1.Height)
end

local function var5(arg1, arg2, arg3)
   if not arg1 then
      return true
   end
   local var0 = var3:getGuiObjectsAtPoint(arg2)
   local var1 = 1
   local var76 = var0
   local var3 = 1
   local var78 = var0[var1]
   if var78 == "getGuiObjectsAtPoint" then
      return true
   end
   var78 = arg3
   if not var78(var0[var1]) then
      return false
   end
   return false
end

local function var6(arg1, arg2)
   if not arg1 then
      return true
   end
   local var0 = var3:getGuiObjectsAtPoint(arg2)
   local var1 = 1
   local var92 = var0
   local var3 = 1
   if var0[var1] == "getGuiObjectsAtPoint" then
      return true
   end
   if not var1:canSeeThrough(var0[var1]) then
      return false
   end
   return false
end

local function var7(arg1, arg2, arg3)
   local var108 = arg1.hidden
   var108 = arg3
   arg1.hidden.TopLeftVisible = var5(arg2, var108.TopLeft, var108)
   local var114 = arg1.hidden
   var114 = arg3
   arg1.hidden.TopRightVisible = var5(arg2, var114.TopRight, var114)
   local var120 = arg1.hidden
   var120 = arg3
   arg1.hidden.BottomLeftVisible = var5(arg2, var120.BottomLeft, var120)
   local var126 = arg1.hidden
   var126 = arg3
   arg1.hidden.BottomRightVisible = var5(arg2, var126.BottomRight, var126)
   arg1.hidden.CenterVisible = var5(arg2, arg1.Center, arg3)
end

local function fun0(arg1, arg2)
   arg1.hidden.TopLeftVisible = var6(arg2, arg1.hidden.TopLeft)
   arg1.hidden.TopRightVisible = var6(arg2, arg1.hidden.TopRight)
   arg1.hidden.BottomLeftVisible = var6(arg2, arg1.hidden.BottomLeft)
   arg1.hidden.BottomRightVisible = var6(arg2, arg1.hidden.BottomRight)
   arg1.hidden.CenterVisible = var6(arg2, arg1.Center)
end

local function var8(arg1, ...)
   local var0 = {}
   local var168 = ...
   local var1 = 1
   local var170 = var0
   local var171 = 1
   arg1.hidden.TopLeft = var2:minVector2(arg1.hidden.TopLeft, var0[var1])
   arg1.hidden.BottomRight = var2:maxVector2(arg1.hidden.BottomRight, var0[var1])
   var171 = arg1
   var4(var171)
end

local function var9(arg1, ...)
   local var0 = {}
   local var189 = ...
   local var191 = 0
   if var191 < var0 then
      arg1.hidden.TopLeft = var0[1]
      local var195 = var0[1]
      arg1.hidden.BottomRight = var195
      var195 = var0
      table.remove(var195, 1)
      var8(arg1, unpack(var0))
   end
   var191 = arg1
   var4(var191)
end

function translate(arg1, arg2)
   arg1.hidden.TopLeft = arg1.hidden.TopLeft + arg2
   local var213 = arg1.hidden.BottomRight + arg2
   arg1.hidden.BottomRight = var213
   var213 = arg1
   var4(var213)
end

function resize(arg1, arg2)
   local var220 = arg1.hidden.TopLeft + arg2
   arg1.hidden.BottomRight = var220
   var220 = arg1
   var4(var220)
end

function expandFromCenter(arg1, arg2)
   local var0 = arg2 * 0.5
   arg1.TopLeft = arg1.TopLeft - var0
   local var227 = arg1.BottomRight
   arg1.BottomRight = var227 + var0
   var227 = arg1
   var4(var227)
end

local var10 = {}
function var10.new(...)
   local var0 = {}
   var0.map = {}
   var0.mt = {}
   var0.hidden = {}
   var0.hidden.TopLeft = Vector2.new(0, 0)
   local var244 = Vector2.new(0, 0)
   var0.hidden.BottomRight = var244
   var244 = var0
   var9(var244, ...)
   var7(var0, nil, function(arg1)
      return var1:canSeeThrough(arg1)
   end)
   function var0.mt.__index(arg1, arg2, arg3)
      if not arg1 then
         return true
      end
      local var0 = var3:getGuiObjectsAtPoint(arg2)
      local var1 = 1
      local var265 = var0
      local var3 = 1
      local var267 = var0[var1]
      if var267 == "getGuiObjectsAtPoint" then
         return true
      end
      var267 = arg3
      if not var267(var0[var1]) then
         return false
      end
      return false
   end
   
   local var327 = var0.mt
   function var327.__newindex(arg1, arg2, arg3)
      if arg2 == "TopLeft" then
         arg1.hidden.TopLeft = arg3
      elseif arg2 == "BottomRight" then
         arg1.hidden.BottomRight = arg3
      elseif arg2 == "TopRight" then
         arg1.hidden.TopLeft = Vector2.new(arg1.hidden.Left, arg3.Y)
         arg1.hidden.BottomRight = Vector2.new(arg3.X, arg1.hidden.Bottom)
      elseif arg2 == "BottomLeft" then
         arg1.hidden.TopLeft = Vector2.new(arg3.X, arg1.hidden.Top)
         arg1.hidden.BottomRight = Vector2.new(arg1.hidden.Right, arg3.Y)
      elseif arg2 == "Top" then
         local var305 = arg1.hidden
         var305 = arg3
         arg1.hidden.TopLeft = Vector2.new(var305.Left, var305)
      elseif arg2 == "Bottom" then
         local var310 = arg1.hidden
         var310 = arg3
         arg1.hidden.BottomRight = Vector2.new(var310.Right, var310)
      elseif arg2 == "Left" then
         arg1.hidden.TopLeft = Vector2.new(arg3, arg1.hidden.Top)
      elseif arg2 == "Right" then
         arg1.hidden.BottomRight = Vector2.new(arg3, arg1.hidden.Bottom)
      end
      var4(var326)
   end
   
   var327 = var0
   setmetatable(var327, var0.mt)
   return var0
end

function var10.translate(arg1, arg2, arg3)
   local var0 = var2:cloneTable(arg2)
   translate(var0, arg3)
   return var0
end

function var10.resize(arg1, arg2, arg3)
   resize(arg2, arg3)
   return var2:cloneTable(arg2)
end

function var10.expandFromCenter(arg1, arg2, arg3)
   expandFromCenter(arg2, arg3)
   return var2:cloneTable(arg2)
end

function var10.getExtentsFromGui(arg1, arg2)
   local var0 = var10.new(Vector2.new(0, 0))
   var9(var0, arg2.AbsolutePosition, arg2.AbsolutePosition + arg2.AbsoluteSize)
   return var0
end

function var10.getExtentsFromGuis(arg1, arg2)
   if arg2 == 0 then
      return nil
   end
   local var0 = var10.new(Vector2.new(0, 0))
   local var391 = arg2[1].AbsolutePosition
   var9(var0, arg2[1].AbsolutePosition, var391 + arg2[1].AbsoluteSize)
   local var1 = 2
   local var2 = arg2
   local var3 = 1
   var391 = var0
   var8(var391, arg2[var1].AbsolutePosition, arg2[var1].AbsolutePosition + arg2[var1].AbsoluteSize)
   return var0
end

return var10
