-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = require(var0.Src.Resources.AnalyticsEventNames)
local var5 = var2.UI
local var6 = var5.Pane
local var7 = var5.Checkbox
local var8 = var1.PureComponent:extend("BreakpointsRemoveOnHitCell")
function var8.init(arg1)
   function arg1.onCheckboxClicked()
      local var0 = arg1.props.Row
      game:GetService("MetaBreakpointManager"):GetBreakpointById(var0.item.id):SetRemoveOnHit(var0.item.removeOnHit)
      arg1.props.Analytics:report(var4.MetaBreakpointRemoveOnHitChanged, "LuaBreakpointsTable")
   end
   
end

function var8.render(arg1)
   local var0 = arg1.props
   local var57 = {}
   var57.Style = "Box"
   var57.BackgroundColor3 = var0.BackgroundColor
   var57.BorderSizePixel = 1
   var57.BorderColor3 = var0.Style.Border
   var57.Size = UDim2.new(var0.Width.Scale, var0.Width.Offset, 1, 0)
   var57.ClipsDescendants = true
   local var72 = {}
   local var1 = var0.HasChildren
   if var1 then
      local var77 = {}
      var77.Checked = var0.Value
      var77.OnClick = arg1.onCheckboxClicked
      local var0 = var1.createElement(var7, var77)
   end
   var72.EnabledCheckbox = var1
   return var1.createElement(var6, var57, var72)
end

local var83 = {}
var83.Analytics = var3.Analytics
var8 = var3.withContext(var83)(var8)
return var8
