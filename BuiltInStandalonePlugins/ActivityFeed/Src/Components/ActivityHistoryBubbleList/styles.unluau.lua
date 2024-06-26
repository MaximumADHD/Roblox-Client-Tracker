-- Generated with Unluau (https://github.com/valencefun/unluau)
local var263 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Styling
local var1 = var263.createStyleRule
var263 = var1
local var274 = {}
var274.PaddingTop = UDim.new(0, 4)
var274.PaddingLeft = UDim.new(0, 1)
var274.PaddingRight = UDim.new(0, 2)
local var287 = var1("::UIPadding", var274)
local var2 = var1(">> .Component-BubbleFrame", {}, {})
local var291 = {}
var291.BackgroundTransparency = 1
local var296 = {}
var296.BackgroundTransparency = 1
local var3 = var1("> Frame", var296)
local var4 = var1("> ScrollingFrame", var291, {})
return var263(".Component-ActivityHistoryBubbleList", {}, {})
