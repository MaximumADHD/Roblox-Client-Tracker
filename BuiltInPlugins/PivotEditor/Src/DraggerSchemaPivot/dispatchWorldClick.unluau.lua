-- Generated with Unluau (https://github.com/valencefun/unluau)
local function fun0(arg1, arg2, arg3)
   local var0 = {}
   var0.ClickedSelectable = arg3.ClickedSelectable
   var0.HandleId = "Part"
   return var0
end

return function(arg1, arg2, arg3)
   if arg2:doesAllowFreeformDrag() then
      if arg3.SelectionNowContainsSelectable then
         if arg3.ClickedSelectable:IsA("PVInstance") then
            local var0 = {}
            var0.ClickedSelectable = arg3.ClickedSelectable
            var0.HandleId = "Part"
            return "FreeformSelectionDrag"var0,
         end
      end
   end
   return "Ready"
end
