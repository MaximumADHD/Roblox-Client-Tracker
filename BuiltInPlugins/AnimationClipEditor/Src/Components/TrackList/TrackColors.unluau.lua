-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Util.TrackUtils)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = require(var0.Src.Util.Constants)
local var5 = var1.PureComponent:extend("TrackColors")
function var5.renderTracks(arg1, arg2)
   local var0 = arg1.props
   local var1 = var0.Tracks
   local var2 = var0.TopTrackIndex
   local var3 = var0.MaxHeight
   local var4 = var2
   local var5 = 0
   local var6 = {}
   local var148 = {}
   var148.SortOrder = Enum.SortOrder.LayoutOrder
   var148.FillDirection = Enum.FillDirection.Vertical
   var6.Layout = var1.createElement("UIListLayout", var148)
   local var8 = var2
   local var9 = var1
   local var10 = 1
   if var5 > var3 then
      if var8 % 2 == 0 then
         local var0 = false
      end
      local var0 = var1[var8]
      local var1 = 1
      if var0 then
         if var0.Expanded then
            local var161 = var2
            var161 = var0
            var1 = var161.getExpandedSize(var161)
         end
      end
      local var2 = 1
      local var3 = var1
      local var4 = 1
      if var5 > var3 then
         local var167 = var6
         local var171 = {}
         var171.Size = UDim2.new(1, 0, 0, var4.TRACK_HEIGHT)
         if true then
            local var0 = arg2.trackTheme.shadedBackgroundColor or arg2.trackTheme.backgroundColor
         end
         var171.BackgroundColor3 = arg2.trackTheme.backgroundColor
         var171.BorderSizePixel = 0
         var171.LayoutOrder = var4
         local var1 = var1.createElement("Frame", var171)
         table.insert()
         local var2 = var4 + 1
         local var3 = var5 + var4.TRACK_HEIGHT
      end
   end
   return var6
end

local function fun6(arg1)
   local var0 = arg1.props
   local var203 = {}
   var203.Size = UDim2.new(1, 0, 1, 0)
   var203.Position = var0.Position
   var203.BackgroundTransparency = 1
   local var211 = 0
   var203.ZIndex = var211
   var211 = arg1:renderTracks(var0.Stylizer)
   return var1.createElement("Frame", var203, var211)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var203 = {}
   var203.Size = UDim2.new(1, 0, 1, 0)
   var203.Position = var0.Position
   var203.BackgroundTransparency = 1
   local var211 = 0
   var203.ZIndex = var211
   var211 = arg1:renderTracks(var0.Stylizer)
   return var1.createElement("Frame", var203, var211)
end

fun6 = var3.withContext
local var213 = {}
var213.Stylizer = var3.Stylizer
var5 = fun6(var213)(var5)
return var5
