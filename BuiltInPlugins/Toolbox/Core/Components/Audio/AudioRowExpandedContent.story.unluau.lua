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
   local var629 = {}
   local var633 = {}
   var633.AutomaticSize = Enum.AutomaticSize.Y
   var633.BackgroundTransparency = 1
   var633.Size = UDim2.new(1, 0, 0, 0)
   local var642 = {}
   local var646 = {}
   var646.AudioDetails = var4.AudioDetails
   var646.AssetInfo = var4
   var646.IsPlaying = false
   function var646.OnAssetPreviewButtonClicked()
      print("OnAssetPreviewButtonClicked")
   end
   
   function var646.OnAudioEnd()
      print("Audio End")
   end
   
   function var646.OnInsertClicked()
      print("Insert Asset")
   end
   
   var642.List = var2.createElement(var1, var646)
   local var661 = {}
   var661.PaddingTop = UDim.new(0, 10)
   var661.PaddingBottom = UDim.new(0, 10)
   var661.PaddingLeft = UDim.new(0, 10)
   var661.PaddingRight = UDim.new(0, 10)
   var642.Padding = var2.createElement("UIPadding", var661)
   var629.Frame = var2.createElement("Frame", var633, var642)
   return var2.createElement(var3, {}, var629)
end

return var5
