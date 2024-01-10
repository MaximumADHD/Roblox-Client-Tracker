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
   local var189 = {}
   local var193 = {}
   var193.IsShownByDefault = true
   function var193.OnRender(arg1, arg2)
      local var200 = {}
      function var200.GetSearchOptions()
      end
      
      var200.OnClose = arg2
      return var1.createElement(var2, var200)
   end
   
   var189.ClickToShowInteractiveStoryWrapper = var1.createElement(var3, var193)
   return var1.createElement(var4, {}, var189)
end

var5.stories = {}
return var5
