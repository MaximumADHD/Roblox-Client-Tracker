-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Stories.ToolboxStoryWrapper)
local var3 = require(var0.Core.Components.Categorization.HorizontalList)
local var4 = {}
var4.name = "HorizontalList"
var4.summary = "A generic horizontal list that sizes itself to the size of its content"
function var4.story()
   local var24 = {}
   local var28 = {}
   var28.BackgroundTransparency = 1
   var28.Size = UDim2.new(0, 600, 0, 60)
   local var36 = {}
   local var40 = {}
   var40.DefaultHeight = 50
   local var0 = "This"
   local var1 = "is"
   local var2 = "a"
   local var3 = "test"
   var40.Data = {}
   function var40.OnRenderItem(arg1, arg2)
      local var52 = {}
      var52.Size = UDim2.new(0, 50, 0, 50)
      var52.Text = arg2
      var52.LayoutOrder = arg1
      return var1.createElement("TextLabel", var52)
   end
   
   var36.List = var1.createElement(var3, var40)
   var24.Frame = var1.createElement("Frame", var28, var36)
   return var1.createElement(var2, {}, var24)
end

return var4
