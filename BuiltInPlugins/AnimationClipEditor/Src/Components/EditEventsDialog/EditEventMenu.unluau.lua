-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = require(var0.Src.Components.ContextMenu)
local var5 = var1.PureComponent:extend("EditEventMenu")
function var5.makeMenuActions(arg1, arg2)
   local var0 = arg1.props
   local var1 = {}
   local function fun0(arg1)
      var0.OnMenuItemClicked(arg1.Data)
   end
   
   local var84 = {}
   var84.Text = arg2:getText("ContextMenu", "EditEventName")
   var84.Data = var2.ACTION_KEYS.Edit
   function var84.OnItemClicked(arg1)
      var0.OnMenuItemClicked(arg1.Data)
   end
   
   table.insert(var1, var84)
   local var101 = {}
   var101.Text = arg2:getText("ContextMenu", "DeleteAllSameEvents")
   var101.Data = var2.ACTION_KEYS.Delete
   function var101.OnItemClicked(arg1)
      var0.OnMenuItemClicked(arg1.Data)
   end
   
   table.insert(var1, var101)
   return var1
end

local function fun3(arg1)
   local var0 = arg1.props
   if var0.ShowMenu then
      local var139 = {}
      var139.Actions = arg1:makeMenuActions(arg1.props.Localization)
      var139.OnMenuOpened = var0.OnMenuOpened
      local var0 = var1.createElement(var4, var139) or nil
   end
   return nil
end

function var5.render(arg1)
   local var0 = arg1.props
   if var0.ShowMenu then
      local var139 = {}
      var139.Actions = arg1:makeMenuActions(arg1.props.Localization)
      var139.OnMenuOpened = var0.OnMenuOpened
      local var0 = var1.createElement(var4, var139) or nil
   end
   return nil
end

fun3 = var3.withContext
local var159 = {}
var159.Localization = var3.Localization
var5 = fun3(var159)(var5)
return var5
