-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Thunks.ShowImportPrompt)
local var2 = require(var0.Packages.Roact).PureComponent:extend("ImportPrompt")
function var2.init(arg1)
   function arg1.promptClosed(arg1, arg2)
      if arg1.props.OnPromptClosed then
         local var428 = arg1
         local var429 = var428.props
         var429 = arg1
         var428 = arg2
         var429.OnPromptClosed(var429, var428)
      end
   end
   
end

function var2.render(arg1)
   arg1.props.showImportPrompt(arg1.promptClosed)
end

return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.showImportPrompt(arg1, arg2)
      if arg1.props.OnPromptClosed then
         local var442 = arg1
         local var443 = var442.props
         var443 = arg1
         var442 = arg2
         var443.OnPromptClosed(var443, var442)
      end
   end
   
   return var0
end)(var2)
