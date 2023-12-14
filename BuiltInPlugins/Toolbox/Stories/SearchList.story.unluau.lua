-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Stories.ToolboxStoryWrapper)
local var3 = require(var0.Core.Components.Categorization.SearchList)
local function var4(arg1)
   return var1.createElement(var2, arg1)
end

local var5 = { 
   "charmander", 
   "bulbasaur", 
   "squirtle", 
   "cyndaquil", 
   "totodile", 
   "chikorita", 
   "torchic", 
   "mudkip", 
   "treecko", 
   "chimchar", 
   "piplup"
}
local var6 = "turtwig"
local var7 = "tepig"
local var8 = "oshawott"
local var9 = "snivy"
local var10 = "fennekin"
local var40 = "froakie"
local var41 = "chespin"
local var42 = "litten"
local var43 = "popplio"
local var44 = "rowlet"
local var16 = {}
var16.summary = "A generic search list."
local var17 = {}
var17.name = "Full, no max count"
function var17.story()
   local var58 = {}
   var58.AutomaticSize = Enum.AutomaticSize.Y
   var58.BackgroundTransparency = 1
   var58.Size = UDim2.new(1, 0, 0, 0)
   local var67 = {}
   local var71 = {}
   var71.Items = var5
   var71.ItemMinWidth = 28
   var67.SearchList = var1.createElement(var3, var71)
   local var0 = var1.createElement("Frame", var58, var67)
   return var1.createElement(var4, {}, {})
end

local var18 = {}
var18.name = "Max row count of 2"
function var18.story()
   local var87 = {}
   var87.AutomaticSize = Enum.AutomaticSize.Y
   var87.BackgroundTransparency = 1
   var87.Size = UDim2.new(1, 0, 0, 0)
   local var96 = {}
   local var100 = {}
   var100.Items = var5
   var100.ItemMinWidth = 28
   var100.MaxRowCount = 2
   var96.SearchList = var1.createElement(var3, var100)
   local var0 = var1.createElement("Frame", var87, var96)
   return var1.createElement(var4, {}, {})
end

var16.stories = {}
return var16
