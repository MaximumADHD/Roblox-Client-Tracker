-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.ContextServices
local var4 = var1.UI
local var5 = var4.Pane
local var6 = var4.TextWithLinks
local var7 = var2.PureComponent:extend("TabInstructions")
function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var337 = {}
   var337.LayoutOrder = var0.LayoutOrder
   var337.Size = UDim2.new(1, 0, 0, var0.Height)
   var337.Layout = Enum.FillDirection.Vertical
   var337.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var337.VerticalAlignment = Enum.VerticalAlignment.Center
   var337.Padding = var1.Padding
   local var348 = {}
   local var352 = {}
   var352.Text = var0.Message
   var352.Size = UDim2.new(1, 0, 0, 0)
   var352.AutomaticSize = Enum.AutomaticSize.Y
   var352.BackgroundTransparency = 1
   var352.TextWrapped = true
   var352.TextXAlignment = Enum.TextXAlignment.Center
   var352.TextYAlignment = Enum.TextYAlignment.Center
   local var364 = {}
   var364.TextSize = var1.TextSize
   var364.Font = var1.Font
   var352.TextProps = var364
   var364 = var0.LinkMap
   var352.LinkMap = var364 or {}
   var348.InstructionsLabel = var2.createElement(var6, var352)
   return var2.createElement(var5, var337, var348)
end

local var372 = {}
var372.Stylizer = var3.Stylizer
var7 = var3.withContext(var372)(var7)
return var7
