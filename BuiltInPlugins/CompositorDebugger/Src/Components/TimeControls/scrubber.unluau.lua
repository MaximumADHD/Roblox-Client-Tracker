-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).UI.Pane
local var3 = require(var0.Src.Types)
local var4 = var1.PureComponent:extend("Scrubber")
function var4.init(arg1)
end

function var4.render(arg1)
   local var0 = arg1.state
   local var1 = arg1.props
   local var2 = var1.Style
   local var3 = var2.Scrubber.HeadSize
   local var4 = var2.Scrubber.Color
   local var91 = {}
   var91.Size = UDim2.new(0, 1, 1, 0)
   var91.Position = var1.Position
   var91.ZIndex = var1.ZIndex
   local var100 = {}
   local var104 = {}
   var104.Size = UDim2.new(0, 1, 1, 0)
   var104.AnchorPoint = Vector2.new(0.5, 0)
   var104.BackgroundColor = var4
   var100.Line = var1.createElement(var2, var104)
   local var119 = {}
   var119.Size = UDim2.new(0, var3, 0, var3)
   var119.AnchorPoint = Vector2.new(0.5, 0)
   var119.BackgroundColor = var4
   var100.Head = var1.createElement(var2, var119)
   return var1.createElement(var2, var91, var100)
end

return var4
