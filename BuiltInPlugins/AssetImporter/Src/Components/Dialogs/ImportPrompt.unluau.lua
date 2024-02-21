-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Thunks.ShowImportPrompt)
local var2 = require(var0.Packages.Roact).PureComponent:extend("ImportPrompt")
function var2.init(arg1)
   function arg1.promptClosed(arg1, arg2)
      if arg1.props.OnPromptClosed then
         local var28 = arg1
         local var29 = var28.props
         var29 = arg1
         var28 = arg2
         var29.OnPromptClosed(var29, var28)
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
         local var42 = arg1
         local var43 = var42.props
         var43 = arg1
         var42 = arg2
         var43.OnPromptClosed(var43, var42)
      end
   end
   
   return var0
end)(var2)
