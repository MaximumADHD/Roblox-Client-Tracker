-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Components.Asset.Asset)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = require(var0.Core.Actions.GetAssets)
local function var5(arg1)
   local var0 = arg1.fakeAsset
   function arg1.storeSetup(arg1)
      local var31 = var0
      local var0 = var4({}, 1)
      arg1:dispatch()
   end
   
   return var1.createElement(var3, arg1)
end

local var6 = require(var0.TestUtils.MockItems).getSimpleAsset(123456)
local var7 = {}
var7.name = "Asset"
var7.summary = "An asset used in the grid view."
local var8 = {}
var8.name = "Asset"
function var8.story()
   local var52 = {}
   var52.fakeAsset = var6
   local var54 = {}
   local var58 = {}
   var58.asset = var6
   var58.assetData = var6
   var58.assetId = 123456
   var58.LayoutOrder = 1
   var54.Asset = var1.createElement(var2, var58)
   var1.createElement(var5, var52, var54)
end

local var9 = {}
var9.name = "Asset hovered"
function var9.story()
   local var69 = {}
   var69.fakeAsset = var6
   local var75 = {}
   var75.Size = UDim2.new(1, 0, 0, 250)
   var75.BackgroundTransparency = 1
   local var83 = {}
   local var87 = {}
   var87.VerticalAlignment = Enum.VerticalAlignment.Center
   var87.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var83.Layout = var1.createElement("UIListLayout", var87)
   local var94 = {}
   var94.asset = var6
   var94.assetData = var6
   var94.assetId = 123456
   var94.isHovered = true
   var94.LayoutOrder = 1
   var83.Asset = var1.createElement(var2, var94)
   local var0 = var1.createElement("Frame", var75, var83)
   var1.createElement(var5, var69, {})
end

var7.stories = {}
return var7
