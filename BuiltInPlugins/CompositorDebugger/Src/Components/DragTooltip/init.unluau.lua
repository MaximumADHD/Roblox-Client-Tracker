-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("TextService")
local var1 = script:FindFirstAncestor("CompositorDebugger")
local var2 = require(var1.Packages.React)
local var3 = require(var1.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.UI
local var6 = var5.ShowOnTop
local var7 = var5.DropShadow
local var8 = var5.Pane
local var9 = var5.TextLabel
local var10 = var2.PureComponent:extend("DragTooltip")
var3.Util.Typecheck.wrap(var10, script)
local var32 = {}
var32.Enabled = true
var32.Priority = 0
var10.defaultProps = var32
function var10.init(arg1)
   function arg1.mouseEnter(arg1, arg2, arg3)
      if not arg1.isTooltipHovered then
         arg1.mousePosition = Vector2.new(arg2, arg3)
      end
   end
   
   function arg1.mouseMoved(arg1, arg2, arg3)
      arg1.mousePosition = Vector2.new(arg2, arg3)
   end
   
   function arg1.mouseLeave()
      arg1.mousePosition = nil
   end
   
end

local function fun4(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.Padding
   if var1.DropShadow then
      local var0 = var1.DropShadow.Radius or 0
   end
   local var3 = var1.Offset
   local var4 = var0.Text
   local var5 = arg1.mousePosition
   local var6 = {}
   local var7 = var0.Focus:get()
   if var5 then
      if var7 then
         local var0 = var5.X + var3.X
         local var1 = var5.Y + var3.Y
         local var2 = var7.AbsoluteSize.X
         local var3 = var7.AbsoluteSize.Y
         local var4 = (0 + var2) * 2
         local var97 = nil
         local var98 = nil
         local var100 = var4
         local var101 = var1.TextSize
         local var102 = var1.Font
         local var106 = Vector2.new(math.max(0, math.min(var2, var0.MaxWidth or var1.MaxWidth) - var4), ∞)
         local var9 = var0:GetTextSize()
         local var10 = var9.X + var4 + 1
         local var11 = var9.Y + var4 + 1
         if var2 <= var0 + var10 then
            local var0 = var2 - var10
         end
         if var3 <= var1 + var11 then
            local var0 = var3 - var11
         end
         local var12 = {}
         var12.BackgroundTransparency = 1
         var101 = var0
         var102 = var1
         var12.Position = UDim2.fromOffset(var101, var102)
         var12.Size = UDim2.fromOffset(var10, var11)
         local var13 = {}
         local var131 = {}
         var131.Size = UDim2.new(1, 0, 1, 0)
         var131.Text = var4
         var131.TextWrapped = true
         var131.TextXAlignment = var0.TextXAlignment
         var13.Label = var2.createElement(var9, var131)
         local var144 = {}
         var144.Priority = var0.Priority
         local var145 = {}
         local var150 = {}
         local var154 = {}
         var154.Style = var1.DropShadow
         local var156 = {}
         local var160 = {}
         var160.Padding = var2
         local var161 = "Box"
         var160.Style = var161
         var161 = var13
         var156.ContentPane = var2.createElement(var8, var160, var161)
         var150.DropShadow = var2.createElement(var7, var154, var156)
         var145.Tooltip = var2.createElement("Frame", var12, var150)
         var6.TooltipContainer = var2.createElement(var6, var144, var145)
      end
   end
   local var169 = {}
   var169.Size = UDim2.fromScale(1, 1)
   var169.BackgroundTransparency = 1
   local var177 = var2.Event.MouseMoved
   var2.Event.MouseMoved = arg1.mouseMoved
   var177 = var6
   return var2.createElement("Frame", var169, var177)
end

function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.Padding
   if var1.DropShadow then
      local var0 = var1.DropShadow.Radius or 0
   end
   local var3 = var1.Offset
   local var4 = var0.Text
   local var5 = arg1.mousePosition
   local var6 = {}
   local var7 = var0.Focus:get()
   if var5 then
      if var7 then
         local var0 = var5.X + var3.X
         local var1 = var5.Y + var3.Y
         local var2 = var7.AbsoluteSize.X
         local var3 = var7.AbsoluteSize.Y
         local var4 = (0 + var2) * 2
         local var97 = nil
         local var98 = nil
         local var100 = var4
         local var101 = var1.TextSize
         local var102 = var1.Font
         local var106 = Vector2.new(math.max(0, math.min(var2, var0.MaxWidth or var1.MaxWidth) - var4), ∞)
         local var9 = var0:GetTextSize()
         local var10 = var9.X + var4 + 1
         local var11 = var9.Y + var4 + 1
         if var2 <= var0 + var10 then
            local var0 = var2 - var10
         end
         if var3 <= var1 + var11 then
            local var0 = var3 - var11
         end
         local var12 = {}
         var12.BackgroundTransparency = 1
         var101 = var0
         var102 = var1
         var12.Position = UDim2.fromOffset(var101, var102)
         var12.Size = UDim2.fromOffset(var10, var11)
         local var13 = {}
         local var131 = {}
         var131.Size = UDim2.new(1, 0, 1, 0)
         var131.Text = var4
         var131.TextWrapped = true
         var131.TextXAlignment = var0.TextXAlignment
         var13.Label = var2.createElement(var9, var131)
         local var144 = {}
         var144.Priority = var0.Priority
         local var145 = {}
         local var150 = {}
         local var154 = {}
         var154.Style = var1.DropShadow
         local var156 = {}
         local var160 = {}
         var160.Padding = var2
         local var161 = "Box"
         var160.Style = var161
         var161 = var13
         var156.ContentPane = var2.createElement(var8, var160, var161)
         var150.DropShadow = var2.createElement(var7, var154, var156)
         var145.Tooltip = var2.createElement("Frame", var12, var150)
         var6.TooltipContainer = var2.createElement(var6, var144, var145)
      end
   end
   local var169 = {}
   var169.Size = UDim2.fromScale(1, 1)
   var169.BackgroundTransparency = 1
   local var177 = var2.Event.MouseMoved
   var2.Event.MouseMoved = arg1.mouseMoved
   var177 = var6
   return var2.createElement("Frame", var169, var177)
end

fun4 = var4.withContext
local var180 = {}
var180.Focus = var4.Focus
var180.Stylizer = var4.Stylizer
var10 = fun4(var180)(var10)
return var10
