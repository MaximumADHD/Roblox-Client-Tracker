-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = var1.PureComponent:extend("Scrubber")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var28 = var1
   local var2 = var0[var28.Children] or {}
   if var0.ShowHead then
      var28 = var2
      local var36 = {}
      var36.Image = var1.scrubberTheme.image
      var36.ImageColor3 = var1.scrubberTheme.backgroundColor
      var36.BackgroundTransparency = 1
      var36.Size = UDim2.new(1, 0, 1, 0)
      local var0 = var1.createElement("ImageLabel", var36)
      table.insert()
   end
   var28 = var2
   local var53 = {}
   var53.Position = UDim2.new(0.5, 0, 0, 0)
   var53.Size = UDim2.new(0, var0.Thickness, 0, var0.Height)
   var53.BackgroundColor3 = var1.scrubberTheme.backgroundColor
   var53.AnchorPoint = Vector2.new(0.5, 0)
   var53.BorderSizePixel = 0
   local var73 = var1.createElement("Frame", var53)
   table.insert()
   local var78 = {}
   var78.BackgroundTransparency = 1
   var78.Position = var0.Position
   var78.Size = var0.HeadSize
   var78.ZIndex = var0.ZIndex
   var78.AnchorPoint = var0.AnchorPoint
   local var82 = var1.Event.InputBegan
   var1.Event.InputBegan = arg1.onDragBegan
   var82 = var2
   return var1.createElement("Frame", var78, var82)
end

function var3.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var28 = var1
   local var2 = var0[var28.Children] or {}
   if var0.ShowHead then
      var28 = var2
      local var36 = {}
      var36.Image = var1.scrubberTheme.image
      var36.ImageColor3 = var1.scrubberTheme.backgroundColor
      var36.BackgroundTransparency = 1
      var36.Size = UDim2.new(1, 0, 1, 0)
      local var0 = var1.createElement("ImageLabel", var36)
      table.insert()
   end
   var28 = var2
   local var53 = {}
   var53.Position = UDim2.new(0.5, 0, 0, 0)
   var53.Size = UDim2.new(0, var0.Thickness, 0, var0.Height)
   var53.BackgroundColor3 = var1.scrubberTheme.backgroundColor
   var53.AnchorPoint = Vector2.new(0.5, 0)
   var53.BorderSizePixel = 0
   local var73 = var1.createElement("Frame", var53)
   table.insert()
   local var78 = {}
   var78.BackgroundTransparency = 1
   var78.Position = var0.Position
   var78.Size = var0.HeadSize
   var78.ZIndex = var0.ZIndex
   var78.AnchorPoint = var0.AnchorPoint
   local var82 = var1.Event.InputBegan
   var1.Event.InputBegan = arg1.onDragBegan
   var82 = var2
   return var1.createElement("Frame", var78, var82)
end

fun0 = var2.withContext
local var85 = {}
var85.Stylizer = var2.Stylizer
var3 = fun0(var85)(var3)
return var3
