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
      local var47 = var0.item
      local var51 = var4
      var51 = game:GetService("MetaBreakpointManager"):GetBreakpointById(var47.id)
      var47 = var0
      var51.setBreakpointRowEnabled(var51, var47, arg1.props.Analytics, "LuaBreakpointsTable.BreakpointIconClicked", arg1.props.CurrentConnectionId)
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
      local var142 = {}
      var142.Top = var2.CellPadding.Top
      var142.Left = var5
      var142.Right = var2.CellPadding.Right
      var142.Bottom = var2.CellPadding.Bottom
      local var1 = var142 or var2.CellPadding
   end
   local var158 = {}
   var158.Style = "Box"
   var158.BackgroundColor3 = var0.BackgroundColor
   var158.BorderSizePixel = 1
   var158.BorderColor3 = var2.Border
   var158.Size = UDim2.new(var0.Width.Scale, var0.Width.Offset, 1, 0)
   var158.ClipsDescendants = true
   local var172 = {}
   local var176 = {}
   var176.Layout = Enum.FillDirection.Horizontal
   var176.LayoutOrder = 0
   var176.Padding = var2.CellPadding
   var176.Spacing = var2.CellSpacing
   var176.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var176.AutomaticSize = Enum.AutomaticSize.XY
   local var182 = {}
   if var3 then
      local var186 = {}
      var186.LayoutOrder = 0
      var186.Size = UDim2.new(0, var6, 0, var6)
      var186.BackgroundTransparency = 1
      var186.Image = var2.Arrow.Image
      local var197 = var2.Arrow
      var186.ImageColor3 = var197.Color
      var197 = var6
      var186.ImageRectSize = Vector2.new(var197, var6)
      if var0.CellProps.Expansion[var1.item] then
         local var0 = var2.Arrow.ExpandedOffset or var2.Arrow.CollapsedOffset
      end
      var186.ImageRectOffset = var2.Arrow.CollapsedOffset
      var1.Event.Activated = arg1.onToggle
      local var1 = var1.createElement("ImageButton", var186) or nil
   end
   local var216 = nil
   var182.Toggle = var216
   var216 = var3
   if var216 then
      local var220 = {}
      var220.Text = "(x" ... var1.item.children ... ")"
      var220.BackgroundTransparency = 1
      var220.LayoutOrder = 1
      var220.Size = UDim2.new(0, var3.ICON_SIZE, 0, var3.ICON_SIZE)
      local var0 = var1.createElement(var9, var220)
   end
   var182.ChildCountIndicator = var216
   local var241 = {}
   var241.LayoutOrder = 2
   var241.OnPress = arg1.onBreakpointIconClicked
   var241.AutomaticSize = Enum.AutomaticSize.XY
   local var245 = {}
   local var249 = {}
   var249.Size = UDim2.new(0, var3.ICON_SIZE, 0, var3.ICON_SIZE)
   var249.Image = var11(var1)
   var245.BreakpointIcon = var1.createElement(var8, var249)
   var182.BreakpointIconPane = var1.createElement(var7, var241, var245)
   var172.Left = var1.createElement(var7, var176, var182)
   return var1.createElement(var7, var158, var172)
end

local var263 = {}
var263.Analytics = var5.Analytics
var10 = var5.withContext(var263)(var10)
var10 = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.CurrentConnectionId = arg1.Common.currentDebuggerConnectionId
   return var0
end)(var10)
return var10
