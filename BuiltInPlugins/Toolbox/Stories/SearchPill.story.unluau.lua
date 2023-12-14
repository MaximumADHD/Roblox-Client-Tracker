-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Stories.ToolboxStoryWrapper)
local var3 = require(var0.Core.Components.Categorization.SearchPill)
local function var4(arg1)
   return var1.createElement(var2, arg1)
end

local var5 = {}
var5.summary = "A generic search pill."
local var6 = {}
var6.name = "Clickable"
function var6.story()
   local var32 = {}
   local var36 = {}
   var36.AutomaticSize = Enum.AutomaticSize.XY
   var36.Text = "Clickable"
   function var36.OnClick()
      print("Clicked")
   end
   
   var32.SearchPill = var1.createElement(var3, var36)
   return var1.createElement(var4, {}, var32)
end

local var7 = {}
var7.name = "Constant Size"
function var7.story()
   local var49 = {}
   local var53 = {}
   var53.Text = "Size 100x50"
   var53.Size = UDim2.new(0, 100, 0, 50)
   var49.SearchPill = var1.createElement(var3, var53)
   return var1.createElement(var4, {}, var49)
end

var5.stories = {}
return var5
