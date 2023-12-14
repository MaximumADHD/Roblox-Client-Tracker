-- Generated with Unluau (https://github.com/valencefun/unluau)
return function()
   if require(script.Parent.DebugFlags).RunningUnderCLI() then
      return false
   end
   if not require(script.Parent.hasInternalPermission)() then
      return false
   end
   if not game:GetFastFlag("NestedPackagePublisherPlugin") then
      return false
   end
   return true
end
