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
   local var625 = {}
   local var629 = {}
   var629.AutomaticSize = Enum.AutomaticSize.Y
   var629.BackgroundTransparency = 1
   var629.Size = UDim2.new(1, 0, 0, 0)
   local var638 = {}
   local var642 = {}
   var642.AudioDetails = var4.AudioDetails
   var642.AssetInfo = var4
   var642.IsPlaying = false
   function var642.OnAssetPreviewButtonClicked()
      print("OnAssetPreviewButtonClicked")
   end
   
   function var642.OnAudioEnd()
      print("Audio End")
   end
   
   function var642.OnInsertClicked()
      print("Insert Asset")
   end
   
   var638.List = var2.createElement(var1, var642)
   local var657 = {}
   var657.PaddingTop = UDim.new(0, 10)
   var657.PaddingBottom = UDim.new(0, 10)
   var657.PaddingLeft = UDim.new(0, 10)
   var657.PaddingRight = UDim.new(0, 10)
   var638.Padding = var2.createElement("UIPadding", var657)
   var625.Frame = var2.createElement("Frame", var629, var638)
   return var2.createElement(var3, {}, var625)
end

return var5
