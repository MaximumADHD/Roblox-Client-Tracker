-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(script.Parent.AudioMarketplaceSearchOptions)
local var3 = require(var0.TestUtils.ClickToShowInteractiveStoryWrapper)
local var4 = require(var0.Stories.ToolboxStoryWrapper)
local var5 = {}
var5.name = "AudioMarketplaceSearchOptions"
var5.summary = "The Search Option component for Audio"
function {}.story()
   local var175 = {}
   local var179 = {}
   function var179.OnRender(arg1, arg2)
      local var185 = {}
      function var185.GetSearchOptions()
      end
      
      var185.OnClose = arg2
      return var1.createElement(var2, var185)
   end
   
   var175.ClickToShowInteractiveStoryWrapper = var1.createElement(var3, var179)
   return var1.createElement(var4, {}, var175)
end

var5.stories = {}
return var5
