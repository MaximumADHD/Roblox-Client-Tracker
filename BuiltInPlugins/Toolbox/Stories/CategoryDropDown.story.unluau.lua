-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Components.CategoryDropDown.CategoryDropDown)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = { 
   "rock", 
   "pop", 
   "scores-orchestral", 
   "children", 
   "ethnic-folk", 
   "kitsch-retro", 
   "electronic", 
   "latin", 
   "classical", 
   "jazz", 
   "corporate", 
   "blues", 
   "hip-hop", 
   "folk-contemporary", 
   "dance-traditional", 
   "funk-soul-r-b"
}
local var5 = "atmosphere"
local var6 = "easy-listening"
local var7 = "religious"
local var8 = "world-beat"
local var9 = "ethnic-pop"
local var10 = "country"
local var11 = "marches-military"
local var12 = "electronica"
local function var13(arg1)
   print(arg1)
end

local var14 = {}
var14.name = "Category drop down"
function var14.story()
   local var52 = {}
   local var56 = {}
   var56.OnCategorySelect = var13
   var56.Categories = var4
   var52.CategoryDropDown = var1.createElement(var2, var56)
   return var1.createElement(var3, {}, var52)
end

return var14
