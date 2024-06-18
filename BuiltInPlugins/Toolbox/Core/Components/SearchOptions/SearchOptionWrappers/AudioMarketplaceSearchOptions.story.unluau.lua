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
   local var185 = {}
   local var189 = {}
   function var189.OnRender(arg1, arg2)
      local var195 = {}
      function var195.GetSearchOptions()
      end
      
      var195.OnClose = arg2
      return var1.createElement(var2, var195)
   end
   
   var185.ClickToShowInteractiveStoryWrapper = var1.createElement(var3, var189)
   return var1.createElement(var4, {}, var185)
end

var5.stories = {}
return var5
