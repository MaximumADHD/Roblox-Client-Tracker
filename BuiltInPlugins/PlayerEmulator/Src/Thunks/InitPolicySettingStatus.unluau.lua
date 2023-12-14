-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("PlayerEmulatorService")
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Packages.Cryo)
local var3 = require(var1.Src.Util.Constants)
local var4 = require(var1.Src.Actions.UpdatePolicySettingStatus)
local var5 = require(var1.Src.Actions.LoadAllPolicyValues)
local function fun0(arg1)
   return arg1:gsub("^%l", string.upper)
end

return function(arg1, arg2, arg3)
   return function(arg1)
      return arg1:gsub("^%l", string.upper)
   end
end
