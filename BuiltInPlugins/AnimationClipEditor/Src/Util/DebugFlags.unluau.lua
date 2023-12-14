-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
local function fun0(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var1 = {}
local var173 = nil
local var174 = "RunTests"
function var1.RunTests(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var181 = nil
local var182 = "RunRhodiumTests"
function var1.RunRhodiumTests(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var189 = nil
local var190 = "LogRoduxEvents"
function var1.LogRoduxEvents(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var198 = "LogAnalytics"
function var1.LogAnalytics(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

nil = pcall(function()
   return game:GetService("ProcessService")
end)
local var9 = "RunningUnderCLI"
function var1.RunningUnderCLI(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

return var1
