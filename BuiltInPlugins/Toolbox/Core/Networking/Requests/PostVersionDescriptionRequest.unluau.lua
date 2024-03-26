-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Util.Analytics.Analytics)
local var2 = require(var0.Core.Actions.NetworkError)
local var3 = game:GetFastFlag("ToolboxSendPackageVersionNoteTelemetry")
return function(arg1, arg2, arg3, arg4)
   return function(arg1)
      var3.onPackageNoteCreated(arg1, arg2, arg3)
   end
end
