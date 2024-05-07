-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Core.Util.SharedFlags.getFFlagFixSwimlaneAnalytics)
local var2 = require(var0.Packages.Framework).ContextServices.ContextItem:extend("NavigationContext")
function var2.new(arg1)
   local var0 = {}
   function var0.push()
   end
   
   function var0.pop()
   end
   
   function var0.popToTop()
   end
   
   local var1 = {}
   var1.navigation = var0
   local var23 = arg1
   var1.observedNavStack = {}
   var23 = arg1
   var1.observedRouteStack = {}
   var1.rootRoute = arg1
   var23 = var1
   setmetatable(var23, var2)
   return var1
end

function var2.updateNavigation(arg1, arg2)
   arg1.navigation = arg2
end

function var2.get(arg1)
   return arg1
end

function var2.push(arg1, arg2, arg3, arg4)
   table.insert(arg1.observedNavStack, arg3)
   if var1() then
      table.insert(arg1.observedRouteStack, arg2)
   end
   local var42 = arg1.navigation
   var42 = arg2
   var42.push(var42, arg4)
end

function var2.pop(arg1)
   table.remove(arg1.observedNavStack, arg1.observedNavStack)
   if arg1.observedNavStack <= 0 then
      arg1.observedNavStack = { arg1.rootRoute }
   end
   if var1() then
      table.remove(arg1.observedRouteStack, arg1.observedRouteStack)
      if arg1.observedRouteStack <= 0 then
         arg1.observedRouteStack = { arg1.rootRoute }
      end
   end
   arg1.navigation.pop()
end

function var2.popToTop(arg1)
   arg1.observedNavStack = { arg1.rootRoute }
   if var1() then
      arg1.observedRouteStack = { arg1.rootRoute }
   end
   arg1.navigation.popToTop()
end

function var2.getBreadcrumbRoute(arg1)
   return arg1.observedNavStack
end

function var2.getNavigationRoute(arg1)
   return arg1.observedRouteStack
end

function var2.getCurrentPath(arg1)
   return arg1.observedNavStack[arg1.observedNavStack]
end

return var2
