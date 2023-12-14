-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Util.makeTheme)
local var3 = require(var0.Core.Components.Toolbox)
local var4 = require(var0.Core.Types.Suggestion)
local var5 = require(var0.Core.Types.Background)
local var6 = var1.PureComponent:extend("ToolboxTestWrapper")
function var6.init(arg1)
   local var0 = {}
   var0.theme = var2()
   arg1.state = var0
end

function var6.render(arg1, arg2)
   local var0 = arg1.state.theme
   local var43 = {}
   var43.backgrounds = var5.BACKGROUNDS
   var43.suggestions = var4.SUGGESTIONS
   var43.Size = UDim2.new(0, 400, 0, 400)
   return var1.createElement(var3, var43)
end

return var6
