-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.ReactRoblox)
local var3 = require(var0.Src.Components.MainComponent)
local var4 = require(var0.Src.Types)
local var5 = require(var0.Src.Util.mockContext)
local var6 = require(var0.Packages.Framework).Dash.join
local var7 = {}
function var7.new(arg1, arg2)
   local var0 = {}
   var0.component = arg1
   var0.props = arg2
   setmetatable(var0, var7)
   var7.__index = var7
   return var0
end

function var7.withProperties(arg1, arg2)
   arg2 = var6(arg1.props, arg2)
   return var7.new(arg1.component, arg2)
end

function var7._run(arg1, arg2, arg3)
   return function(arg1, arg2)
      local var0 = {}
      var0.component = arg1
      var0.props = arg2
      setmetatable(var0, var7)
      var7.__index = var7
      return var0
   end
end

function var7.run(arg1, arg2)
   return var7._run(arg1.component, arg1.props, arg2)
end

function var7.runPlugin(arg1, arg2)
   return var7._run(var3, {}, arg2)
end

return var7
