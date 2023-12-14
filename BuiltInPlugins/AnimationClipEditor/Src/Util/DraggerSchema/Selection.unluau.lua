-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Selection")
local var1 = require(script:FindFirstAncestor("AnimationClipEditor").Packages.Framework).Util.deepCopy
local var2 = {}
var2.__index = var2
function var2.new(arg1, arg2)
   local var0 = setmetatable({}, var2)
   var0.SelectionChanged = arg1
   var0.setSelectedTrackInstances = arg2
   return var0
end

function var2.Set(arg1, arg2)
   arg1.setSelectedTrackInstances(arg2)
end

function var2.Get(arg1)
   if arg1.selectedTrackInstances then
      local var0 = var1(arg1.selectedTrackInstances) or var0:Get()
   end
   return var0:Get()
end

function var2.GetActiveInstance(arg1)
   return nil
end

return var2
