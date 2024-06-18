-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.Util.StyleModifier
local var4 = var2.Dash.join
local var5 = var2.ContextServices
local var6 = var2.UI.TreeTableCell
local var7 = require(var0.Src.Components.Breakpoints.BreakpointsEnabledCell)
local var8 = require(var0.Src.Components.Breakpoints.BreakpointsContinueExecutionCell)
local var9 = require(var0.Src.Components.Breakpoints.BreakpointsRemoveOnHitCell)
local var10 = var1.PureComponent:extend("BreakpointsTreeTableCell")
function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Columns[var0.ColumnIndex].Key
   local var2 = var0.Width or UDim.new(1 / var0.Columns, 0)
   local var3 = var0.Row
   local var4 = var0.CellProps
   local var5 = var3.item[var1]
   if var1 == "isEnabled" then
      local var0 = false
   end
   if var1 == "continueExecution" then
      local var0 = false
   end
   if var1 == "removeOnHit" then
      local var0 = false
   end
   local var6 = var4(var0.Style, var4.CellStyle)
   if var0.RowIndex % 2 == 1 then
      local var0 = var6.BackgroundOdd or var6.BackgroundEven
   end
   local var7 = var6.BackgroundEven
   if var0.HighlightCell then
      if var6[var3.Hover] then
         if var0.RowIndex % 2 == 1 then
            local var0 = var6[var3.Hover].BackgroundOdd or var6[var3.Hover].BackgroundEven
         end
         var7 = var6[var3.Hover].BackgroundEven
      end
   end
   local var8 = var3.item.children
   if var8 then
      if var3.item.children > 0 then
         local var0 = false
      end
      local var0 = true
   end
   if true then
      local var302 = {}
      var302.ColumnIndex = var0.ColumnIndex
      var302.Row = var3
      var302.Style = var6
      var302.HasChildren = var8
      var302.BackgroundColor = var7
      var302.Width = var2
      var302.CellProps = var4
      return var1.createElement(var7, var302)
   end
   if true then
      local var308 = {}
      var308.Row = var3
      var308.Style = var6
      var308.HasChildren = var8
      var308.BackgroundColor = var7
      var308.Width = var2
      var308.Value = var5
      return var1.createElement(var8, var308)
   end
   if true then
      local var313 = {}
      var313.Row = var3
      var313.Style = var6
      var313.HasChildren = var8
      var313.BackgroundColor = var7
      var313.Width = var2
      var313.Value = var5
      return var1.createElement(var9, var313)
   end
   local var318 = {}
   var318.CellProps = var0.CellProps
   var318.Columns = var0.Columns
   var318.ColumnIndex = var0.ColumnIndex
   var318.Row = var0.Row
   var318.Width = var0.Width
   var318.Style = var0.Style
   var318.RowIndex = var0.RowIndex
   var318.HighlightCell = var0.HighlightCell
   var318.OnRightClick = var0.OnRightClick
   var318.SetCellContentsWidth = var0.SetCellContentsWidth
   var318.Emphasis = var0.Emphasis
   return var1.createElement(var6, var318)
end

local var332 = {}
var332.Analytics = var5.Analytics
var10 = var5.withContext(var332)(var10)
return var10
