-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Components.AssetRow.AssetRowExpandedContent)
local var2 = require(var0.Packages.Roact)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = require(var0.TestUtils.MockItems).getSimpleAsset(11322590111, "Roboto")
local var5 = {}
var5.summary = "AssetRowExpandedContent"
local var6 = {}
var6.name = "AssetRowExpandedContent"
function var6.story()
   local var35 = {}
   local var39 = {}
   var39.AutomaticSize = Enum.AutomaticSize.Y
   var39.BackgroundTransparency = 1
   var39.Size = UDim2.new(1, 0, 0, 0)
   local var48 = {}
   local var52 = {}
   var52.AssetInfo = var4
   function var52.OnAssetPreviewButtonClicked()
      print("Asset Preview Clicked")
   end
   
   function var52.OnInsertClicked()
      print("On Insert Clicked")
   end
   
   var48.List = var2.createElement(var1, var52)
   var35.Frame = var2.createElement("Frame", var39, var48)
   return var2.createElement(var3, {}, var35)
end

var5.stories = {}
return var5
