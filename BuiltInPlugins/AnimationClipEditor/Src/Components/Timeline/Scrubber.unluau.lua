-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = var1.PureComponent:extend("Scrubber")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var89 = var1
   local var2 = var0[var89.Children] or {}
   if var0.ShowHead then
      var89 = var2
      local var97 = {}
      var97.Image = var1.scrubberTheme.image
      var97.ImageColor3 = var1.scrubberTheme.backgroundColor
      var97.BackgroundTransparency = 1
      var97.Size = UDim2.new(1, 0, 1, 0)
      local var0 = var1.createElement("ImageLabel", var97)
      table.insert()
   end
   var89 = var2
   local var114 = {}
   var114.Position = UDim2.new(0.5, 0, 0, 0)
   var114.Size = UDim2.new(0, var0.Thickness, 0, var0.Height)
   var114.BackgroundColor3 = var1.scrubberTheme.backgroundColor
   var114.AnchorPoint = Vector2.new(0.5, 0)
   var114.BorderSizePixel = 0
   local var134 = var1.createElement("Frame", var114)
   table.insert()
   local var139 = {}
   var139.BackgroundTransparency = 1
   var139.Position = var0.Position
   var139.Size = var0.HeadSize
   var139.ZIndex = var0.ZIndex
   var139.AnchorPoint = var0.AnchorPoint
   local var143 = var1.Event.InputBegan
   var1.Event.InputBegan = arg1.onDragBegan
   var143 = var2
   return var1.createElement("Frame", var139, var143)
end

function var3.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var89 = var1
   local var2 = var0[var89.Children] or {}
   if var0.ShowHead then
      var89 = var2
      local var97 = {}
      var97.Image = var1.scrubberTheme.image
      var97.ImageColor3 = var1.scrubberTheme.backgroundColor
      var97.BackgroundTransparency = 1
      var97.Size = UDim2.new(1, 0, 1, 0)
      local var0 = var1.createElement("ImageLabel", var97)
      table.insert()
   end
   var89 = var2
   local var114 = {}
   var114.Position = UDim2.new(0.5, 0, 0, 0)
   var114.Size = UDim2.new(0, var0.Thickness, 0, var0.Height)
   var114.BackgroundColor3 = var1.scrubberTheme.backgroundColor
   var114.AnchorPoint = Vector2.new(0.5, 0)
   var114.BorderSizePixel = 0
   local var134 = var1.createElement("Frame", var114)
   table.insert()
   local var139 = {}
   var139.BackgroundTransparency = 1
   var139.Position = var0.Position
   var139.Size = var0.HeadSize
   var139.ZIndex = var0.ZIndex
   var139.AnchorPoint = var0.AnchorPoint
   local var143 = var1.Event.InputBegan
   var1.Event.InputBegan = arg1.onDragBegan
   var143 = var2
   return var1.createElement("Frame", var139, var143)
end

fun0 = var2.withContext
local var146 = {}
var146.Stylizer = var2.Stylizer
var3 = fun0(var146)(var3)
return var3
