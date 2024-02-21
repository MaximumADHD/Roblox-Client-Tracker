-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("RunService")
return function()
   if require(script.Parent.DebugFlags).RunningUnderCLI() then
      return false
   end
   if var0:IsRunning() then
      return false
   end
   if not game:GetEngineFeature("EnablePathEditor") then
      return false
   end
   if not game:GetFastFlag("Path2DControlPointAtomicClass4") then
      return false
   end
   return true
end
