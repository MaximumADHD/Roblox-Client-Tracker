-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(script.Parent.SearchOptionsLayout)
local var3 = require(var0.TestUtils.ClickToShowInteractiveStoryWrapper)
local var4 = require(var0.Stories.ToolboxStoryWrapper)
local var5 = {}
var5.name = "SearchOptionsLayout"
var5.summary = "The layout for the Search Option component"
function {}.story()
   local var30 = {}
   local var34 = {}
   function var34.OnRender(arg1, arg2)
      local var40 = {}
      var40.SearchOptions = {}
      var40.OnClose = arg2
      return var1.createElement(var2, var40)
   end
   
   var30.ClickToShowInteractiveStoryWrapper = var1.createElement(var3, var34)
   return var1.createElement(var4, {}, var30)
end

var5.stories = {}
return var5
