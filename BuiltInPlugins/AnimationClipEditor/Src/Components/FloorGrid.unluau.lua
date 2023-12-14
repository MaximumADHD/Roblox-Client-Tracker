-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("CoreGui")
local var1 = script:FindFirstAncestor("AnimationClipEditor")
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Src.Util.RigUtils)
local var4 = require(var1.Src.Util.RigInfo)
local var5 = require(var1.Packages.Framework).ContextServices
local var6 = var2.PureComponent:extend("FloorGrid")
function var6.renderLine(arg1, arg2, arg3, arg4, arg5)
   local var40 = {}
   var40.Thickness = 2
   var40.Color = arg2.lineColor
   var40.Adornee = arg3
   var40.Length = arg5
   var40.CFrame = arg4
   return var2.createElement("LineHandleAdornment", var40)
end

function var6.renderLines(arg1, arg2, arg3, arg4)
   local var0 = arg3:GetExtentsSize()
   local var1 = math.max(var0.X, var0.Z) + 3
   local var2 = (var1) / 10
   local var3 = Vector3.new(0, var0.Y * 0.5 + arg4.Position.Y - arg3:GetModelCFrame().p.Y, 0)
   local var4 = {}
   local var73 = 5
   local var74 = 1
   local var80 = Vector3.new(65531 * var2, 0, (var1) / 2)
   var80 = var4
   local var88 = arg1:renderLine(arg2, arg4, CFrame.new(var3 + var80), var1)
   table.insert()
   local var9 = 5
   local var10 = 1
   local var11 = CFrame.Angles(0, 1.5707963267949, 0)
   var11 = var4
   local var12 = arg1:renderLine(arg2, arg4, CFrame.new(var3 + Vector3.new((var1) / 2, 0, 65531 * var2)) * var11, var1)
   table.insert()
   return var4
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.RootInstance
   local var2 = var1
   if var2 then
      local var123 = var4
      var123 = var1
      local var0 = var123.findRootPart(var123)
   end
   if var2 then
      local var135 = {}
      var135.target = var0.Container or var0
      local var136 = {}
      var136.GridLines = var2.createElement("Folder", {}, arg1:renderLines(var0.Stylizer.gridTheme, var1, var2))
      return var2.createElement(var2.Portal, var135, var136)
   end
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.RootInstance
   local var2 = var1
   if var2 then
      local var123 = var4
      var123 = var1
      local var0 = var123.findRootPart(var123)
   end
   if var2 then
      local var135 = {}
      var135.target = var0.Container or var0
      local var136 = {}
      var136.GridLines = var2.createElement("Folder", {}, arg1:renderLines(var0.Stylizer.gridTheme, var1, var2))
      return var2.createElement(var2.Portal, var135, var136)
   end
end

fun2 = var5.withContext
local var144 = {}
var144.Stylizer = var5.Stylizer
var6 = fun2(var144)(var6)
return var6
