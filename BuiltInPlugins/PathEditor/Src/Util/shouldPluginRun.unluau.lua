-- Generated with Unluau (https://github.com/valencefun/unluau)
return function()
   if require(script.Parent.DebugFlags).RunningUnderCLI() then
      return false
   end
   if not game:GetFastFlag("EnablePathEditor") then
      return false
   end
   if not game:GetFastFlag("Path2DControlPointAtomicClass") then
      return false
   end
   return true
end
