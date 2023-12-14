-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Components.Home.NavigationContainer)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = {}
var4.name = "NavigationContainer"
var4.summary = "A container that hosts all of the navigation routes."
function var4.story()
   local var24 = {}
   var24.Container = var1.createElement(var2)
   return var1.createElement(var3, {}, var24)
end

return var4
