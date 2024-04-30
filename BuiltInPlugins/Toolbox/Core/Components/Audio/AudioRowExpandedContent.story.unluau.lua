-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(script.Parent.AudioRowExpandedContent)
local var2 = require(var0.Packages.Roact)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = require(var0.TestUtils.MockItems).getSimpleAudioAsset(11322590111, "Roboto")
local var5 = {}
var5.name = "AudioRowExpandedContent"
var5.summary = "Expanded content component used in the AudioRow"
function var5.story()
   local var632 = {}
   local var636 = {}
   var636.AutomaticSize = Enum.AutomaticSize.Y
   var636.BackgroundTransparency = 1
   var636.Size = UDim2.new(1, 0, 0, 0)
   local var645 = {}
   local var649 = {}
   var649.AudioDetails = var4.AudioDetails
   var649.AssetInfo = var4
   var649.IsPlaying = false
   function var649.OnAssetPreviewButtonClicked()
      print("OnAssetPreviewButtonClicked")
   end
   
   function var649.OnAudioEnd()
      print("Audio End")
   end
   
   function var649.OnInsertClicked()
      print("Insert Asset")
   end
   
   var645.List = var2.createElement(var1, var649)
   local var664 = {}
   var664.PaddingTop = UDim.new(0, 10)
   var664.PaddingBottom = UDim.new(0, 10)
   var664.PaddingLeft = UDim.new(0, 10)
   var664.PaddingRight = UDim.new(0, 10)
   var645.Padding = var2.createElement("UIPadding", var664)
   var632.Frame = var2.createElement("Frame", var636, var645)
   return var2.createElement(var3, {}, var632)
end

return var5
