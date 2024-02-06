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
   local var635 = {}
   local var639 = {}
   var639.AutomaticSize = Enum.AutomaticSize.Y
   var639.BackgroundTransparency = 1
   var639.Size = UDim2.new(1, 0, 0, 0)
   local var648 = {}
   local var652 = {}
   var652.AudioDetails = var4.AudioDetails
   var652.AssetInfo = var4
   var652.IsPlaying = false
   function var652.OnAssetPreviewButtonClicked()
      print("OnAssetPreviewButtonClicked")
   end
   
   function var652.OnAudioEnd()
      print("Audio End")
   end
   
   function var652.OnInsertClicked()
      print("Insert Asset")
   end
   
   var648.List = var2.createElement(var1, var652)
   local var667 = {}
   var667.PaddingTop = UDim.new(0, 10)
   var667.PaddingBottom = UDim.new(0, 10)
   var667.PaddingLeft = UDim.new(0, 10)
   var667.PaddingRight = UDim.new(0, 10)
   var648.Padding = var2.createElement("UIPadding", var667)
   var635.Frame = var2.createElement("Frame", var639, var648)
   return var2.createElement(var3, {}, var635)
end

return var5
