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
   
   local var6 = {}
   var6.Text = arg2:getText("ContextMenu", "EditEventName")
   var6.Data = var2.ACTION_KEYS.Edit
   function var6.OnItemClicked(arg1)
      var0.OnMenuItemClicked(arg1.Data)
   end
   
   table.insert(var1, var6)
   local var16 = {}
   var16.Text = arg2:getText("ContextMenu", "DeleteAllSameEvents")
   var16.Data = var2.ACTION_KEYS.Delete
   function var16.OnItemClicked(arg1)
      var0.OnMenuItemClicked(arg1.Data)
   end
   
   table.insert(var1, var16)
   return var1
end

local function fun2(arg1)
   local var0 = arg1.props
   if var0.ShowMenu then
      local var34 = {}
      var34.Actions = arg1:makeMenuActions(arg1.props.Localization)
      var34.OnMenuOpened = var0.OnMenuOpened
      local var0 = var1.createElement(var4, var34) or nil
   end
   return nil
end

function var5.render(arg1)
   local var0 = arg1.props
   if var0.ShowMenu then
      local var34 = {}
      var34.Actions = arg1:makeMenuActions(arg1.props.Localization)
      var34.OnMenuOpened = var0.OnMenuOpened
      local var0 = var1.createElement(var4, var34) or nil
   end
   return nil
end

fun2 = var3.withContext
local var43 = {}
var43.Localization = var3.Localization
var5 = fun2(var43)(var5)
return var5
