-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.Framework)
local var2 = var1.Dash.None
local var3 = require(var0.Src.Types)
return var1.Util.Action(script.Name, function(arg1)
   local var0 = {}
   var0.overrides = arg1 or var2
   return var0
end)
