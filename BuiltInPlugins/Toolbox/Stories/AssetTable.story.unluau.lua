-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Components.AssetTable.AssetTable)
local var2 = require(var0.TestUtils.MockItems)
local var3 = require(var0.Packages.Roact)
local var4 = require(var0.Stories.ToolboxStoryWrapper)
local var5 = var2.getSimpleAsset(1, "Asset Row 1")
local var6 = var2.getSimpleAsset(2, "Asset Row 2")
local var7 = var2.getSimpleAsset(3, "Asset Row 3")
local var8 = {}
var8.summary = "AssetTable"
local var9 = {}
var9.name = "AssetTable"
function var9.story()
   local var43 = {}
   local var47 = {}
   var47.AutomaticSize = Enum.AutomaticSize.Y
   var47.BackgroundTransparency = 1
   var47.Size = UDim2.new(1, 0, 0, 0)
   local var56 = {}
   local var60 = {}
   local var62 = var5
   local var63 = var6
   local var0 = var7
   var60.Assets = {}
   function var60.CanInsertAsset()
      return true
   end
   
   var60.LayoutOrder = 1
   function var60.OnAssetPreviewButtonClicked()
      print("Asset Preview Clicked")
   end
   
   var60.ParentAbsoluteSize = UDim2.fromOffset(500, 500)
   function var60.TryOpenAssetConfig()
      print("Try Open Asset Config")
   end
   
   var56.List = var3.createElement(var1, var60)
   var43.Frame = var3.createElement("Frame", var47, var56)
   return var3.createElement(var4, {}, var43)
end

local var10 = {}
var10.name = "Empty table"
function var10.story()
   local var84 = {}
   local var88 = {}
   var88.AutomaticSize = Enum.AutomaticSize.Y
   var88.BackgroundTransparency = 1
   var88.Size = UDim2.new(1, 0, 0, 0)
   local var97 = {}
   local var101 = {}
   var101.Assets = {}
   function var101.CanInsertAsset()
      return true
   end
   
   var101.LayoutOrder = 1
   function var101.OnAssetPreviewButtonClicked()
      print("Asset Preview Clicked")
   end
   
   var101.ParentAbsoluteSize = UDim2.fromOffset(500, 500)
   function var101.TryOpenAssetConfig()
      print("Try Open Asset Config")
   end
   
   var97.List = var3.createElement(var1, var101)
   var84.Frame = var3.createElement("Frame", var88, var97)
   return var3.createElement(var4, {}, var84)
end

var8.stories = {}
return var8
