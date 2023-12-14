-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Components.AssetRow.AssetRow)
local var2 = require(var0.Packages.Roact)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = require(var0.TestUtils.MockItems).getSimpleAsset(11322590111, "Asset Row")
local var5 = var2.PureComponent:extend("MockAssetRowInteractiveWrapper")
function var5.init(arg1)
   local var31 = {}
   var31.isExpanded = false
   arg1.state = var31
   function arg1.updateExpanded(arg1)
      local var0 = {}
      var0.isExpanded = arg1.isExpanded
      return var0
   end
   
end

function var5.render(arg1)
   local var41 = {}
   var41.AutomaticSize = Enum.AutomaticSize.Y
   var41.BackgroundTransparency = 1
   var41.Size = UDim2.new(1, 0, 0, 0)
   local var50 = {}
   local var54 = {}
   var54.AssetInfo = var4
   function var54.CanInsertAsset()
      return true
   end
   
   function var54.InsertAsset()
      print("Insert Asset")
   end
   
   var54.IsExpanded = arg1.state.isExpanded
   var54.OnExpanded = arg1.updateExpanded
   var54.LayoutOrder = 1
   function var54.OnAssetPreviewButtonClicked()
      print("Asset Preview Clicked")
   end
   
   var54.ParentAbsoluteSize = UDim2.fromOffset(500, 500)
   function var54.TryOpenAssetConfig()
      print("Try Open Asset Config")
   end
   
   var50.AssetRow = var2.createElement(var1, var54)
   return var2.createElement("Frame", var41, var50)
end

local var6 = {}
var6.summary = "AssetRow"
local var7 = {}
var7.name = "Interactive AssetRow"
var7.summary = "Never expanding row (IsExpanded = false)"
function var7.story()
   local var0 = var2.createElement(var5)
   return var2.createElement(var3, {}, {})
end

local var8 = {}
var8.name = "Unexpanded AssetRow"
var8.summary = "Never expanding row (IsExpanded = false)"
function var8.story()
   local var96 = {}
   local var100 = {}
   var100.AutomaticSize = Enum.AutomaticSize.Y
   var100.BackgroundTransparency = 1
   var100.Size = UDim2.new(1, 0, 0, 0)
   local var109 = {}
   local var113 = {}
   var113.AssetInfo = var4
   function var113.CanInsertAsset()
      return true
   end
   
   function var113.InsertAsset()
      print("Insert Asset")
   end
   
   var113.IsExpanded = false
   function var113.OnExpanded(arg1)
      print("On Expanded id:", arg1)
   end
   
   var113.LayoutOrder = 1
   function var113.OnAssetPreviewButtonClicked()
      print("Asset Preview Clicked")
   end
   
   var113.ParentAbsoluteSize = UDim2.fromOffset(500, 500)
   function var113.TryOpenAssetConfig()
      print("Try Open Asset Config")
   end
   
   var109.AssetRow = var2.createElement(var1, var113)
   var96.Frame = var2.createElement("Frame", var100, var109)
   return var2.createElement(var3, {}, var96)
end

local var9 = {}
var9.name = "Expanded AssetRow"
var9.summary = "Always expanded Row (IsExpanded = true)"
function var9.story()
   local var142 = {}
   local var146 = {}
   var146.AutomaticSize = Enum.AutomaticSize.Y
   var146.BackgroundTransparency = 1
   var146.Size = UDim2.new(1, 0, 0, 0)
   local var155 = {}
   local var159 = {}
   var159.AssetInfo = var4
   function var159.CanInsertAsset()
      return true
   end
   
   function var159.InsertAsset()
      print("Insert Asset")
   end
   
   var159.IsExpanded = true
   function var159.OnExpanded()
      print("On Expanded")
   end
   
   var159.LayoutOrder = 1
   function var159.OnAssetPreviewButtonClicked()
      print("Asset Preview Clicked")
   end
   
   var159.ParentAbsoluteSize = UDim2.fromOffset(500, 500)
   function var159.TryOpenAssetConfig()
      print("Try Open Asset Config")
   end
   
   var155.AssetRow = var2.createElement(var1, var159)
   var142.Frame = var2.createElement("Frame", var146, var155)
   return var2.createElement(var3, {}, var142)
end

var6.stories = {}
return var6
