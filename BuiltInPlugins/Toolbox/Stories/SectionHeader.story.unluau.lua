-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Stories.ToolboxStoryWrapper)
local var3 = require(var0.Core.Components.Categorization.SectionHeader)
local var4 = {}
var4.name = "SectionHeader"
var4.summary = "A header shown at the top of a swimlane."
function var4.story()
   local var24 = {}
   local var28 = {}
   var28.BackgroundTransparency = 1
   var28.Size = UDim2.new(0, 400, 0, 100)
   local var36 = {}
   local var40 = {}
   function var40.OnClickSeeAll()
      print("\'See All\' button pressed")
   end
   
   var40.Position = UDim2.new(0, 0, 0, 0)
   var40.Title = "This is a test"
   var36.SectionHeader = var1.createElement(var3, var40)
   var24.EmptyFrame = var1.createElement("Frame", var28, var36)
   return var1.createElement(var2, {}, var24)
end

return var4
