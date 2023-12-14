-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.formatDeviceOrientation(arg1, arg2, arg3)
   if arg2 == "default" then
      return arg3:getText("RecordTabView", "ComputerEmulationDeviceOrientation")
   end
   return arg1
end

function var0.formatDeviceName(arg1, arg2)
   if arg1 == "default" then
      return arg2:getText("RecordTabView", "ComputerEmulationDeviceName")
   end
   return arg1
end

function var0.format2dResolution(arg1, arg2)
   return string.format("%d x %d %s", math.round(arg1.X), math.round(arg1.Y), arg2)
end

return var0
