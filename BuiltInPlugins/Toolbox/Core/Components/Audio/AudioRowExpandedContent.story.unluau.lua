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
   local var594 = {}
   local var598 = {}
   var598.AutomaticSize = Enum.AutomaticSize.Y
   var598.BackgroundTransparency = 1
   var598.Size = UDim2.new(1, 0, 0, 0)
   local var607 = {}
   local var611 = {}
   var611.AudioDetails = var4.AudioDetails
   var611.AssetInfo = var4
   var611.IsPlaying = false
   function var611.OnAssetPreviewButtonClicked()
      print("OnAssetPreviewButtonClicked")
   end
   
   function var611.OnAudioEnd()
      print("Audio End")
   end
   
   function var611.OnInsertClicked()
      print("Insert Asset")
   end
   
   var607.List = var2.createElement(var1, var611)
   local var626 = {}
   var626.PaddingTop = UDim.new(0, 10)
   var626.PaddingBottom = UDim.new(0, 10)
   var626.PaddingLeft = UDim.new(0, 10)
   var626.PaddingRight = UDim.new(0, 10)
   var607.Padding = var2.createElement("UIPadding", var626)
   var594.Frame = var2.createElement("Frame", var598, var607)
   return var2.createElement(var3, {}, var594)
end

return var5
