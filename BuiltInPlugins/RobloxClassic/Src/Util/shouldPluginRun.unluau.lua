-- Generated with Unluau (https://github.com/valencefun/unluau)
return function()
   if require(script.Parent.DebugFlags).RunningUnderCLI() then
      return false
   end
   if not game:GetFastFlag("DebugRobloxClassicPlugin") then
   end
   return true
end
