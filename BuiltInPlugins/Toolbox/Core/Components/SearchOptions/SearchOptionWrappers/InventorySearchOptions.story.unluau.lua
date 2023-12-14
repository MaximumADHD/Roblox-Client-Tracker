-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(script.Parent.InventorySearchOptions)
local var3 = require(var0.TestUtils.ClickToShowInteractiveStoryWrapper)
local var4 = require(var0.Stories.ToolboxStoryWrapper)
local var5 = {}
var5.name = "InventorySearchOptions"
var5.summary = "The Search Option component for Inventory"
function {}.story()
   local var229 = {}
   local var233 = {}
   var233.IsShownByDefault = true
   function var233.OnRender(arg1, arg2)
      local var240 = {}
      function var240.GetSearchOptions()
      end
      
      var240.OnClose = arg2
      return var1.createElement(var2, var240)
   end
   
   var229.ClickToShowInteractiveStoryWrapper = var1.createElement(var3, var233)
   return var1.createElement(var4, {}, var229)
end

var5.stories = {}
return var5
