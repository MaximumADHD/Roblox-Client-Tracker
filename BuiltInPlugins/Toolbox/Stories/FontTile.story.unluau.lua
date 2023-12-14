-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Core.Components.Font.FontTile)
local var2 = require(var0.Packages.Roact)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = require(var0.TestUtils.MockItems).getSimpleAsset(11322590111, "Roboto")
local var5 = {}
var5.name = "FontTile"
var5.summary = "A FontTile component used in the grid view"
function var5.story()
   local var32 = {}
   local var36 = {}
   var36.AutomaticSize = Enum.AutomaticSize.Y
   var36.BackgroundColor3 = Color3.new(255, 255, 255)
   var36.Size = UDim2.new(1, 0, 0, 0)
   local var49 = {}
   local var53 = {}
   var53.AssetInfo = var4
   var49.List = var2.createElement(var1, var53)
   local var59 = {}
   var59.PaddingTop = UDim.new(0, 10)
   var59.PaddingBottom = UDim.new(0, 10)
   var59.PaddingLeft = UDim.new(0, 10)
   var59.PaddingRight = UDim.new(0, 10)
   var49.Padding = var2.createElement("UIPadding", var59)
   var32.Frame = var2.createElement("Frame", var36, var49)
   return var2.createElement(var3, {}, var32)
end

return var5
