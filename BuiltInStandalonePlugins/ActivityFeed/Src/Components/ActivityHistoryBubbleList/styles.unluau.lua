-- Generated with Unluau (https://github.com/valencefun/unluau)
local var9 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Styling
local var1 = var9.createStyleRule
var9 = var1
local var20 = {}
var20.PaddingTop = UDim.new(0, 4)
var20.PaddingLeft = UDim.new(0, 1)
var20.PaddingRight = UDim.new(0, 2)
local var33 = var1("::UIPadding", var20)
local var2 = var1(">> .Component-BubbleFrame", {}, {})
local var37 = {}
var37.BackgroundTransparency = 1
local var42 = {}
var42.BackgroundTransparency = 1
local var3 = var1("> Frame", var42)
local var4 = var1("> ScrollingFrame", var37, {})
return var9(".Component-ActivityHistoryBubbleList", {}, {})
