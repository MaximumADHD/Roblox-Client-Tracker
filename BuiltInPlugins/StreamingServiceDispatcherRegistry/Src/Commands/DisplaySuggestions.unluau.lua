-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Types)
local var1 = game:GetService("ChatbotUIService")
local var2 = game:GetFastFlag("CAPAddTutorialWorkflowLinks")
return function(arg1)
   if var2 then
      var1:DisplayContent("DisplaySuggestions", arg1.arguments)
   end
end
