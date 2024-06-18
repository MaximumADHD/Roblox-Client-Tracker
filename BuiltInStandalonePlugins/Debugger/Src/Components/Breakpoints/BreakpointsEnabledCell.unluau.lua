-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Src.Util.BreakpointHelperFunctions)
local var5 = var2.ContextServices
local var6 = var2.UI
local var7 = var6.Pane
local var8 = var6.Image
local var9 = var6.TextLabel
local var10 = var1.PureComponent:extend("BreakpointsEnabledCell")
function var10.init(arg1)
   function arg1.onToggle()
      arg1.props.CellProps.OnToggle(arg1.props.Row)
   end
   
   function arg1.onBreakpointIconClicked()
      local var0 = arg1.props.Row
      local var88 = var0.item
      local var92 = var4
      var92 = game:GetService("MetaBreakpointManager"):GetBreakpointById(var88.id)
      var88 = var0
      var92.setBreakpointRowEnabled(var92, var88, arg1.props.Analytics, "LuaBreakpointsTable.BreakpointIconClicked", arg1.props.CurrentConnectionId)
   end
   
end

local function var11(arg1)
   if not arg1.item.isValid then
      return var3.DebugpointIconTable.invalidBreakpoint
   end
   if arg1.item.debugpointType == "Breakpoint" then
      if arg1.item.condition then
         if arg1.item.condition == "" then
            if arg1.item.isEnabled then
               local var0 = var3.DebugpointIconTable.breakpointEnabled or var3.DebugpointIconTable.breakpointDisabled
            end
            return var3.DebugpointIconTable.breakpointDisabled
         end
      end
      if arg1.item.isEnabled then
         local var0 = var3.DebugpointIconTable.breakpointEnabled or var3.DebugpointIconTable.breakpointDisabled
      end
      return var3.DebugpointIconTable.breakpointDisabled
      if arg1.item.isEnabled then
         local var0 = var3.DebugpointIconTable.conditionalEnabled or var3.DebugpointIconTable.conditionalDisabled
      end
      return var3.DebugpointIconTable.conditionalDisabled
   end
   if arg1.item.isEnabled then
      local var0 = var3.DebugpointIconTable.logpointEnabled or var3.DebugpointIconTable.logpointDisabled
   end
   return var3.DebugpointIconTable.logpointDisabled
end

function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Row
   local var2 = var0.Style
   local var3 = var0.HasChildren
   if var0.ColumnIndex == 1 then
      local var0 = false
   end
   local var4 = var1.depth * var2.Indent
   local var5 = var2.CellPadding.Left + var4
   if not var3 then
      local var0 = var5 + var4 * 2
   end
   local var6 = var2.Arrow.Size
   if true then
      local var183 = {}
      var183.Top = var2.CellPadding.Top
      var183.Left = var5
      var183.Right = var2.CellPadding.Right
      var183.Bottom = var2.CellPadding.Bottom
      local var1 = var183 or var2.CellPadding
   end
   local var199 = {}
   var199.Style = "Box"
   var199.BackgroundColor3 = var0.BackgroundColor
   var199.BorderSizePixel = 1
   var199.BorderColor3 = var2.Border
   var199.Size = UDim2.new(var0.Width.Scale, var0.Width.Offset, 1, 0)
   var199.ClipsDescendants = true
   local var213 = {}
   local var217 = {}
   var217.Layout = Enum.FillDirection.Horizontal
   var217.LayoutOrder = 0
   var217.Padding = var2.CellPadding
   var217.Spacing = var2.CellSpacing
   var217.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var217.AutomaticSize = Enum.AutomaticSize.XY
   local var223 = {}
   if var3 then
      local var227 = {}
      var227.LayoutOrder = 0
      var227.Size = UDim2.new(0, var6, 0, var6)
      var227.BackgroundTransparency = 1
      var227.Image = var2.Arrow.Image
      local var238 = var2.Arrow
      var227.ImageColor3 = var238.Color
      var238 = var6
      var227.ImageRectSize = Vector2.new(var238, var6)
      if var0.CellProps.Expansion[var1.item] then
         local var0 = var2.Arrow.ExpandedOffset or var2.Arrow.CollapsedOffset
      end
      var227.ImageRectOffset = var2.Arrow.CollapsedOffset
      var1.Event.Activated = arg1.onToggle
      local var1 = var1.createElement("ImageButton", var227) or nil
   end
   local var257 = nil
   var223.Toggle = var257
   var257 = var3
   if var257 then
      local var261 = {}
      var261.Text = "(x" ... var1.item.children ... ")"
      var261.BackgroundTransparency = 1
      var261.LayoutOrder = 1
      var261.Size = UDim2.new(0, var3.ICON_SIZE, 0, var3.ICON_SIZE)
      local var0 = var1.createElement(var9, var261)
   end
   var223.ChildCountIndicator = var257
   local var282 = {}
   var282.LayoutOrder = 2
   var282.OnPress = arg1.onBreakpointIconClicked
   var282.AutomaticSize = Enum.AutomaticSize.XY
   local var286 = {}
   local var290 = {}
   var290.Size = UDim2.new(0, var3.ICON_SIZE, 0, var3.ICON_SIZE)
   var290.Image = var11(var1)
   var286.BreakpointIcon = var1.createElement(var8, var290)
   var223.BreakpointIconPane = var1.createElement(var7, var282, var286)
   var213.Left = var1.createElement(var7, var217, var223)
   return var1.createElement(var7, var199, var213)
end

local var304 = {}
var304.Analytics = var5.Analytics
var10 = var5.withContext(var304)(var10)
var10 = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.CurrentConnectionId = arg1.Common.currentDebuggerConnectionId
   return var0
end)(var10)
return var10
