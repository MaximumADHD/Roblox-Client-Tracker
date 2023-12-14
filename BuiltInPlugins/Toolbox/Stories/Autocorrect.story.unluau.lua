-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Components.Autocorrect.Autocorrect)
local var2 = require(var0.Packages.Roact)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = require(var0.Core.Types.AutocorrectTypes)
local var5 = {}
var5.name = "Autocorrect"
var5.summary = "An Autocorrect component"
function var5.story()
   local var30 = {}
   local var34 = {}
   var34.AutomaticSize = Enum.AutomaticSize.Y
   var34.BackgroundColor3 = Color3.new(255, 255, 255)
   var34.Size = UDim2.new(1, 0, 1, 0)
   local var47 = {}
   local var51 = {}
   var51.CorrectionState = var4.AutocorrectResponseState.CorrectionAvailable
   var51.CurrentQuery = "foo"
   var51.CorrectedQuery = "bar"
   var51.UserQuery = nil
   var47.Autocorrect = var2.createElement(var1, var51)
   local var62 = {}
   var62.PaddingTop = UDim.new(0, 10)
   var62.PaddingBottom = UDim.new(0, 10)
   var62.PaddingLeft = UDim.new(0, 10)
   var62.PaddingRight = UDim.new(0, 10)
   var47.Padding = var2.createElement("UIPadding", var62)
   var30.Frame = var2.createElement("Frame", var34, var47)
   return var2.createElement(var3, {}, var30)
end

return var5
