-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Thunks.ShowImportPrompt)
local var2 = require(var0.Packages.Roact).PureComponent:extend("ImportPrompt")
function var2.init(arg1)
   function arg1.promptClosed(arg1, arg2)
      if arg1.props.OnPromptClosed then
         local var545 = arg1
         local var546 = var545.props
         var546 = arg1
         var545 = arg2
         var546.OnPromptClosed(var546, var545)
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
         local var559 = arg1
         local var560 = var559.props
         var560 = arg1
         var559 = arg2
         var560.OnPromptClosed(var560, var559)
      end
   end
   
   return var0
end)(var2)
