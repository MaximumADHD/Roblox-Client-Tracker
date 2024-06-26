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
      local var52 = var0.item
      local var56 = var4
      var56 = game:GetService("MetaBreakpointManager"):GetBreakpointById(var52.id)
      var52 = var0
      var56.setBreakpointRowEnabled(var56, var52, arg1.props.Analytics, "LuaBreakpointsTable.BreakpointIconClicked", arg1.props.CurrentConnectionId)
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
      local var147 = {}
      var147.Top = var2.CellPadding.Top
      var147.Left = var5
      var147.Right = var2.CellPadding.Right
      var147.Bottom = var2.CellPadding.Bottom
      local var1 = var147 or var2.CellPadding
   end
   local var163 = {}
   var163.Style = "Box"
   var163.BackgroundColor3 = var0.BackgroundColor
   var163.BorderSizePixel = 1
   var163.BorderColor3 = var2.Border
   var163.Size = UDim2.new(var0.Width.Scale, var0.Width.Offset, 1, 0)
   var163.ClipsDescendants = true
   local var177 = {}
   local var181 = {}
   var181.Layout = Enum.FillDirection.Horizontal
   var181.LayoutOrder = 0
   var181.Padding = var2.CellPadding
   var181.Spacing = var2.CellSpacing
   var181.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var181.AutomaticSize = Enum.AutomaticSize.XY
   local var187 = {}
   if var3 then
      local var191 = {}
      var191.LayoutOrder = 0
      var191.Size = UDim2.new(0, var6, 0, var6)
      var191.BackgroundTransparency = 1
      var191.Image = var2.Arrow.Image
      local var202 = var2.Arrow
      var191.ImageColor3 = var202.Color
      var202 = var6
      var191.ImageRectSize = Vector2.new(var202, var6)
      if var0.CellProps.Expansion[var1.item] then
         local var0 = var2.Arrow.ExpandedOffset or var2.Arrow.CollapsedOffset
      end
      var191.ImageRectOffset = var2.Arrow.CollapsedOffset
      var1.Event.Activated = arg1.onToggle
      local var1 = var1.createElement("ImageButton", var191) or nil
   end
   local var221 = nil
   var187.Toggle = var221
   var221 = var3
   if var221 then
      local var225 = {}
      var225.Text = "(x" ... var1.item.children ... ")"
      var225.BackgroundTransparency = 1
      var225.LayoutOrder = 1
      var225.Size = UDim2.new(0, var3.ICON_SIZE, 0, var3.ICON_SIZE)
      local var0 = var1.createElement(var9, var225)
   end
   var187.ChildCountIndicator = var221
   local var246 = {}
   var246.LayoutOrder = 2
   var246.OnPress = arg1.onBreakpointIconClicked
   var246.AutomaticSize = Enum.AutomaticSize.XY
   local var250 = {}
   local var254 = {}
   var254.Size = UDim2.new(0, var3.ICON_SIZE, 0, var3.ICON_SIZE)
   var254.Image = var11(var1)
   var250.BreakpointIcon = var1.createElement(var8, var254)
   var187.BreakpointIconPane = var1.createElement(var7, var246, var250)
   var177.Left = var1.createElement(var7, var181, var187)
   return var1.createElement(var7, var163, var177)
end

local var268 = {}
var268.Analytics = var5.Analytics
var10 = var5.withContext(var268)(var10)
var10 = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.CurrentConnectionId = arg1.Common.currentDebuggerConnectionId
   return var0
end)(var10)
return var10
