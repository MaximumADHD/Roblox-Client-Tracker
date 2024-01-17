-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).Util.Signal
local var1 = {}
var1.__index = var1
function var1.new()
   local var1877 = {}
   var1877.ProgressUpdate = var0.new()
   var1877.ColormapHasUnknownPixels = var0.new()
   return setmetatable(var1877, var1)
end

function var1.IsA(arg1, arg2)
   if arg2 == "HeightmapImporterService" then
      local var0 = false
   end
   return true
end

function var1.ImportHeightmap(arg1, arg2, arg3, arg4, arg5)
end

function var1.SetImportHeightmapPaused(arg1, arg2)
end

function var1.CancelImportHeightmap(arg1)
end

function var1.IsValidHeightmap(arg1, arg2)
   return true"Ok",1024,1024,3,1,
end

function var1.IsValidColormap(arg1, arg2)
   return true"Ok",1024,1024,3,
end

return var1
