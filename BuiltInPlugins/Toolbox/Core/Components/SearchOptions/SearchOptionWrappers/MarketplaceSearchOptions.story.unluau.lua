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
   local var180 = {}
   local var184 = {}
   function var184.OnRender(arg1, arg2)
      local var190 = {}
      function var190.GetSearchOptions()
      end
      
      var190.OnClose = arg2
      return var1.createElement(var2, var190)
   end
   
   var180.ClickToShowInteractiveStoryWrapper = var1.createElement(var3, var184)
   return var1.createElement(var4, {}, var180)
end

var5.stories = {}
return var5
