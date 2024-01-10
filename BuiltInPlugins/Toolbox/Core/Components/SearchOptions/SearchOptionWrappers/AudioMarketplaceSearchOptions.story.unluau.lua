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
   local var164 = {}
   local var168 = {}
   function var168.OnRender(arg1, arg2)
      local var174 = {}
      function var174.GetSearchOptions()
      end
      
      var174.OnClose = arg2
      return var1.createElement(var2, var174)
   end
   
   var164.ClickToShowInteractiveStoryWrapper = var1.createElement(var3, var168)
   return var1.createElement(var4, {}, var164)
end

var5.stories = {}
return var5
