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
   local var184 = {}
   local var188 = {}
   function var188.OnRender(arg1, arg2)
      local var194 = {}
      function var194.GetSearchOptions()
      end
      
      var194.OnClose = arg2
      return var1.createElement(var2, var194)
   end
   
   var184.ClickToShowInteractiveStoryWrapper = var1.createElement(var3, var188)
   return var1.createElement(var4, {}, var184)
end

var5.stories = {}
return var5
