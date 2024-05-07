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
   local var638 = {}
   local var642 = {}
   var642.AutomaticSize = Enum.AutomaticSize.Y
   var642.BackgroundTransparency = 1
   var642.Size = UDim2.new(1, 0, 0, 0)
   local var651 = {}
   local var655 = {}
   var655.AudioDetails = var4.AudioDetails
   var655.AssetInfo = var4
   var655.IsPlaying = false
   function var655.OnAssetPreviewButtonClicked()
      print("OnAssetPreviewButtonClicked")
   end
   
   function var655.OnAudioEnd()
      print("Audio End")
   end
   
   function var655.OnInsertClicked()
      print("Insert Asset")
   end
   
   var651.List = var2.createElement(var1, var655)
   local var670 = {}
   var670.PaddingTop = UDim.new(0, 10)
   var670.PaddingBottom = UDim.new(0, 10)
   var670.PaddingLeft = UDim.new(0, 10)
   var670.PaddingRight = UDim.new(0, 10)
   var651.Padding = var2.createElement("UIPadding", var670)
   var638.Frame = var2.createElement("Frame", var642, var651)
   return var2.createElement(var3, {}, var638)
end

return var5
