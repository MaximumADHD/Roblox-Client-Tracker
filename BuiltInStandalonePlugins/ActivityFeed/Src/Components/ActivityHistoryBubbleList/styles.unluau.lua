-- Generated with Unluau (https://github.com/valencefun/unluau)
local var201 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Styling
local var1 = var201.createStyleRule
var201 = var1
local var212 = {}
var212.PaddingTop = UDim.new(0, 4)
var212.PaddingLeft = UDim.new(0, 1)
var212.PaddingRight = UDim.new(0, 2)
local var225 = var1("::UIPadding", var212)
local var2 = var1(">> .Component-BubbleFrame", {}, {})
local var229 = {}
var229.BackgroundTransparency = 1
local var234 = {}
var234.BackgroundTransparency = 1
local var3 = var1("> Frame", var234)
local var4 = var1("> ScrollingFrame", var229, {})
return var201(".Component-ActivityHistoryBubbleList", {}, {})
