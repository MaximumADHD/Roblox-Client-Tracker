-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Framework)
local var2 = var1.ContextServices
local var3 = var1.UI.showContextMenu
local var4 = require(var0.Packages.Roact).PureComponent:extend("ContextMenu")
function var4.showMenu(arg1)
   local var0 = arg1.props
   var0.OnMenuOpened()
   var3(var0.Plugin:get(), var0.Actions)
end

function var4.didMount(arg1)
   arg1:showMenu()
end

function var4.didUpdate(arg1)
   arg1:showMenu()
end

local function fun3(arg1)
   return nil
end

function var4.render(arg1)
   return nil
end

fun3 = var2.withContext
local var36 = {}
var36.Plugin = var2.Plugin
var4 = fun3(var36)(var4)
return var4
