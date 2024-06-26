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
   local var599 = {}
   local var603 = {}
   var603.AutomaticSize = Enum.AutomaticSize.Y
   var603.BackgroundTransparency = 1
   var603.Size = UDim2.new(1, 0, 0, 0)
   local var612 = {}
   local var616 = {}
   var616.AudioDetails = var4.AudioDetails
   var616.AssetInfo = var4
   var616.IsPlaying = false
   function var616.OnAssetPreviewButtonClicked()
      print("OnAssetPreviewButtonClicked")
   end
   
   function var616.OnAudioEnd()
      print("Audio End")
   end
   
   function var616.OnInsertClicked()
      print("Insert Asset")
   end
   
   var612.List = var2.createElement(var1, var616)
   local var631 = {}
   var631.PaddingTop = UDim.new(0, 10)
   var631.PaddingBottom = UDim.new(0, 10)
   var631.PaddingLeft = UDim.new(0, 10)
   var631.PaddingRight = UDim.new(0, 10)
   var612.Padding = var2.createElement("UIPadding", var631)
   var599.Frame = var2.createElement("Frame", var603, var612)
   return var2.createElement(var3, {}, var599)
end

return var5
