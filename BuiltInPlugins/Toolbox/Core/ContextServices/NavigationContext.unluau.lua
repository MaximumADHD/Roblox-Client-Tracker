-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).ContextServices.ContextItem:extend("NavigationContext")
function var0.new(arg1)
   local var0 = {}
   function var0.push()
   end
   
   function var0.pop()
   end
   
   function var0.popToTop()
   end
   
   local var1 = {}
   var1.navigation = var0
   local var17 = arg1
   var1.observedNavStack = {}
   var17 = arg1
   var1.localizedBreadcrumbs = {}
   var1.rootRoute = arg1
   var17 = var1
   setmetatable(var17, var0)
   return var1
end

function var0.updateNavigation(arg1, arg2)
   arg1.navigation = arg2
end

function var0.get(arg1)
   return arg1
end

function var0.push(arg1, arg2, arg3, arg4)
   table.insert(arg1.observedNavStack, arg3)
   local var31 = arg1.navigation
   var31 = arg2
   var31.push(var31, arg4)
end

function var0.pop(arg1)
   table.remove(arg1.observedNavStack, arg1.observedNavStack)
   if arg1.observedNavStack <= 0 then
      arg1.observedNavStack = { arg1.rootRoute }
   end
   arg1.navigation.pop()
end

function var0.popToTop(arg1)
   arg1.observedNavStack = { arg1.rootRoute }
   arg1.navigation.popToTop()
end

function var0.getBreadcrumbRoute(arg1)
   return arg1.observedNavStack
end

function var0.getCurrentPath(arg1)
   return arg1.observedNavStack[arg1.observedNavStack]
end

return var0
