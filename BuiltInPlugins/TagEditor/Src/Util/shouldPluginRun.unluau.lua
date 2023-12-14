-- Generated with Unluau (https://github.com/valencefun/unluau)
return function()
   if require(script.Parent.DebugFlags).RunningUnderCLI() then
      return false
   end
   if not game:GetFastFlag("EnableTagEditorPlugin7") then
      return false
   end
   return true
end
