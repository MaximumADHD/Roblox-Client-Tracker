-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.sanitizeIconSearchInput)
return function(arg1, arg2)
   if game:GetFastFlag("TagEditorIconPickerSearchReset") then
      if arg2.type == "ToggleIconPicker" then
         return ""
      end
      if arg2.type == "SetIconSearch" then
         if typeof(arg2.text) == "string" then
            local var0 = false
         end
         assert(true)
         if game:GetFastFlag("TagEditorImprovements2") then
            return var0(arg2.text)
         end
         return arg2.text:lower()
         return arg1
         if arg2.type == "ToggleIconPicker" then
            if not arg2.tag then
               return ""
            end
         end
         if arg2.type == "SetIconSearch" then
            if typeof(arg2.text) == "string" then
               local var0 = false
            end
            assert(true)
            return arg2.text
         end
      end
   end
   if arg2.type == "ToggleIconPicker" then
      if not arg2.tag then
         return ""
      end
   end
   if arg2.type == "SetIconSearch" then
      if typeof(arg2.text) == "string" then
         local var0 = false
      end
      assert(true)
      return arg2.text
   end
   return arg1
end
