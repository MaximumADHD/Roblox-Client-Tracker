-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Stories.ToolboxStoryWrapper)
local var3 = require(var0.Core.Components.Categorization.ExpandableTeaser)
local var4 = require(var0.Core.Components.Categorization.SearchList)
local function var5(arg1)
   return var1.createElement(var2, arg1)
end

local function var6()
   local var33 = {}
   var33.BackgroundColor3 = Color3.new(1, 0, 0)
   var33.Size = UDim2.new(1, 0, 0, 100)
   local var0 = var1.createElement("Frame", var33)
   return {}
end

local function var7()
   local var0 = {}
   local var50 = {}
   var50.AutomaticSize = Enum.AutomaticSize.Y
   local var1 = "tepig"
   local var2 = "oshawott"
   local var3 = "snivy"
   var50.Items = { 
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
      "piplup", 
      "turtwig"
   }
   var50.ItemMinWidth = 28
   var0.SearchList = var1.createElement(var4, var50)
   return var0
end

local function var8(arg1)
   print("isExpanded: ", arg1)
end

local var9 = {}
var9.summary = "An expandable teaser."
local var10 = {}
var10.name = "Expandable"
function var10.story()
   local var87 = {}
   var87.AutomaticSize = Enum.AutomaticSize.Y
   var87.BackgroundTransparency = 1
   var87.Size = UDim2.new(1, 0, 0, 0)
   local var96 = {}
   local var100 = {}
   var100.OnExpandChanged = var8
   var100.Title = "Expandable"
   var100.TeaserSize = Vector2.new(0, 10)
   var96.ExpandableTeaser = var1.createElement(var3, var100, var6())
   local var0 = var1.createElement("Frame", var87, var96)
   return var1.createElement(var5, {}, {})
end

local var11 = {}
var11.name = "Search Pills"
function var11.story()
   local var122 = {}
   var122.AutomaticSize = Enum.AutomaticSize.Y
   var122.BackgroundTransparency = 1
   var122.Size = UDim2.new(1, 0, 0, 0)
   local var131 = {}
   local var135 = {}
   var135.OnExpandChanged = var8
   var135.Title = "Top Searches"
   var135.TeaserSize = Vector2.new(0, 28)
   var131.ExpandableTeaser = var1.createElement(var3, var135, var7())
   local var0 = var1.createElement("Frame", var122, var131)
   return var1.createElement(var5, {}, {})
end

var9.stories = {}
return var9
