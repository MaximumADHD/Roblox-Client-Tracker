-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = var1.PureComponent:extend("Scrubber")
local function fun1(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var153 = var1
   local var2 = var0[var153.Children] or {}
   if var0.ShowHead then
      var153 = var2
      local var161 = {}
      var161.Image = var1.scrubberTheme.image
      var161.ImageColor3 = var1.scrubberTheme.backgroundColor
      var161.BackgroundTransparency = 1
      var161.Size = UDim2.new(1, 0, 1, 0)
      local var0 = var1.createElement("ImageLabel", var161)
      table.insert()
   end
   var153 = var2
   local var178 = {}
   var178.Position = UDim2.new(0.5, 0, 0, 0)
   var178.Size = UDim2.new(0, var0.Thickness, 0, var0.Height)
   var178.BackgroundColor3 = var1.scrubberTheme.backgroundColor
   var178.AnchorPoint = Vector2.new(0.5, 0)
   var178.BorderSizePixel = 0
   local var198 = var1.createElement("Frame", var178)
   table.insert()
   local var203 = {}
   var203.BackgroundTransparency = 1
   var203.Position = var0.Position
   var203.Size = var0.HeadSize
   var203.ZIndex = var0.ZIndex
   var203.AnchorPoint = var0.AnchorPoint
   local var207 = var1.Event.InputBegan
   var1.Event.InputBegan = arg1.onDragBegan
   var207 = var2
   return var1.createElement("Frame", var203, var207)
end

function var3.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var153 = var1
   local var2 = var0[var153.Children] or {}
   if var0.ShowHead then
      var153 = var2
      local var161 = {}
      var161.Image = var1.scrubberTheme.image
      var161.ImageColor3 = var1.scrubberTheme.backgroundColor
      var161.BackgroundTransparency = 1
      var161.Size = UDim2.new(1, 0, 1, 0)
      local var0 = var1.createElement("ImageLabel", var161)
      table.insert()
   end
   var153 = var2
   local var178 = {}
   var178.Position = UDim2.new(0.5, 0, 0, 0)
   var178.Size = UDim2.new(0, var0.Thickness, 0, var0.Height)
   var178.BackgroundColor3 = var1.scrubberTheme.backgroundColor
   var178.AnchorPoint = Vector2.new(0.5, 0)
   var178.BorderSizePixel = 0
   local var198 = var1.createElement("Frame", var178)
   table.insert()
   local var203 = {}
   var203.BackgroundTransparency = 1
   var203.Position = var0.Position
   var203.Size = var0.HeadSize
   var203.ZIndex = var0.ZIndex
   var203.AnchorPoint = var0.AnchorPoint
   local var207 = var1.Event.InputBegan
   var1.Event.InputBegan = arg1.onDragBegan
   var207 = var2
   return var1.createElement("Frame", var203, var207)
end

fun1 = var2.withContext
local var210 = {}
var210.Stylizer = var2.Stylizer
var3 = fun1(var210)(var3)
return var3
