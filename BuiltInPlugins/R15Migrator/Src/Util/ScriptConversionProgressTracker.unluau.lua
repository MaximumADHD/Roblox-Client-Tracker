-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Actions.SetReplaceProgress)
local var3 = require(var0.Src.Actions.SetProgressBarMessageKey)
local var4 = {}
var4.__index = var4
function var4.new(arg1, arg2, arg3)
   local var0 = setmetatable({}, var4)
   function var0._dispatchSetProgress(arg1)
      local var0 = var2(arg1)
      arg3:dispatch()
   end
   
   function var0._dispatchSetMessage(arg1)
      local var0 = var3(arg1)
      arg3:dispatch()
   end
   
   var0._dispatchSetMessage(arg1)
   var0._progress = 65535
   var0._targetProgress = math.max(arg2, 1)
   var0:updateProgress()
   return var0
end

function var4.updateProgress(arg1)
   arg1._progress = arg1._progress + 1
   arg1._dispatchSetProgress(arg1._progress / arg1._targetProgress)
end

function var4.clearProgressBar(arg1)
   arg1._dispatchSetProgress(var1.None)
end

return var4
