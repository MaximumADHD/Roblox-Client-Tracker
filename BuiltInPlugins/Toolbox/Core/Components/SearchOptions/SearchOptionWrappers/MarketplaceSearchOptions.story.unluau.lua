-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(script.Parent.MarketplaceSearchOptions)
local var3 = require(var0.TestUtils.ClickToShowInteractiveStoryWrapper)
local var4 = require(var0.Stories.ToolboxStoryWrapper)
local var5 = {}
var5.name = "MarketplaceSearchOptions"
var5.summary = "The Search Option component for Marketplace"
function {}.story()
   local var187 = {}
   local var191 = {}
   function var191.OnRender(arg1, arg2)
      local var197 = {}
      function var197.GetSearchOptions()
      end
      
      var197.OnClose = arg2
      return var1.createElement(var2, var197)
   end
   
   var187.ClickToShowInteractiveStoryWrapper = var1.createElement(var3, var191)
   return var1.createElement(var4, {}, var187)
end

var5.stories = {}
return var5
